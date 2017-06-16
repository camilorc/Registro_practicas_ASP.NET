using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Portafolio.Negocio
{
    public class ListaAsignados
    {
        public int Rut { get; set; }
        public string Dv { get; set; }
        public string Nombres { get; set; }
        public string Apellido1 { get; set; }
        public string Apellido2 { get; set; }
        public string NombreDocente { get; set; }
        public string Email { get; set; }
        public int Estado { get; set; }
        public string EstadoDetalle { get; set; }

        public ListaAsignados()
        {
            Init();
        }

        private void Init()
        {
            Rut = 0;
            Nombres = "";
            Apellido1 = "";
            Apellido2 = "";
            NombreDocente = "";
            Email = "";
            Estado = 0;
            NombreDocente = "";
            EstadoDetalle = "";
        }


        //Método para devolver array con todos los alumnos asigandos a un profesor (según rut profe)
        public List<ListaAsignados> AlumnosAsignados(int rut_profe)
        {
            List<ListaAsignados> lista = new List<ListaAsignados>();
            try
            {
                var connectionString = ConfigurationManager.ConnectionStrings["OracleDbContext"].ConnectionString;
                OracleConnection _connection = new OracleConnection();
                _connection.ConnectionString = connectionString;
                _connection.Open();

                string sql = "Select iddocentepractica, docente_practica.rut_alumno, Usuario.dv_usuario, Usuario.nombres, Usuario.apellido1, Usuario.apellido2,Usuario.correo,docente_practica.estado_docente From docente_practica JOIN Usuario ON docente_practica.RUT_ALUMNO = Usuario.RUT Where docente_practica.RUT_DOCENTE = '" + rut_profe + "'";

                OracleCommand cmd = new OracleCommand(sql, _connection);

                var users = cmd.ExecuteReader();


                while (users.Read())
                {
                    ListaAsignados alum = new ListaAsignados();
                    alum.Rut = users.GetInt32(1);
                    alum.Dv = users.GetString(2);
                    alum.Nombres = users.GetString(3);
                    alum.Apellido1 = users.GetString(4);
                    alum.Apellido2 = users.GetString(5);
                    alum.Email = users.GetString(6);
                    alum.Estado = users.GetInt32(7);
                    switch (users.GetInt32(7))
                    {
                        case 0:
                            alum.EstadoDetalle = "Pendiente";
                            break;
                        case 1:
                            alum.EstadoDetalle = "Aceptado";
                            break;
                        case 2:
                            alum.EstadoDetalle = "Rechazado";
                            break;
                                                  
                    }
                    lista.Add(alum);

                }
                return lista;
            }
            catch (Exception)
            {
                throw;
            }
        }

        //Método que cambia el atributo al estado de la práctica Aceptada = 1; Recahzada = 2;
        public bool CambiarAsignacionPractica(int rut_profe, int rut_alumno, int estado)
        {
            try
            {
                var connectionString = ConfigurationManager.ConnectionStrings["OracleDbContext"].ConnectionString;
                OracleConnection _connection = new OracleConnection();
                _connection.ConnectionString = connectionString;
                _connection.Open();

                string sql = "update DOCENTE_PRACTICA set ESTADO_DOCENTE = '" + estado + "' WHERE rut_alumno = '" + rut_alumno + "' AND rut_docente = '" + rut_profe + "'";

                OracleCommand cmd = new OracleCommand(sql, _connection);

                cmd.ExecuteNonQuery();

                return true;
            }
            catch (Exception)
            {

                return false;
            }


        }






    }
}

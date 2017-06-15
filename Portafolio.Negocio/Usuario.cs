using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Portafolio.Datos;
using System.Configuration;
using Oracle.ManagedDataAccess.Client;

namespace Portafolio.Negocio
{
    public class Usuario
    {
        public int Rut { get; set; }
        public string Dv { get; set; }
        public string Contraseña { get; set; }
        public string Nombres { get; set; }
        public string Apellido1 { get; set; }
        public string Apellido2 { get; set; }
        public DateTime FechaNac { get; set; }
        public string Direccion { get; set; }
        public int Telefono { get; set; }
        public string Correo { get; set; }
        public string CarreraNombre { get; set; }
        public int Idpractica { get; set; }

        //Para identificar el estado de su asiganación al Docente
        public int estadoPractica { get; set; }

        public Usuario()
        {
            Init();
        }

        private void Init()
        {
            Rut = 0;
            Dv = string.Empty;
            Contraseña = string.Empty;
            Nombres = string.Empty;
            Apellido1 = string.Empty;
            Apellido2 = string.Empty;
            FechaNac = new DateTime();
            Direccion = string.Empty;
            Telefono = 0;
            Correo = string.Empty;
            CarreraNombre = string.Empty;
            Idpractica = 0;
            estadoPractica = 0;
        }

        //método para buscar un usuario de la BD según su RUT
        public void buscarUsuario() {
            try
            {
                var connectionString = ConfigurationManager.ConnectionStrings["OracleDbContext"].ConnectionString;
                OracleConnection _connection = new OracleConnection();
                _connection.ConnectionString = connectionString;
                _connection.Open();

                string sql = "Select * from usuario where rut = '"+this.Rut+"'";
                OracleCommand cmd = new OracleCommand(sql,_connection);
                var alum = cmd.ExecuteReader();

                while (alum.Read()) {
                    Rut = alum.GetInt32(0);
                    Dv = alum.GetString(1);
                    Nombres = alum.GetString(3);
                    Direccion = alum.GetString(7);
                    CarreraNombre = alum.GetString(15);
                    Idpractica = alum.GetInt32(13);
                    Telefono = alum.GetInt32(8);
                    Correo = alum.GetString(9);
                    Apellido1 = alum.GetString(4);
                    Apellido2 = alum.GetString(5);
                }
            }
            catch (Exception)
            {

                throw;
            }
        }

        public int buscarProfeRut(int rutAlumno) {
            int rutProfe = 0;
            try
            {
                
                var connectionString = ConfigurationManager.ConnectionStrings["OracleDbContext"].ConnectionString;
                OracleConnection _connection = new OracleConnection();
                _connection.ConnectionString = connectionString;
                _connection.Open();

                string sql = "Select docente_practica.RUT_DOCENTE from usuario join docente_practica ON usuario.RUT = docente_practica.RUT_ALUMNO where usuario.RUT='"+rutAlumno+ "'";
                OracleCommand cmd = new OracleCommand(sql, _connection);
                var docenteRut = cmd.ExecuteReader();


                while (docenteRut.Read())
                {
                   rutProfe = docenteRut.GetInt32(0);

                }

                return rutProfe;
            }
            catch (Exception)
            {
                return rutProfe;
            }

        }

        public bool ValidarUsuario(int rut,string pass) {
            try
            {
                var connectionString = ConfigurationManager.ConnectionStrings["OracleDbContext"].ConnectionString;
                OracleConnection _connection = new OracleConnection();
                _connection.ConnectionString = connectionString;
                _connection.Open();

                string sql = "Select * FROM Usuario WHERE rut = '"+rut+"' AND contraseña = '"+pass+"'";

                OracleCommand cmd = new OracleCommand(sql, _connection);
                
                var user = cmd.ExecuteReader();
                
                while (user.Read())
                {
                    Rut = user.GetInt32(0);
                    Dv = user.GetString(1);
                    Contraseña = user.GetString(2);
                    Nombres = user.GetString(3);
                    Apellido1 = user.GetString(4);
                    Apellido2 = user.GetString(5);
                    FechaNac = user.GetDateTime(6);
                    Direccion = user.GetString(7);
                    Telefono = user.GetInt32(8);
                    Correo = user.GetString(9);
                    CarreraNombre = user.GetString(15);
                    Idpractica = user.GetInt32(14); ;
                }

                if (user.HasRows)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception)
            {

                return false;
            }

        }

        //Método para devolver array con todos los alumnos asigandos a un profesor (según rut profe)
        public List<Usuario> AlumnosAsignados(int rut_profe) {
            List<Usuario> lista = new List<Usuario>();
            try
            {
                var connectionString = ConfigurationManager.ConnectionStrings["OracleDbContext"].ConnectionString;
                OracleConnection _connection = new OracleConnection();
                _connection.ConnectionString = connectionString;
                _connection.Open();

                string sql = "Select iddocentepractica, docente_practica.rut_alumno, Usuario.dv_usuario, Usuario.nombres, Usuario.apellido1, Usuario.apellido2,Usuario.correo,docente_practica.estado_docente From docente_practica JOIN Usuario ON docente_practica.RUT_ALUMNO = Usuario.RUT Where docente_practica.RUT_DOCENTE = '" + rut_profe+"'";

                OracleCommand cmd = new OracleCommand(sql, _connection);

                var users = cmd.ExecuteReader();


                while (users.Read()) {
                    Usuario alum = new Usuario();
                    alum.Rut = users.GetInt32(1);
                    alum.Dv = users.GetString(2);
                    alum.Nombres = users.GetString(3);
                    alum.Apellido1 = users.GetString(4);
                    alum.Apellido2 = users.GetString(5);
                    alum.Correo = users.GetString(6);
                    alum.estadoPractica = users.GetInt32(7);
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
        public bool CambiarAsignacionPractica(int rut_profe, int rut_alumno,int estado) {
            try
            {
                var connectionString = ConfigurationManager.ConnectionStrings["OracleDbContext"].ConnectionString;
                OracleConnection _connection = new OracleConnection();
                _connection.ConnectionString = connectionString;
                _connection.Open();

                string sql = "update DOCENTE_PRACTICA set ESTADO_DOCENTE = '"+ estado + "' WHERE rut_alumno = '"+rut_alumno+"' AND rut_docente = '"+rut_profe+"'";

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
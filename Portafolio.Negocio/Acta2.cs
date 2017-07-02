using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Portafolio.Negocio
{
    public class Acta2
    {
        public int IdActa2 { get; set; }
        public string PrincipalesTareas { get; set; }
        public string Aportes { get; set; }
        public string Sugerencias { get; set; }
        public double PromedioPersonal { get; set; }
        public double PromedioProfesional { get; set; }


        public Acta2()
        {
            Init();
        }

        private void Init()
        { 
            IdActa2 = 0;
            PrincipalesTareas = "";
            Aportes = "";
            Sugerencias = "";
            PromedioPersonal = 0;
            PromedioProfesional = 0;
        }

        public bool IngresarActa2(int idpractica)
        {
            try
            {
                var connectionString = ConfigurationManager.ConnectionStrings["OracleDbContext"].ConnectionString;
                OracleConnection _connection = new OracleConnection();
                _connection.ConnectionString = connectionString;
                _connection.Open();

                OracleCommand cmd = _connection.CreateCommand();
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.CommandText = "crear_acta2";
                
                cmd.Parameters.Add("p_tareas", OracleDbType.Varchar2).Value = this.PrincipalesTareas;
                cmd.Parameters.Add("p_aportes", OracleDbType.Varchar2).Value = this.Aportes;
                cmd.Parameters.Add("p_sugerencias", OracleDbType.Varchar2).Value = this.Sugerencias;
                cmd.Parameters.Add("p_prom_personal", OracleDbType.Double).Value = this.PromedioPersonal;
                cmd.Parameters.Add("p_prom_profe", OracleDbType.Double).Value = this.PromedioProfesional;
                cmd.Parameters.Add("p_id_practica", OracleDbType.Int32).Value = idpractica;
               

                cmd.ExecuteNonQuery();
                _connection.Close();

                return true;

            }
            catch (Exception e)
            {
                Console.WriteLine("{0}: {1}", "Error", e.Message);
                Console.WriteLine("Presione una tecla para salir");
                Console.ReadLine();
                return false;
            }
        }

        public void InfoActa2(int rutAlumno)
        {
            try
            {
                var connectionString = ConfigurationManager.ConnectionStrings["OracleDbContext"].ConnectionString;
                OracleConnection _connection = new OracleConnection();
                _connection.ConnectionString = connectionString;
                _connection.Open();

                string sql = "select principales_tareas, aportes, sugerencias, promedio_personal, promedio_profesional from usuario join practica on(usuario.PRACTICA_IDPRACTICA = practica.IDPRACTICA) join acta2 on(acta2.IDACTA2 = practica.ACTA2_IDACTA2) where rut = "+ rutAlumno;
                OracleCommand cmd = new OracleCommand(sql, _connection);

                var pract = cmd.ExecuteReader();

                while (pract.Read())
                {
                     PrincipalesTareas = pract.GetString(0);
                     Aportes = pract.GetString(1);
                     Sugerencias = pract.GetString(2);
                     PromedioPersonal = pract.GetDouble(3);
                     PromedioProfesional= pract.GetDouble(4);
                }
            }
            catch (Exception e)
            {
                Console.WriteLine("Mensaje: " + e.Message);
            }
        }
        
    }
}

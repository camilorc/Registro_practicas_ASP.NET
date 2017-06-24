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

        public bool IngresarActa2(CentroPractica centro,int idpractica, int cant_horas,string fecha_inicio,string fecha_termino)
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
                cmd.Parameters.Add("p_prom_personal", OracleDbType.Int32).Value = this.PromedioPersonal;
                cmd.Parameters.Add("p_prom_profe", OracleDbType.Int32).Value = this.PromedioProfesional;
                cmd.Parameters.Add("p_id_centro", OracleDbType.Int32).Value = centro.IdCentro;
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
    }
}

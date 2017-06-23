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
    public class Practica
    {
        public int IdPractica { get; set; }
        public string TipoHoras { get; set; }
        public int CantHoras { get; set; }
        public string FechaInicio { get; set; }
        public string FechaTermino { get; set; }
        public char Distancia { get; set; }
        public string Donde { get; set; }
        public double NotaFinal { get; set; }
        public int Nota3 { get; set; }
        public bool Estado { get; set; }

        public Practica()
        {
            Init();
        }

        private void Init()
        {
            IdPractica = 0;
            TipoHoras = "";
            CantHoras = 0;
            FechaInicio = "";
            FechaTermino = "";
            Distancia = ' ';
            Donde = "";
            NotaFinal = 0;
            Nota3 = 0;
            Estado = true;
        }

        //Método para buscar una práctica según el IDPRACTICA en la BD
        public void buscarPractica() {
            try
            {
                var connectionString = ConfigurationManager.ConnectionStrings["OracleDbContext"].ConnectionString;
                OracleConnection _connection = new OracleConnection();
                _connection.ConnectionString = connectionString;
                _connection.Open();

                string sql = "Select * from practica where idpractica = '"+this.IdPractica+"'";

                OracleCommand cmd = new OracleCommand(sql, _connection);

                var pract = cmd.ExecuteReader();

                while (pract.Read())
                {
                    FechaInicio = pract.GetDateTime(4).ToString();
                    FechaTermino = pract.GetDateTime(3).ToString();
                    CantHoras = pract.GetInt32(2);
                }
            }
            catch (Exception)
            {

                throw;
            }
        }

        

        

        

     
 
    }
}

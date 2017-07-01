using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Oracle.ManagedDataAccess.Client;
using System.Configuration;

namespace Portafolio.Negocio
{
    public class Carrera
    {
        public int IdCarrera { get; set; }
        public string NombreCarrera { get; set; }

        public Carrera()
        {
            Init();
        }

        private void Init()
        {
            IdCarrera = 0;
            NombreCarrera = "";
        }

        public void buscarCarrera(int rutAlumno)
        {
            try
            {
                var connectionString = ConfigurationManager.ConnectionStrings["OracleDbContext"].ConnectionString;
                OracleConnection _connection = new OracleConnection();
                _connection.ConnectionString = connectionString;
                _connection.Open();

                string sql = "select nombre_carrera from usuario join carrera on (usuario.carrera_idcarrera = carrera.idcarrera) where rut = " + rutAlumno;
                OracleCommand cmd = new OracleCommand(sql, _connection);

                var pract = cmd.ExecuteReader();

                while (pract.Read())
                {
                    NombreCarrera = pract.GetString(0);
                }
            }
            catch (Exception e)
            {
                Console.WriteLine("Mensaje: " + e.Message);
            }
        }

    }
}

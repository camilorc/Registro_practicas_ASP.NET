using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Portafolio.Datos;
using System.Configuration;
using Oracle.ManagedDataAccess.Client;
using System.Data;
using Oracle.ManagedDataAccess.Types;

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
                    FechaInicio = pract.GetDateTime(6).ToString();
                    FechaTermino = pract.GetDateTime(5).ToString();
                    CantHoras = pract.GetInt32(4);
                }
            }
            catch (Exception e)
            {

                Console.WriteLine("Mensaje: "+e.Message);
            }
        }

        //MÉTODO PARA ACTUALIZAR LA NOTA_3 SEGÚN EL IDPRACTICA DEL ALUMNO
        public bool updateNota3Alumno(int rut_alumno, float nota_3) {
            try
            {
                var connectionString = ConfigurationManager.ConnectionStrings["OracleDbContext"].ConnectionString;
                OracleConnection _connection = new OracleConnection();
                _connection.ConnectionString = connectionString;
                _connection.Open();

                OracleCommand cmd = _connection.CreateCommand();
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.CommandText = "UPDATE_ACTA3_ALUMNO";

                cmd.Parameters.Add("p_rut_alumno", OracleDbType.Int32).Value = rut_alumno;
                cmd.Parameters.Add("p_nota_3", OracleDbType.BinaryFloat).Value = nota_3;

                cmd.ExecuteNonQuery();
                _connection.Close();




                return true;
            }
            catch (Exception)
            {

                return false;
            }




        }

        //MÉTODO PARA SABER SI YA TIENE UNA NOTA_3 
        public bool tieneNota3(int rut_alumno) {
            try
            {
                var connectionString = ConfigurationManager.ConnectionStrings["OracleDbContext"].ConnectionString;
                OracleConnection _connection = new OracleConnection();
                _connection.ConnectionString = connectionString;
                _connection.Open();

                OracleCommand cmd = _connection.CreateCommand();
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.CommandText = "saber_si_tiene_nota3";

                cmd.Parameters.Add("p_rut_alumno", OracleDbType.Int32).Value = rut_alumno;
                cmd.Parameters.Add("p_nota3", OracleDbType.Int32,200).Direction = ParameterDirection.Output;

                cmd.ExecuteNonQuery();

                Int32 nota3 = Convert.ToInt32((decimal)(OracleDecimal)(cmd.Parameters["p_nota3"].Value));


                Console.WriteLine("param: "+nota3);
                if (nota3 > 0)
                {
                    return true;
                
                }
                else {
                
                    return false;
                }
                
            }
            catch (Exception e)
            {
                Console.WriteLine("mensaje " + e.Message);
                return false;
            }
        }

        public bool cambiarEstado(int rut_alumno, string estado) {
            try
            {
                var connectionString = ConfigurationManager.ConnectionStrings["OracleDbContext"].ConnectionString;
                OracleConnection _connection = new OracleConnection();
                _connection.ConnectionString = connectionString;
                _connection.Open();

                OracleCommand cmd = _connection.CreateCommand();
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.CommandText = "cambiar_estado_practica";

                cmd.Parameters.Add("p_rut_alumno", OracleDbType.Int32).Value = rut_alumno;
                cmd.Parameters.Add("p_nuevo_estado", OracleDbType.Varchar2).Value = estado;

                cmd.ExecuteNonQuery();
                _connection.Close();

                return true;
            }
            catch (Exception)
            {

                return false;
            }


        }

        public bool CambiarNotaFinal(int rut_alumno, double notaFinal)
        {
            try
            {
                var connectionString = ConfigurationManager.ConnectionStrings["OracleDbContext"].ConnectionString;
                OracleConnection _connection = new OracleConnection();
                _connection.ConnectionString = connectionString;
                _connection.Open();

                OracleCommand cmd = _connection.CreateCommand();
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.CommandText = "update_nota_final";

                cmd.Parameters.Add("p_rut_alumno", OracleDbType.Int32).Value = rut_alumno;
                cmd.Parameters.Add("p_nota_final", OracleDbType.Double).Value = notaFinal;

                cmd.ExecuteNonQuery();
                _connection.Close();

                return true;
            }
            catch (Exception)
            {

                return false;
            }


        }









    }
}

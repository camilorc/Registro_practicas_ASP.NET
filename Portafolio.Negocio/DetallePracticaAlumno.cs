using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Portafolio.Negocio
{
    public class DetallePracticaAlumno
    {
        public int Rut { get; set; }
        public string Dv { get; set; }
        public string Nombres { get; set; }
        public string Apellido1 { get; set; }
        public string Apellido2 { get; set; }
        public string Email { get; set; }
        public int Fono { get; set; }
        public string NombreCarrera { get; set; }
        public string NombreCentro { get; set; }
        public string EmailCentro { get; set; }
        public string FechaInicio { get; set; }
        public string FechaTermino { get; set; }
        public string TipoPractica { get; set; }
        public string DireccionCentro { get; set; }
        public float Nota3 { get; set; }
        public float NotaFinal { get; set; }
        public float NotaPersonal { get; set; }
        public float NotaProfesional { get; set; }

        public DetallePracticaAlumno() {
            Rut            = 0;
            Dv             = "";
            Nombres        = "";
            Apellido1      = "";
            Apellido2      = "";
            Email          = "";
            Fono           = 0;
            NombreCarrera  = "";
            NombreCentro   = "";
            EmailCentro    = "";
            FechaInicio    = "";
            FechaTermino   = "";
            TipoPractica   = "";
            DireccionCentro = "";
            Nota3 = 0;
            NotaFinal = 0;
            NotaPersonal = 0;
            NotaProfesional = 0;

        }


        //Método para mostrar todos los datos
        public bool ObtenerDatos(int rut_alumno) {
            try
            {
                var connectionString = ConfigurationManager.ConnectionStrings["OracleDbContext"].ConnectionString;
                OracleConnection _connection = new OracleConnection();
                _connection.ConnectionString = connectionString;
                _connection.Open();

                OracleCommand cmd = _connection.CreateCommand();
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.CommandText = "DETALLE_PRACTICA_ALUMNO";

                cmd.Parameters.Add("rut_alumno", OracleDbType.Int32, 200).Value = rut_alumno;
               cmd.Parameters.Add("p_dv_alumno", OracleDbType.Varchar2, 200).Value = ParameterDirection.Output;
                cmd.Parameters.Add("p_nombres", OracleDbType.Varchar2, 200).Value = ParameterDirection.Output;
                cmd.Parameters.Add("p_apellido1", OracleDbType.Varchar2, 200).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("p_apellido2", OracleDbType.Varchar2, 200).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("p_email", OracleDbType.Varchar2, 200).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("p_telefono", OracleDbType.Int32, 200).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("p_carrera_nombre", OracleDbType.Varchar2, 200).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("p_nombre_centro", OracleDbType.Varchar2, 200).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("p_email_centro", OracleDbType.Varchar2, 200).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("p_fecha_inicio", OracleDbType.Date, 200).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("p_fecha_termino", OracleDbType.Date, 200).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("p_tipo_practica", OracleDbType.Varchar2, 200).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("p_direccion_centro", OracleDbType.Varchar2, 200).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("p_nota3", OracleDbType.Int32, 200).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("p_nota_final", OracleDbType.Int32, 200).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("p_prom_acta2_personal", OracleDbType.Int32, 200).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("p_prom_acta2_profesional", OracleDbType.Int32, 200).Direction = ParameterDirection.Output;
                cmd.ExecuteNonQuery();


                //Asignamos parametros al objeto

                Rut = rut_alumno;
                Dv = cmd.Parameters["p_dv_alumno"].Value.ToString();
                Nombres = cmd.Parameters["p_nombres"].Value.ToString();
                Apellido1 = cmd.Parameters["p_apellido1"].Value.ToString();
                Apellido2 = cmd.Parameters["p_apellido2"].Value.ToString();
                Fono = int.Parse(cmd.Parameters["p_telefono"].Value.ToString());
                Email = cmd.Parameters["p_email"].Value.ToString();
                NombreCarrera = cmd.Parameters["p_carrera_nombre"].Value.ToString();
                         
                NombreCentro = cmd.Parameters["p_nombre_centro"].Value.ToString();
                EmailCentro = cmd.Parameters["p_email_centro"].Value.ToString();
                FechaInicio = cmd.Parameters["p_fecha_inicio"].Value.ToString();
                FechaTermino = cmd.Parameters["p_fecha_termino"].Value.ToString();
                TipoPractica = cmd.Parameters["p_tipo_practica"].Value.ToString();
                DireccionCentro = cmd.Parameters["p_direccion_centro"].Value.ToString();

                Nota3 = float.Parse(cmd.Parameters["p_nota3"].Value.ToString());
                NotaFinal = float.Parse(cmd.Parameters["p_nota_final"].Value.ToString());
                NotaPersonal = float.Parse(cmd.Parameters["p_prom_acta2_personal"].Value.ToString());
                NotaProfesional = float.Parse(cmd.Parameters["p_prom_acta2_profesional"].Value.ToString());

                return true;
            }
            catch (Exception e)
            {
                Console.WriteLine("Error: "+e);
                return false;
            }

        }



    }
}

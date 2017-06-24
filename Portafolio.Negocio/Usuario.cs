using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Portafolio.Datos;
using System.Configuration;
using Oracle.ManagedDataAccess.Client;

using System.Net.Mail;
using System.Net;

using System.Data;


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
        public string FotoPerfil { get; set; }

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
            FotoPerfil = "";
        }

        //método para buscar un usuario de la BD según su RUT
        public void buscarUsuario()
        {
            try
            {
                var connectionString = ConfigurationManager.ConnectionStrings["OracleDbContext"].ConnectionString;
                OracleConnection _connection = new OracleConnection();
                _connection.ConnectionString = connectionString;
                _connection.Open();

                string sql = "Select * from usuario where rut = '" + this.Rut + "'";
                OracleCommand cmd = new OracleCommand(sql, _connection);
                var alum = cmd.ExecuteReader();

                while (alum.Read())
                {
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

        public int buscarProfeRut(int rutAlumno)
        {
            int rutProfe = 0;
            try
            {

                var connectionString = ConfigurationManager.ConnectionStrings["OracleDbContext"].ConnectionString;
                OracleConnection _connection = new OracleConnection();
                _connection.ConnectionString = connectionString;
                _connection.Open();

                string sql = "Select docente_practica.RUT_DOCENTE from usuario join docente_practica ON usuario.RUT = docente_practica.RUT_ALUMNO where usuario.RUT='" + rutAlumno + "'";
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

        public bool ValidarUsuario(int rut, string pass)
        {
            try
            {

                var connectionString = ConfigurationManager.ConnectionStrings["OracleDbContext"].ConnectionString;
                OracleConnection _connection = new OracleConnection();
                _connection.ConnectionString = connectionString;
                _connection.Open();

                OracleCommand cmd = _connection.CreateCommand();
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.CommandText = "VALIDARUSUARIO";

                cmd.Parameters.Add("p_rut", OracleDbType.Int32,200).Value = rut;
                cmd.Parameters.Add("p_pass", OracleDbType.Varchar2,200).Value = pass;
                cmd.Parameters.Add("p_dv", OracleDbType.Varchar2,200).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("p_nombres", OracleDbType.Varchar2,200).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("p_apellido1", OracleDbType.Varchar2,200).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("p_apellido2", OracleDbType.Varchar2,200).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("p_fecha_nacimiento", OracleDbType.Varchar2,200).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("p_direccion", OracleDbType.Varchar2,200).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("p_telefono", OracleDbType.Int32,200).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("p_email", OracleDbType.Varchar2,200).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("p_sede_id", OracleDbType.Int32,200).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("p_sede_nombre", OracleDbType.Varchar2,200).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("p_rol_id", OracleDbType.Int32,200).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("p_practica_id", OracleDbType.Int32,200).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("p_carrera_id", OracleDbType.Int32,200).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("p_carrera_nombre", OracleDbType.Varchar2,200).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("p_foto_perfil", OracleDbType.Varchar2,200).Direction = ParameterDirection.Output;
                cmd.Parameters["p_dv"].Value= "";
                cmd.ExecuteNonQuery();


                //Asignamos parametros al objeto

                Rut = rut;
                Dv = cmd.Parameters["p_dv"].Value.ToString();
                Nombres = cmd.Parameters["p_nombres"].Value.ToString();
                Apellido1 = cmd.Parameters["p_apellido1"].Value.ToString();
                Apellido2 = cmd.Parameters["p_apellido2"].Value.ToString();
                FechaNac = DateTime.Parse(cmd.Parameters["p_fecha_nacimiento"].Value.ToString());
                Direccion = cmd.Parameters["p_direccion"].Value.ToString();
                Telefono = int.Parse(cmd.Parameters["p_telefono"].Value.ToString());
                Correo = cmd.Parameters["p_email"].Value.ToString();
                CarreraNombre = cmd.Parameters["p_carrera_nombre"].Value.ToString();
                FotoPerfil = cmd.Parameters["p_foto_perfil"].Value.ToString();

                Console.WriteLine("este es el DV: "+Dv+" "+Nombres+" "+Telefono+" "+FechaNac);
                

                

                return true;

                

          }catch (Exception e )
            {
                Console.WriteLine("mensaje error: "+e);
                return false;
            }
        }

        public bool OlvidarContrasena(string email)
        {
            var connectionString = ConfigurationManager.ConnectionStrings["OracleDbContext"].ConnectionString;
            OracleConnection _connection = new OracleConnection();
            _connection.ConnectionString = connectionString;
            _connection.Open();
            string sql = "select * from usuario where correo ='" + email + "'";
            OracleCommand cmd = new OracleCommand(sql, _connection);
            var user = cmd.ExecuteReader();
            while (user.Read())
            {
                Contraseña = user.GetString(2);
                Nombres = user.GetString(3);
                Apellido1 = user.GetString(4);
                Apellido2 = user.GetString(5);
            }
            MailMessage mmsg = new MailMessage();
            mmsg.To.Add(email);
            mmsg.Subject = "Sistema de Contraseñas ::::: Duoc UC";
            mmsg.SubjectEncoding = Encoding.UTF8;
            mmsg.Body = "Estimada(o) " + Nombres + " " + Apellido1 + " " + Apellido2 + ": " + Environment.NewLine + Environment.NewLine +
                "Le reenviamos su contraseña " + Environment.NewLine +
                "---------------------------------- " + Environment.NewLine +
                "     " + Contraseña + Environment.NewLine +
                "-------------------------------";
            mmsg.BodyEncoding = Encoding.UTF8;
            mmsg.IsBodyHtml = false;
            mmsg.From = new MailAddress("duocucmaipu.informatica@gmail.com");
            SmtpClient cliente = new SmtpClient();
            cliente.Credentials = new NetworkCredential("duocucmaipu.informatica@gmail.com", "abcd1234.");
            cliente.Port = 587;
            cliente.EnableSsl = true;
            cliente.Host = "smtp.gmail.com";
            try
            {
                cliente.Send(mmsg);
                return true;
            }
            catch (SmtpException ex)
            {
                return false;
            }
        }

        public bool EditarUsuario(int rut, DateTime nacimiento, string direccion, int telefono, string mail)
        {
            try
            {
                var connectionString = ConfigurationManager.ConnectionStrings["OracleDbContext"].ConnectionString;
                OracleConnection _connection = new OracleConnection();
                _connection.ConnectionString = connectionString;
                _connection.Open();

                OracleCommand cmd = _connection.CreateCommand();
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.CommandText = "EDITAR_USER";

                cmd.Parameters.Add("p_rut", OracleDbType.Int32).Value = Rut;
                cmd.Parameters.Add("p_fecha_nacimiento", OracleDbType.Varchar2).Value = nacimiento;
                cmd.Parameters.Add("p_direccion", OracleDbType.Varchar2).Value = direccion;
                cmd.Parameters.Add("p_telefono", OracleDbType.Int32).Value = telefono;
                cmd.Parameters.Add("p_correo", OracleDbType.Varchar2).Value = mail;

                cmd.ExecuteReader();
                _connection.Close();

                return true;

            }
            catch (Exception e)
            {
                return false;
            }

        }

        public bool EditarDocentePerfil(int rut_docente, string nombres, string apellido1, string apellido2,string nacimiento, string direccion, string email) {
            try
            {
                var connectionString = ConfigurationManager.ConnectionStrings["OracleDbContext"].ConnectionString;
                OracleConnection _connection = new OracleConnection();
                _connection.ConnectionString = connectionString;
                _connection.Open();

                OracleCommand cmd = _connection.CreateCommand();
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.CommandText = "update_perfil_docente";

                cmd.Parameters.Add("p_rut_docente", OracleDbType.Int32).Value = rut_docente;
                cmd.Parameters.Add("p_nombres", OracleDbType.Varchar2).Value = nombres;
                cmd.Parameters.Add("p_apellido1", OracleDbType.Varchar2).Value = apellido1;
                cmd.Parameters.Add("p_apellido2", OracleDbType.Varchar2).Value = apellido2;
                cmd.Parameters.Add("p_nacimiento", OracleDbType.Varchar2).Value = nacimiento;
                cmd.Parameters.Add("p_direccion", OracleDbType.Varchar2).Value = direccion;
                cmd.Parameters.Add("p_email", OracleDbType.Varchar2).Value = email;

                cmd.ExecuteReader();
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
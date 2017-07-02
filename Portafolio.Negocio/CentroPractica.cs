using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;

namespace Portafolio.Negocio
{
    public class CentroPractica
    {
        public int IdCentro { get; set; }
        public string NombreCentro { get; set; }
        public string DireccionCentro { get; set; }
        public string DepartamentoCentro { get; set; }
        public string AreaCentro { get; set; }
        public string RazonSocial { get; set; }
        public string Web { get; set; }
        public int Fono { get; set; }
        public string Email { get; set; }
        public string Username { get; set; }
        public string Pass { get; set; }


        public CentroPractica()
        {
            Init();
        }

        private void Init()
        {
            IdCentro = 0;
            NombreCentro = "";
            DireccionCentro = "";
            DepartamentoCentro = "";
            AreaCentro = "";
            RazonSocial = "";
            Web = "";
            Fono = 0;
            Email = "";
            Username = "";
            Pass = "";
        }

        public CentroPractica iniciarSesion()
        {
            try
            {
                var connectionString = ConfigurationManager.ConnectionStrings["OracleDbContext"].ConnectionString;
                OracleConnection _connection = new OracleConnection();
                _connection.ConnectionString = connectionString;
                _connection.Open();

                string sql = "Select idcentropractica, nombre_centro, direccion_centro, departamento_centro, area_centro, username, razon_social, web, fono,email FROM centro_practica WHERE nombre_centro = '" + this.Username + "'";

                OracleCommand cmd = new OracleCommand(sql, _connection);

                var centro = cmd.ExecuteReader();
                while (centro.Read())
                {
                    IdCentro = centro.GetInt32(0);
                    NombreCentro = centro.GetString(1);
                    DireccionCentro = centro.GetString(2);
                    DepartamentoCentro = centro.GetString(3);
                    AreaCentro = centro.GetString(4);
                    Username = centro.GetString(5);
                    RazonSocial = centro.GetString(6);
                    Web = centro.GetString(7);
                    Fono = centro.GetInt32(8);
                    Email = centro.GetString(9);
                }
                return this;
            }
            catch (Exception)
            {

                return this;
            }
        }

        public List<Usuario> alumnosEnPractica()
        {
            try
            {
                List<Usuario> users = new List<Usuario>();
                var connectionString = ConfigurationManager.ConnectionStrings["OracleDbContext"].ConnectionString;
                OracleConnection _connection = new OracleConnection();
                _connection.ConnectionString = connectionString;
                _connection.Open();

                string sql = "select * from Usuario JOIN PRACTICA ON Usuario.PRACTICA_IDPRACTICA = PRACTICA.IDPRACTICA JOIN CENTRO_PRACTICA ON PRACTICA.IDCENTROPRACTICA = CENTRO_PRACTICA.IDCENTROPRACTICA WHERE CENTRO_PRACTICA.IDCENTROPRACTICA = '" + this.IdCentro + "' AND Usuario.ROLES_IDROL = 4";

                OracleCommand cmd = new OracleCommand(sql, _connection);

                var alumnos = cmd.ExecuteReader();

                while (alumnos.Read())
                {
                    Usuario user = new Usuario();
                    user.Rut = alumnos.GetInt32(0);
                    user.Nombres = alumnos.GetString(3) + " " + alumnos.GetString(4) + " " + alumnos.GetString(5);
                    user.Direccion = alumnos.GetString(7);
                    users.Add(user);
                }
                return users;
            }
            catch (Exception)
            {
                throw;
            }
        }

        public bool ValidarUsuario(string username, string pass)
        {
            try
            {
                var connectionString = ConfigurationManager.ConnectionStrings["OracleDbContext"].ConnectionString;
                OracleConnection _connection = new OracleConnection();
                _connection.ConnectionString = connectionString;
                _connection.Open();

                string sql = "Select idcentropractica,nombre_centro,direccion_centro,departamento_centro,area_centro,username,razon_social,web,fono,email FROM centro_practica WHERE username = '" + username + "' AND pass = '" + pass + "'";

                OracleCommand cmd = new OracleCommand(sql, _connection);

                var centro = cmd.ExecuteReader();
                while (centro.Read())
                {
                    IdCentro = centro.GetInt32(0);
                    NombreCentro = centro.GetString(1);
                    DireccionCentro = centro.GetString(2);
                    DepartamentoCentro = centro.GetString(3);
                    AreaCentro = centro.GetString(4);
                    Username = centro.GetString(5);
                    RazonSocial = centro.GetString(6);
                    Web = centro.GetString(7);
                    Fono = centro.GetInt32(8);
                    Email = centro.GetString(9);
                }

                if (centro.HasRows)
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

        public bool LlenarActa1(int rutAlumno)
        {
            try
            {
                var connectionString = ConfigurationManager.ConnectionStrings["OracleDbContext"].ConnectionString;
                OracleConnection _connection = new OracleConnection();
                _connection.ConnectionString = connectionString;
                _connection.Open();

                string sql = "select nombre_centro, direccion_centro, departamento_centro, area_centro, razon_social, web, fono, email from usuario join practica on(usuario.practica_idpractica = practica.idpractica) join centro_practica on(practica.idcentropractica = centro_practica.idcentropractica) where rut = '" + rutAlumno + "'";
                OracleCommand cmd = new OracleCommand(sql, _connection);

                var alumnos = cmd.ExecuteReader();

                while (alumnos.Read())
                {
                    NombreCentro = alumnos.GetString(0);
                    DireccionCentro = alumnos.GetString(1);
                    DepartamentoCentro = alumnos.GetString(2);
                    AreaCentro = alumnos.GetString(3);
                    RazonSocial = alumnos.GetString(4);
                    Web = alumnos.GetString(5);
                    Fono = alumnos.GetInt32(6);
                    Email = alumnos.GetString(7);
                }

                if (alumnos.HasRows)
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

        public bool EditarCentro(int id, string nombre, string direccion, string departamento, string area, string razon, string web, int fono, string mail)
        {
            try
            {
                var connectionString = ConfigurationManager.ConnectionStrings["OracleDbContext"].ConnectionString;
                OracleConnection _connection = new OracleConnection();
                _connection.ConnectionString = connectionString;
                _connection.Open();

                OracleCommand cmd = _connection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "EDITAR_CENTRO";

                cmd.Parameters.Add("p_idcentro", OracleDbType.Int32).Value = id;
                cmd.Parameters.Add("p_nombre", OracleDbType.Varchar2).Value = nombre;
                cmd.Parameters.Add("p_direccion", OracleDbType.Varchar2).Value = direccion;
                cmd.Parameters.Add("p_departamento", OracleDbType.Varchar2).Value = departamento;
                cmd.Parameters.Add("p_area", OracleDbType.Varchar2).Value = area;
                cmd.Parameters.Add("p_razon", OracleDbType.Varchar2).Value = razon;
                cmd.Parameters.Add("p_web", OracleDbType.Varchar2).Value = web;
                cmd.Parameters.Add("p_fono", OracleDbType.Int32).Value = fono;
                cmd.Parameters.Add("p_mail", OracleDbType.Varchar2).Value = mail;

                cmd.ExecuteReader();
                _connection.Close();

                return true;
            }
            catch (Exception)
            {
                return false;
            }

        }

        public bool OlvidarContrasena(string email)
        {
            var connectionString = ConfigurationManager.ConnectionStrings["OracleDbContext"].ConnectionString;
            OracleConnection _connection = new OracleConnection();
            _connection.ConnectionString = connectionString;
            _connection.Open();

            OracleCommand cmd = _connection.CreateCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "buscar_contrasenaCentro";


            cmd.Parameters.Add("p_email", OracleDbType.Varchar2).Value = email;
            cmd.Parameters.Add("p_contrasenna", OracleDbType.Varchar2, 200).Direction = ParameterDirection.Output;
            cmd.Parameters.Add("p_nombres", OracleDbType.Varchar2, 200).Direction = ParameterDirection.Output;
            cmd.Parameters.Add("p_usuario", OracleDbType.Varchar2, 200).Direction = ParameterDirection.Output;
            cmd.ExecuteNonQuery();

            NombreCentro = cmd.Parameters["p_nombres"].Value.ToString();
            Email = email;
            Pass = cmd.Parameters["p_contrasenna"].Value.ToString();
            Username = cmd.Parameters["p_usuario"].Value.ToString();

            MailMessage mmsg = new MailMessage();
            mmsg.To.Add(Email);
            mmsg.Subject = "Sistema de Contraseñas ::::: Duoc UC";
            mmsg.SubjectEncoding = Encoding.UTF8;
            mmsg.Body = "Estimada(o) " + NombreCentro + ": " + Environment.NewLine + Environment.NewLine +
                "Le reenviamos sus datos de sesión" + Environment.NewLine +
                "---------------------------------- " 
                + Environment.NewLine +
                "User:        " + Username 
                + Environment.NewLine+
                "Contraseña:  " + Pass+
                Environment.NewLine +
                "-------------------------------";
            mmsg.BodyEncoding = Encoding.UTF8;
            mmsg.IsBodyHtml = false;
            mmsg.From = new MailAddress("duocucmaipu.informatica@gmail.com");
            SmtpClient cliente = new SmtpClient();
            cliente.Credentials = new NetworkCredential("duocucmaipu.informatica@gmail.com", "abcd1234.");
            cliente.Port = 587;
            cliente.EnableSsl = true;
            cliente.Host = "smtp.gmail.com";

            _connection.Close();
            try
            {
                cliente.Send(mmsg);
                return true;
            }
            catch (SmtpException)
            {
                return false;
            }
        }

        public bool UpdateA1(int id, string direccion, string departamento)
        {
            try
            {
                var connectionString = ConfigurationManager.ConnectionStrings["OracleDbContext"].ConnectionString;
                OracleConnection _connection = new OracleConnection();
                _connection.ConnectionString = connectionString;
                _connection.Open();

                string sql = "UPDATE CENTRO_PRACTICA SET DIRECCION_CENTRO = '" + direccion + "', DEPARTAMENTO_CENTRO = '"+departamento+"' WHERE IDCENTROPRACTICA = '" + id + "'";
                OracleCommand cmd = new OracleCommand(sql, _connection);
                var docenteRut = cmd.ExecuteNonQuery();

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }


        
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Portafolio.Negocio;
using Oracle.ManagedDataAccess.Client;
using System.Data;
using System.Net.Mail;
using System.Net;

namespace Portafolio.Presentacion
{
    public partial class LoginAlumno : System.Web.UI.Page
    {

        public Usuario Alumno
        {
            get
            {
                if (Session["alumno"] == null)
                {
                    Session["alumno"] = new Usuario();

                }
                return (Usuario)Session["alumno"];

            }
            set
            {
                Session["alumno"] = value;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginAlumnoWeb_Authenticate(object sender, AuthenticateEventArgs e)
        {
            Usuario alumno = new Usuario();
            if (alumno.ValidarUsuario(int.Parse(LoginAlumnoWeb.UserName), LoginAlumnoWeb.Password))
            {
                Alumno = alumno;
                Response.Redirect("InicioAlumno.aspx");
            }
        }

        protected void PasswordRecovery1_SendingMail(object sender, MailMessageEventArgs e)
        {
            

        }

        protected void SendEmail(object sender, EventArgs e)
        {
            //tomar el mail y el rut, si son iguales mandar la contraseña
            //
            string oradb = "Data Source=localhost:1521 / XE;User Id=PROYECTO;Password=1234";
            OracleConnection conn = new OracleConnection(oradb);
            conn.Open();
            OracleCommand cmd = new OracleCommand();
            cmd.Connection = conn;
            cmd.CommandText = "select * from usuario where correo ='" + txtEmail.Text+"'";
            cmd.CommandType = CommandType.Text;
            OracleDataReader dr = cmd.ExecuteReader();
            dr.Read();
            String contrasena = dr.GetString(2);
            String nombre = dr.GetString(3);
            String ap1 = dr.GetString(4);
            String ap2= dr.GetString(5);
            MailMessage mmsg = new MailMessage();
            mmsg.To.Add(txtEmail.Text);
            mmsg.Subject = "Sistema de Contraseñas ::::: Duoc UC";
            mmsg.SubjectEncoding = System.Text.Encoding.UTF8;
            mmsg.Body = "Estimada(o) " + nombre + " " + ap1 + " " + ap2 + ": " + Environment.NewLine + Environment.NewLine +
                "Le reenviamos su contraseña " + Environment.NewLine +
                "---------------------------------- " + Environment.NewLine +
                "     "+contrasena+ Environment.NewLine +
                "-------------------------------";
            mmsg.BodyEncoding = System.Text.Encoding.UTF8;
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
            }
            catch (SmtpException ex)
            {
                lblMessage.Text = "Error";
            }

        }
    }
}
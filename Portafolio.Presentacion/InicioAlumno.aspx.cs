using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Portafolio.Negocio;
using Microsoft.Office.Interop.Word;
using System.Net.Mail;
using System.Web.Mail;
using System.Net;

namespace WebApplication1
{
    public partial class InicioAlumno : System.Web.UI.Page
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
        public Practica Practica
        {
            get
            {
                if (Session["practica"] == null)
                {
                    Session["practica"] = new Practica();

                }
                return (Practica)Session["practica"];

            }
            set
            {
                Session["practica"] = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void btn_Azul_Click(object sender, EventArgs e)
        {
            Response.Redirect("Acta1.aspx");
        }

        protected void btn_naranjo_Click(object sender, EventArgs e)
        {
            Response.Redirect("VistaActaFinal.aspx");
        }

        protected void btn_rojo_Click(object sender, EventArgs e)
        {
            Response.Redirect("GestorDocumentacion.aspx");
        }

        protected void btnCorreo_Click(object sender, EventArgs e)
        {
            EnviarCorreo();
        }

        public void EnviarCorreo()
        { 
            System.Net.Mail.MailMessage mmsg = new System.Net.Mail.MailMessage();

            //Direccion de correo electronico a la que queremos enviar el mensaje
            mmsg.To.Add("denissecasteletti@gmail.com");

            //Asunto
            mmsg.Subject = "Práctica por terminar";
            mmsg.SubjectEncoding = System.Text.Encoding.UTF8;

            //Direccion de correo electronico que queremos que reciba una copia del mensaje
            //mmsg.Bcc.Add("destinatariocopia@servidordominio.com"); //Opcional

            //Cuerpo del Mensaje
            mmsg.Body = "Estimada(o) " + Alumno.Nombres + " " + Alumno.Apellido1 + " " + Alumno.Apellido2 + ":  último dia mañana";
            mmsg.BodyEncoding = System.Text.Encoding.UTF8;
            mmsg.IsBodyHtml = false; //Si no queremos que se envíe como HTML

            //Correo electronico desde la que enviamos el mensaje
            mmsg.From = new MailAddress("duocucmaipu.informatica@gmail.com");


            /*-------------------------CLIENTE DE CORREO----------------------*/
            //Creamos un objeto de cliente de correo
            SmtpClient cliente = new SmtpClient();

            //Hay que crear las credenciales del correo emisor
            cliente.Credentials =
                new NetworkCredential("duocucmaipu.informatica@gmail.com", "abcd1234.");

            //Lo siguiente es obligatorio si enviamos el mensaje desde Gmail

            cliente.Port = 587;
            cliente.EnableSsl = true;


            cliente.Host = "smtp.gmail.com";//"mail.servidordominio.com"; Para Gmail "smtp.gmail.com";

            btnCorreo.Text = "Correo enviado";
            try
            {
                //Enviamos el mensaje      
                cliente.Send(mmsg);
            }
            catch (SmtpException ex)
            {
                //Aquí gestionamos los errores al intentar enviar el correo
            }
        }
    }
}

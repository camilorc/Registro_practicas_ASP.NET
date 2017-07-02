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
    public partial class LoginAlumno : Page
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

        protected void SendEmail(object sender, EventArgs e)
        {
            Usuario al = new Usuario();
            if (txtEmail.Text.Length > 1)
            {
                if (al.OlvidarContrasena(txtEmail.Text))
                {
                    txtEmail.Text = "Correo enviado";
                    txtEmail.ReadOnly = true;
                    txtEmail.ForeColor = System.Drawing.Color.Blue;
                }
                else
                {
                    txtEmail.Text = "Correo no enviado";
                }
            }
            else
            {
                txtEmail.Text = "Escriba su email";
            }
        }
    }
}
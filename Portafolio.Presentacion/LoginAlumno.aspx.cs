using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Portafolio.Negocio;

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
    }
}
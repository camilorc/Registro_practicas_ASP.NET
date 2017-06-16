using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Portafolio.Negocio;

namespace Portafolio.Presentacion
{
    public partial class LoginDocente : System.Web.UI.Page
    {
        public Usuario Docente
        {
            get
            {
                if (Session["docente"] == null)
                {
                    Session["docente"] = new Usuario();

                }
                return (Usuario)Session["docente"];

            }
            set
            {
                Session["docente"] = value;
            }

        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            Usuario docente = new Usuario();
            if (docente.ValidarUsuario(int.Parse(Login1.UserName), Login1.Password))
            {
                Docente = docente;
                Response.Redirect("InicioDocente.aspx");
            }
        }
    }
}
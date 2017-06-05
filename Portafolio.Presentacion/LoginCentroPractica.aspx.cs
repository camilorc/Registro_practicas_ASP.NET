using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Portafolio.Negocio;
using System.Web.Security;

namespace Portafolio.Presentacion
{
    public partial class LoginCentroPractica : System.Web.UI.Page
    {


        public CentroPractica Centro
        {
            get
            {
                if (Session["centro"] == null)
                {
                    Session["centro"] = new CentroPractica();
                    
                }
                return (CentroPractica)Session["centro"];

            }
            set
            {
                Session["centro"] = value;
            }

        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginCentroP_Authenticate(object sender, AuthenticateEventArgs e)
        {
            CentroPractica centro = new CentroPractica();
            if (centro.ValidarUsuario(loginCentroP.UserName,loginCentroP.Password))
            {
                Centro = centro;
                Response.Redirect("InicioEmpleador.aspx");
            }
           
        }
    }
}
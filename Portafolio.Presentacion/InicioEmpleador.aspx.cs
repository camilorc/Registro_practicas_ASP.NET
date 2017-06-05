using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Portafolio.Negocio;

namespace WebApplication1
{
    public partial class InicioEmpleador : System.Web.UI.Page
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
            lbl_nom_centro.Text = Centro.NombreCentro;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Acta2.aspx");
        }

        protected void btn_cerrar_Click(object sender, EventArgs e)
        {
            Centro = null;
            Response.Redirect("LoginCentroPractica.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Acta3.aspx");
        }
    }
}
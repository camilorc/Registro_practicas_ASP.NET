using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Portafolio.Negocio;

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
    }
}
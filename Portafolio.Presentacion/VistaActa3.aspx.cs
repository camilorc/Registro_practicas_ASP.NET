using Portafolio.Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Portafolio.Presentacion
{
    public partial class VistaActa3 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

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

        protected void btnCargarDatos_Click(object sender, EventArgs e)
        {
            Practica pra = new Practica();
            pra.BuscarNotas(Alumno.Rut);
            lblNota3.Text = pra.Nota3.ToString();
        }
    }
}
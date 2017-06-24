using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Portafolio.Negocio;

namespace Portafolio.Presentacion
{
    public partial class MiPracticaAlumno : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblArea.Text = Centro.AreaCentro;
            lblNombrePractica.Text = Centro.NombreCentro;
            
             

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
    }
}
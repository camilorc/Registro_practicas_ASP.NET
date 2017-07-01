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
            if (!IsPostBack)
            {
                CentroPractica ce = new CentroPractica();
                ce.LlenarActa1(Alumno.Rut);
                lblArea.Text = ce.AreaCentro;
                lblDepartamento.Text = ce.DepartamentoCentro;
                lblDireccion.Text = ce.DireccionCentro;
                lblFono.Text = ce.Fono.ToString();
                lblMail.Text = ce.Email;
                lblNombrePractica.Text = ce.NombreCentro;
                lblRazon.Text = ce.RazonSocial;
                lblWeb.Text = ce.Web;
            }
            
             

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
        
    }
}
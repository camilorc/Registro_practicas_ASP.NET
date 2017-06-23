using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Portafolio.Negocio;

namespace Portafolio.Presentacion
{
    public partial class MiPerfilDocente : System.Web.UI.Page
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
            if (!IsPostBack) {
                //Llenamos los datos del Docente
                txtNombres.Text = Docente.Nombres;
                txtApellido1.Text = Docente.Apellido1;
                txtApellido2.Text = Docente.Apellido2;
                txtFechaN.Text =  String.Format("{0:d}", Docente.FechaNac);
                txtDireccion.Text = Docente.Direccion;
                txtEmail.Text = Docente.Correo;




            }
            
        }
    }
}
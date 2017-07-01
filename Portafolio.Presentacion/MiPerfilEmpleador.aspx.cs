using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Portafolio.Negocio;

namespace Portafolio.Presentacion
{
    public partial class MiPerfilEmpleador : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //txtNombre.Text = CentroPractica.NombreCentro;
                //txtArea.Text = CentroPractica.AreaCentro;
                //txtDepartamento.Text = CentroPractica.DepartamentoCentro;
                //txtDireccion.Text = CentroPractica.DireccionCentro;
                //txtRazon.Text = CentroPractica.RazonSocial;
                //txtTelefono.Text = CentroPractica.Fono.ToString();
                //txtWeb.Text = CentroPractica.Web;
                //txtEmail.Text = CentroPractica.Email;

            }
        }

        public CentroPractica CentroPractica
        {
            get
            {
                if (Session["centroPractica"] == null)
                {
                    Session["centroPractica"] = new CentroPractica();
                }
                return (CentroPractica)Session["centroPractica"];
            }
            set
            {
                Session["centroPractica"] = value;
            }
        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {
           // if (CentroPractica.EditarCentro(CentroPractica.IdCentro, txtNombre.Text, txtDireccion.Text, 
           //     txtDepartamento.Text, txtArea.Text, txtRazon.Text, txtWeb.Text, int.Parse(txtTelefono.Text), txtEmail.Text))
           //     {
           // 
           //     CentroPractica.NombreCentro = txtNombre.Text;
           //     CentroPractica.DireccionCentro = txtDireccion.Text;
           //     CentroPractica.DepartamentoCentro = txtDepartamento.Text;
           //     CentroPractica.AreaCentro = txtArea.Text;
           //     CentroPractica.RazonSocial = txtRazon.Text;
           //     CentroPractica.Web = txtWeb.Text;
           //     CentroPractica.Fono = int.Parse(txtTelefono.Text);
           //     CentroPractica.Email = txtEmail.Text;
           // }
           // else
           // {
           //     btnEditar.Text = "Editar";
           // }
        }
    }
}

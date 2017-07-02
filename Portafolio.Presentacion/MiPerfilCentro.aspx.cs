using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Portafolio.Negocio;

namespace Portafolio.Presentacion
{
    public partial class MiPerfilCentro : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtArea.Text = Centro.AreaCentro;
                txtDepartamento.Text = Centro.DepartamentoCentro;
                txtDireccion.Text = Centro.DireccionCentro;
                txtEmail.Text = Centro.Email;
                txtNombreCentro.Text = Centro.NombreCentro;
                txtRazon.Text = Centro.RazonSocial;
                txtTelefono.Text = Centro.Fono.ToString();
                txtWeb.Text = Centro.Web;
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

        protected void Editar_Click(object sender, EventArgs e)
        {
            if (Centro.EditarCentro(Centro.IdCentro, txtNombreCentro.Text, txtDireccion.Text, txtDepartamento.Text, txtArea.Text, txtRazon.Text, txtWeb.Text, int.Parse(txtTelefono.Text), txtEmail.Text))
            {
                Centro.NombreCentro = txtNombreCentro.Text;
                Centro.DireccionCentro = txtDireccion.Text;
                Centro.DepartamentoCentro = txtDepartamento.Text;
                Centro.AreaCentro = txtArea.Text;
                Centro.RazonSocial = txtRazon.Text;
                Centro.Web = txtWeb.Text;
                Centro.Fono = int.Parse(txtTelefono.Text);
                Centro.Email = txtEmail.Text;
                lbl_mensaje.Text = "Editado";

            }
            else
            {
                lbl_mensaje.Text = "No se pudo editar";
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Portafolio.Negocio;

namespace WebApplication1
{
    public partial class Acta1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                Usuario usu = new Usuario();
                Practica pra = new Practica();
                CentroPractica cen = new CentroPractica();
                Portafolio.Negocio.Acta1 ac1 = new Portafolio.Negocio.Acta1();

                if (true)
                {
                    usu.Telefono = int.Parse(txtFono.Text);
                    usu.Correo = txtMailAlum.Text;
                    usu.Correo = txtMailJefe.Text;
                    usu.Nombres = txtNomJefe.Text;
                    usu.Nombres = txtNomProf.Text;


                    //usu.Create();
                    lblMensaje.Text = "creada";
                    LimpiarControles();
                }
                else
                {
                    LimpiarControles();
                }

            }
            catch (Exception )
            {
                lblMensaje.Text = "Error al crear";
                LimpiarControles();
            }
        }

        private void LimpiarControles()
        {
            txtCargoJefe.Text = string.Empty;
            txtDepartamento.Text = string.Empty;
            txtDirCentro.Text = string.Empty;
            txtFono.Text = string.Empty;
            txtMailAlum.Text = string.Empty;
            txtMailJefe.Text = string.Empty;
            txtNomJefe.Text = string.Empty;
            txtNomProf.Text = string.Empty;
            txtPracDistan.Text = string.Empty;
            txtTareas.Text = string.Empty;
        }
    }
}
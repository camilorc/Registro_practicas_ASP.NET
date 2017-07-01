using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Portafolio.Negocio;   

namespace Portafolio.Presentacion
{
    public partial class MiPerfilAlumno : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                buscarInfo();
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
        
        protected void btnEditar_Click(object sender, EventArgs e)
        {
            
            if (Alumno.EditarUsuario(Alumno.Rut, txtNacimiento.Text, txtDireccion.Text, int.Parse(txtTelefono.Text),txtCorreo.Text))
            {
                Alumno.Direccion = txtDireccion.Text;
                Alumno.FechaNac = DateTime.Parse(txtNacimiento.Text);
                Alumno.Correo = txtCorreo.Text;
                Alumno.Telefono = int.Parse(txtTelefono.Text);

            }
            else
            {
                btnEditar.Text = "Editar";
            }
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtCorreo.Text = Alumno.Correo;
            txtDireccion.Text = Alumno.Direccion;
            txtNacimiento.Text = Alumno.FechaNac.ToShortDateString();
            txtTelefono.Text = Alumno.Telefono.ToString();
            btnEditar.Text = "Editar";
            btnEditar.Enabled = true;
        }

        protected void buscarInfo()
        {
            lblNombre.Text = Alumno.Nombres + " " + Alumno.Apellido1 + " " + Alumno.Apellido2;
            lblRut.Text = Alumno.Rut + "-" + Alumno.Dv;
            txtCorreo.Text = Alumno.Correo;
            txtDireccion.Text = Alumno.Direccion;
            txtNacimiento.Text = Alumno.FechaNac.ToShortDateString();
            txtTelefono.Text = Alumno.Telefono.ToString();


            Practica pra = new Practica();
            pra.LlenarActa1(Alumno.Rut);
            txtNota3.Text = pra.Nota3.ToString();

        }
    }
}
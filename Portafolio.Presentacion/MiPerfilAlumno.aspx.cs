using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Portafolio.Negocio;

namespace Portafolio.Presentacion
{
    public partial class MiPerfilAlumno : Page
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
            pra.BuscarNotas(Alumno.Rut);
            double nota3 = pra.Nota3;
            txtNota3.Text = nota3.ToString();
            txtFinal.Text = pra.NotaFinal.ToString();

            Negocio.Acta2 ac2 = new Negocio.Acta2();
            ac2.InfoActa2(Alumno.Rut);
            double n1 = ac2.PromedioPersonal;
            double n2 = ac2.PromedioProfesional;
            double notas = ((n1 + n2) / 2);
            txtActa2.Text = notas.ToString();
        }

        protected void btnFoto_Click(object sender, EventArgs e)
        {
           
        }
    }
    
}
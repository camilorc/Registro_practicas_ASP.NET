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
            lblNombre.Text = Alumno.Nombres + " " + Alumno.Apellido1 + " " + Alumno.Apellido2;
            lblRut.Text = Alumno.Rut + "-" + Alumno.Dv;
            txtCorreo.Text = Alumno.Correo;
            txtDireccion.Text = Alumno.Direccion;
            txtNacimiento.Text = Alumno.FechaNac.ToShortDateString();
            txtTelefono.Text = Alumno.Telefono.ToString();
            if (Practica.Nota3==0)
            {
                txtNota3.Text = "No calificado";
            }else
            {
                txtNota3.Text = Practica.Nota3.ToString();
            }
            txtFinal.Text = Practica.NotaFinal.ToString();
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
        
        protected void btnEditar_Click(object sender, EventArgs e)
        {
            Usuario us = new Usuario();
            if (us.EditarUsuario(Alumno.Rut, DateTime.Parse(txtNacimiento.Text), txtDireccion.Text, int.Parse(txtTelefono.Text), txtCorreo.Text))
            {
                btnEditar.Text = "Editado.";
                btnEditar.Enabled = false;
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
    }
}
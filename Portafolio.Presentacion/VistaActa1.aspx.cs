using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft;
using iTextSharp.text.pdf;
using System.IO;
using Portafolio.Negocio;

namespace Portafolio.Presentacion
{
    public partial class VistaActa11 : System.Web.UI.Page
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



        protected void btnCargarDatos_Click(object sender, EventArgs e)
        {
            LblNombreAlumno.Text = Alumno.Nombres +" "+ Alumno.Apellido1 +" "+Alumno.Apellido2;
            lblRutAlumno.Text = Alumno.Rut.ToString();
            lblFechaInicio.Text = Practica.FechaInicio;

        }
    }
}
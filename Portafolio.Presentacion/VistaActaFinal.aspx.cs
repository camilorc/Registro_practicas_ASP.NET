using Oracle.ManagedDataAccess.Client;
using Portafolio.Negocio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Portafolio.Presentacion
{
    public partial class VistaActa1 : System.Web.UI.Page
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

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("InicioAlumno.aspx");
        }

        protected void btnCargar_Click(object sender, EventArgs e)
        {
            //Alumno
            lblNombreAlumno.Text = Alumno.Nombres + " " + Alumno.Apellido1 + " " + Alumno.Apellido2;
            lblRut.Text = Alumno.Rut + "-" + Alumno.Dv;
            lblFecha.Text = DateTime.Now.ToShortDateString();
            lblAnio.Text = DateTime.Now.Year.ToString();

            //Practica
            Practica pra = new Practica();
            pra.LlenarActa1(Alumno.Rut);
            lblNotaFinal.Text = pra.NotaFinal.ToString();
            lblActa3.Text = pra.Nota3.ToString();
            
            Usuario profesor = new Usuario();
            profesor.buscarJefe(pra.RutDocente);
            lblProfesor.Text = profesor.Nombres + " " + profesor.Apellido1 + " " + profesor.Apellido2;
            
            //Carrera
            Carrera carrera = new Carrera();
            carrera.buscarCarrera(Alumno.Rut);
            lblCarrera.Text = carrera.NombreCarrera;

        }
    }
}
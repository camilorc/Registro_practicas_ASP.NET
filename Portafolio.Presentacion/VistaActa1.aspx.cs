using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft;
//using iTextSharp.text.pdf;
using System.IO;
using Portafolio.Negocio;
using Oracle.ManagedDataAccess.Client;
using System.Configuration;

namespace Portafolio.Presentacion
{
    public partial class VistaActa11 : Page
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
        protected void btnCargarDatos_Click(object sender, EventArgs e)
        {
            LblNombreAlumno.Text = Alumno.Nombres +" "+ Alumno.Apellido1 +" "+Alumno.Apellido2;
            lblRutAlumno.Text = Alumno.Rut.ToString();

            CentroPractica ce = new CentroPractica();
            ce.LlenarActa1(Alumno.Rut);
            lblDireccionCentro.Text = ce.DireccionCentro;
            lblDepartamentoCentro.Text = ce.DepartamentoCentro;
            lblNombreCentroPractica.Text = ce.NombreCentro;

            Practica pra = new Practica();
            pra.LlenarActa1(Alumno.Rut);
            lblFechaInicio.Text = pra.FechaInicio.ToString();
            lblFechaTermino.Text = pra.FechaTermino.ToString();
            lblCarrera.Text = pra.Nota3.ToString();
            

            //Carrera
            Carrera carrera = new Carrera();
            carrera.buscarCarrera(Alumno.Rut);
            lblCarrera.Text = carrera.NombreCarrera;


            //Jefe
            Usuario jefe = new Usuario();
            jefe.buscarJefe(pra.RutEmpleador);
            lblNombreJefe.Text = jefe.Nombres + " " + jefe.Apellido1 + " " + jefe.Apellido2;
            lblTelefonoJefe.Text = jefe.Telefono.ToString();
            lblCargoJefe.Text = "Ingeniero Civil";
            lblCorreoJefe.Text = jefe.Correo;

            //Docente 
            Usuario profe = new Usuario();
            profe.buscarProfeRut(Alumno.Rut);
            int profeRut =profe.Rut;

            Usuario profesor = new Usuario();
            profesor.buscarJefe(pra.RutDocente);
            lblProfesorGuia.Text = profesor.Nombres + " " + profesor.Apellido1 + " " + profesor.Apellido2;

            //Acta2
            Negocio.Acta2 a2 = new Negocio.Acta2();
            a2.InfoActa2(Alumno.Rut);
            lblObservaciones.Text = a2.Sugerencias;
            lblTareas.Text = a2.PrincipalesTareas;

        }
        
    }
}
using Portafolio.Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Portafolio.Presentacion
{
    public partial class VistaActa2 : System.Web.UI.Page
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

        protected void btnCargar_Click(object sender, EventArgs e)
        {
            //Alumno
            lblNombreAlumno.Text = Alumno.Nombres + " " + Alumno.Apellido1 + " " + Alumno.Apellido2;
            lblDomicilioAlumno.Text = Alumno.Direccion;
            lblRutAlumno.Text = Alumno.Rut.ToString()+"-"+Alumno.Dv;

            //Practica
            Practica pra = new Practica();
            pra.LlenarActa1(Alumno.Rut);
            lblFechaInicio.Text = pra.FechaInicio;
            lblFechaTermino.Text = pra.FechaTermino;
            lblCantHoras.Text = pra.CantHoras.ToString();

            //Profe
            Usuario profe = new Usuario();
            profe.buscarProfeRut(Alumno.Rut);
            int profeRut = profe.Rut;

            Usuario profesor = new Usuario();
            profesor.buscarJefe(pra.RutDocente);
            lblNombreProfe.Text = profesor.Nombres + " " + profesor.Apellido1 + " " + profesor.Apellido2;
            lblRutProfe.Text = profesor.Rut.ToString();
            lblTelefonoProfe.Text = profesor.Telefono.ToString();
            lblCorreoProfe.Text = profesor.Correo;  


            //institución
            CentroPractica ce = new CentroPractica();
            ce.LlenarActa1(Alumno.Rut);
            lblDireccionEmpresa.Text = ce.DireccionCentro;
            lblNombreEmpresa.Text = ce.NombreCentro;
            lblWebEmpresa.Text = ce.Web;
            lblRazonSocial.Text = ce.RazonSocial;


            //Jefe
            Usuario jefe = new Usuario();
            jefe.buscarJefe(pra.RutEmpleador);
            lblNombreJefe.Text = jefe.Nombres + " " + jefe.Apellido1 + " " + jefe.Apellido2;
            lblTelefonoJefe.Text = jefe.Telefono.ToString();
            lblCorreoJEfe.Text = jefe.Correo;

            //Carrera
            Carrera carrera = new Carrera();
            carrera.buscarCarrera(Alumno.Rut);
            lblCarrera.Text = carrera.NombreCarrera;


    }
}
}
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
    public partial class VistaActa1 : Page
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

            int horas = pra.CantHoras;
            if (horas==480)
            {
                lblSemestre.Text = "5";
                lblLaboral.Text = "X";
            }
            else
            {
                lblSemestre.Text = "8";
                lblProfesional.Text = "X";
            }


            Practica notas = new Practica();
            notas.BuscarNotas(Alumno.Rut);
            lblNotaFinal.Text = notas.NotaFinal.ToString();
            double nota3= notas.Nota3;
            lblActa3.Text = nota3.ToString();

            
            Usuario profesor = new Usuario();
            profesor.buscarJefe(pra.RutDocente);
            lblProfesor.Text = profesor.Nombres + " " + profesor.Apellido1 + " " + profesor.Apellido2;
            
            //Carrera
            Carrera carrera = new Carrera();
            carrera.buscarCarrera(Alumno.Rut);
            lblCarrera.Text = carrera.NombreCarrera;

            Negocio.Acta2 a2 = new Negocio.Acta2();
            a2.InfoActa2(Alumno.Rut);
            string tareas = a2.PrincipalesTareas;
            double nota = a2.PromedioPersonal;
            double nota2 = a2.PromedioProfesional;
            lblActa2.Text = ((nota + nota2) / 2).ToString();

            if (tareas==null)
            {
                lblActa1No.Text = "X";
            }
            else
            {
                lblActa1Si.Text = "X";
            }
            if (nota==null)
            {
                lblActa22No.Text = "X";
                lblActa2No.Text = "X";
            }
            else
            {
                lblActa22Si.Text = "X";
                lblActa2si.Text = "X";
            }
            if (nota3==null || nota3==1)
            {
                lblActa3No.Text = "X";
            }
            else
            {
                lblActa3Si.Text = "X";
            }
            


        }
    }
}
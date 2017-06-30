using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Portafolio.Negocio;

namespace Portafolio.Presentacion
{
    public partial class ActaFinal : System.Web.UI.Page
    {
        public Usuario Docente
        {
            get
            {
                if (Session["docente"] == null)
                {
                    Session["docente"] = new Usuario();

                }
                return (Usuario)Session["docente"];

            }
            set
            {
                Session["docente"] = value;
            }

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarAlumnos();
                CargarDatosDelAlumno();
            }
        }

        private void CargarDatosDelAlumno()
        {
            //Método para cargar los datos del Acta Final
            txtNombreAlumno.Text = DropDownList1.SelectedItem.Text;
            txtRut.Text = DropDownList1.SelectedItem.Value;
            txtProfesorGuia.Text = Docente.Nombres + " " + Docente.Apellido1 + " " + Docente.Apellido2;
            DetallePracticaAlumno alum = new DetallePracticaAlumno();
            if (alum.ObtenerDatos(int.Parse(DropDownList1.SelectedItem.Value)))
            {
                if (alum.TipoPractica == "Profesional")
                {
                    txtProfesional.Text = "X";
                    txtLaboral.Text = "";

                }
                else {
                    txtLaboral.Text = "X";
                    txtProfesional.Text = "";
                }

                txtCarrera.Text = alum.NombreCarrera;
                txtDv.Text = alum.Dv;
                txtInforme.Text = alum.Nota3.ToString();
                double notaCentro = (alum.NotaPersonal + alum.NotaProfesional) / 2;
                txtEmpresa.Text = (notaCentro).ToString();
                txtNotaFinal.Text = (Math.Round(((alum.Nota3 * 0.6) + (notaCentro * 0.4))/10,1)).ToString();
            }
        }

        

        private void CargarAlumnos()
        {
            ListaAsignados lista = new ListaAsignados();
            Practica practica = new Practica();

            foreach (var item in lista.AlumnosAsignados(Docente.Rut))
            {
                if (item.EstadoDetalle == "Aceptado")
                {
                    DropDownList1.Items.Add(
                        new ListItem()
                        {
                            Text = item.Nombres,
                            Value = item.Rut.ToString()

                        }

                    );
                }


            }
        }

        

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            CargarDatosDelAlumno();
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            if (validarFormulario()) {
                Practica practica = new Practica();
                if (practica.cambiarEstado(int.Parse(txtRut.Text),"P") && practica.CambiarNotaFinal(int.Parse(txtRut.Text),double.Parse(txtNotaFinal.Text))) {
                    lblMensaje.Text = "Éxito";

                };
                
            } else {
                lblMensaje.Text = "El alumno debe tener ambas evaluaciones y nota final";
            }
        }

        private bool validarFormulario()
        {
            try
            {
                //Si es igual a 0 , falta la nota, retornar falso
                if (int.Parse(txtInforme.Text) == 0 && int.Parse(txtEmpresa.Text) == 0) {
                    return false;
                } 
                
                return true;
            }
            catch (Exception)
            {

                return false;
            }
        }
    }
}
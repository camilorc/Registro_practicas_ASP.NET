using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Portafolio.Negocio;

namespace Portafolio.Presentacion
{
    public partial class InicioDocente : System.Web.UI.Page
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
            lbl_nom_docente.Text = Docente.Nombres;
            if (!IsPostBack) {
                CargarAlumnos();
            }
        }

        private void CargarAlumnos()
        {
            
            ListaAsignados lista = new ListaAsignados();
            ltv_alumnos.DataSource = lista.AlumnosAsignados(Docente.Rut);
            ltv_alumnos.DataBind();

        }

        protected void Aceptar_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string rut_alumno = btn.CommandArgument;
            

            ListaAsignados lis = new ListaAsignados();

            if (lis.CambiarAsignacionPractica(Docente.Rut, int.Parse(rut_alumno), 1))
            {
                CargarAlumnos();
                lbl_mensaje.Text = "Estado modificado";
            }
            else {
                lbl_mensaje.Text = "Ocurrio un error";
            };
            

        }

        protected void Rechazar_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string rut_alumno = btn.CommandArgument;


            ListaAsignados lis = new ListaAsignados();

            if (lis.CambiarAsignacionPractica(Docente.Rut, int.Parse(rut_alumno), 2))
            {
                CargarAlumnos();
                lbl_mensaje.Text = "Estado modificado";
            }
            else
            {
                lbl_mensaje.Text = "Ocurrio un error";
            };


        }
    }
}
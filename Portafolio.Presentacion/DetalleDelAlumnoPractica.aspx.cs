using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Portafolio.Negocio;

namespace Portafolio.Presentacion
{
    public partial class DetalleDelAlumnoPractica : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                String rut_alumno = Request.Params["rut_alumno"];
                if (rut_alumno != null) {
                    DetallePracticaAlumno alum = new DetallePracticaAlumno();
                    if (alum.ObtenerDatos(int.Parse(rut_alumno))) {
                        lbl_rut.Text = rut_alumno;
                        lbl_nombres.Text = alum.Nombres;
                        lbl_apellido1.Text = alum.Apellido1;
                        lbl_apellido2.Text = alum.Apellido2;
                        lbl_email_alumno.Text = alum.Email;
                        lbl_carrera.Text = alum.NombreCarrera;
                        lbl_centro_practica.Text = alum.NombreCentro;
                        lbl_fono.Text = alum.Fono.ToString();
                        lbl_direccion_centro.Text = alum.DireccionCentro;
                        lbl_fecha_inicio.Text = alum.FechaInicio.ToString();
                        lbl_fecha_termino.Text = alum.FechaTermino.ToString();
                        lbl_tipo_practica.Text = alum.TipoPractica;
                        lbl_email_centro.Text = alum.EmailCentro;
                    }
                    
                }
            }
        }
    }
}
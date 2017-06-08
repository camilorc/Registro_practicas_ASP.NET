using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Portafolio.Negocio;
using Oracle.ManagedDataAccess.Client;
using System.Configuration;

namespace Portafolio.Presentacion
{
    public partial class Acta2 : System.Web.UI.Page
    {
        public int idpracticaparametro { get; set; }
        //Creamos la variable de sesión para identificar el centro de práctica.
        public CentroPractica Centro
        {
            get
            {
                if (Session["centro"] == null)
                {
                    Session["centro"] = new CentroPractica();
                }
                return (CentroPractica)Session["centro"];

            }
            set
            {
                Session["centro"] = value;
            }

        }



        protected void Page_Load(object sender, EventArgs e)
        {
            //Completamos los txt del centro de práctica automaticos de la BD
            txt_nom_emp.Text = Centro.NombreCentro;
            txt_direc_emp.Text = Centro.DireccionCentro;
            txt_razon_emp.Text = Centro.RazonSocial;
            txt_web_emp.Text = Centro.Web;
            txt_fono_emp.Text = Centro.Fono.ToString();
            txt_email_emp.Text = Centro.Email;

            //Cargamos el drop con los alumnos
            if (!IsPostBack)
            {
                foreach (var item in Centro.alumnosEnPractica())
                {
                    ddl_alumnos.Items.Add(
                            new ListItem()
                            {
                                Text = item.Nombres,
                                Value = item.Rut.ToString()
                            }

                        );

                }

            }

            //Cargamos los txt dependiendo el alumno
            Usuario alum = new Usuario()
            {
                Rut = int.Parse(ddl_alumnos.SelectedValue)
            };

            alum.buscarUsuario();
            txt_rut_alum.Text = alum.Rut + " - " + alum.Dv;
            txt_dom_alum.Text = alum.Direccion;
            txt_carr_alum.Text = alum.CarreraNombre;
            idpracticaparametro = alum.Idpractica;
            //Cargamos datos del profe dependiendo el alumno
            int rutDocente = alum.buscarProfeRut(alum.Rut);
            Usuario docente = new Usuario()
            {
                Rut = rutDocente
            };
            docente.buscarUsuario();
            txt_nom_prof.Text = docente.Nombres + " " + docente.Apellido1 + " " + docente.Apellido2;
            txt_rut_prof.Text = docente.Rut + "-" + docente.Dv;
            txt_fono_prof.Text = docente.Telefono.ToString();
            txt_email_prof.Text = docente.Correo;

            //Cargamos datos de la práctica
            Practica prac = new Practica()
            {
                IdPractica = alum.Idpractica
            };

            prac.buscarPractica();

            txt_ini_prac.Text = prac.FechaInicio;
            txt_term_prac.Text = prac.FechaTermino;
            txt_horas_prac.Text = prac.CantHoras.ToString();



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Portafolio.Negocio.Acta2 acta2 = new Negocio.Acta2();
                acta2.PrincipalesTareas = txtTareas.Text;
                acta2.Aportes = txtAportes.Text;
                acta2.Sugerencias = txtSugerencias.Text;
                acta2.PromedioPersonal = int.Parse(txt_prom_personal.Text);
                acta2.PromedioProfesional = int.Parse(txt_prom_prof.Text);

                //Asignamos valores del formulario al Centro de práctica
                CentroPractica cen = new CentroPractica();
                cen.NombreCentro = txt_nom_emp.Text;
                cen.DireccionCentro = txt_direc_emp.Text;
                cen.RazonSocial = txt_razon_emp.Text;
                cen.Web = txt_web_emp.Text;
                cen.Fono = int.Parse(txt_fono_emp.Text);
                cen.Email = txt_email_emp.Text;

                Console.WriteLine("Vmos los datos antes del método: " + cen.RazonSocial);

                if (acta2.IngresarActa2(cen, idpracticaparametro, int.Parse(txt_horas_prac.Text), txt_ini_prac.Text, txt_term_prac.Text))
                {
                    lbl_mensaje.Text = "Éxito";

                }
                else
                {
                    lbl_mensaje.Text = "Ocurrio un error";
                }




            }
            catch (Exception)
            {

                lbl_mensaje.Text = "Ocurrio un error en el catch";
            }






        }

        protected void btn_prom_personal_Click(object sender, EventArgs e)
        {
            int suma = int.Parse(DropDownList1.SelectedValue) + int.Parse(DropDownList2.SelectedValue) + int.Parse(DropDownList3.SelectedValue) +
                int.Parse(DropDownList4.SelectedValue) + int.Parse(DropDownList5.SelectedValue) + int.Parse(DropDownList6.SelectedValue) +
                int.Parse(DropDownList7.SelectedValue) + int.Parse(DropDownList8.SelectedValue) + int.Parse(DropDownList9.SelectedValue) +
                int.Parse(DropDownList10.SelectedValue) + int.Parse(DropDownList11.SelectedValue);

            float promedio = suma / 11;
            txt_prom_personal.Text = promedio.ToString();
            lbl_prom_personal.Text = promedio.ToString();


        }

        protected void btn_prom_profesional_Click(object sender, EventArgs e)
        {
            int suma = int.Parse(DropDownList12.SelectedValue) + int.Parse(DropDownList13.SelectedValue) + int.Parse(DropDownList14.SelectedValue) +
                int.Parse(DropDownList15.SelectedValue) + int.Parse(DropDownList16.SelectedValue) + int.Parse(DropDownList17.SelectedValue) +
                int.Parse(DropDownList18.SelectedValue) + int.Parse(DropDownList19.SelectedValue) + int.Parse(DropDownList20.SelectedValue);

            double promedio = suma / 9;
            txt_prom_prof.Text = promedio.ToString();

        }

        protected void txt_ini_prac_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txt_web_emp_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btn_cerrar_Click(object sender, EventArgs e)
        {
            Centro = null;
            Response.Redirect("LoginCentroPractica.aspx");
        }


    }
}
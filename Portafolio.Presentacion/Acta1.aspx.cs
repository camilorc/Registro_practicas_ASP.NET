using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Portafolio.Negocio;
using Oracle.ManagedDataAccess.Client;
using System.Data;

namespace WebApplication1
{
    public partial class Acta1 : Page
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

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            Practica pra = new Practica();
            Portafolio.Negocio.Acta1 a1 = new Portafolio.Negocio.Acta1();
            CentroPractica ce = new CentroPractica();
            Usuario jefe = new Usuario();

            string value = txtNomJefe.Text;
            char delimiter = ' ';
            string[] substrings = value.Split(delimiter);

            string nom = substrings[0];
            string ap1 = substrings[1];
            string ap2 = substrings[2];

            pra.LlenarActa1(Alumno.Rut);
            string dis = "";
           
            if (idSi.Checked==true)
            {
                dis = "S";
            }
            if (idNo.Checked==true)
            {
                dis = "N";
            }


            if (Alumno.UpdateA1(Alumno.Rut, txtMailAlum.Text) && pra.UpdateA1(pra.IdPractica, dis) && 
                ce.UpdateA1(pra.idCentro, txtDirCentro.Text, txtDepartamento.Text) && 
                jefe.UpdateA1Jefe(int.Parse(pra.RutEmpleador), nom, ap1, ap2, txtMailJefe.Text, int.Parse(txtFono.Text))
                && a1.UpdateA1(pra.idAc1, txtTareas.Text))
            {
                lblMensaje.Text = "Editado";
            }
            else
            {
                lblMensaje.Text = "No se pudo editar";
            }

        }
    }
}
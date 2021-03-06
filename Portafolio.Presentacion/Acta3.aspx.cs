﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Portafolio.Negocio;
using Oracle.ManagedDataAccess.Client;
using System.Configuration;
using System.Data;

namespace WebApplication1
{
    public partial class Acta3 : System.Web.UI.Page
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
            if (!IsPostBack) {
                CargarAlumnos();
            }
        }

        protected void btnEvaluar_Click(object sender, EventArgs e)
        {
            //string oradb = "Data Source=localhost:1521 / XE;User Id=PROYECTO;Password=1234;";
            //OracleConnection conn = new OracleConnection(oradb); // C#
            //conn.Open();
            //OracleCommand cmd = new OracleCommand();
            //cmd.Connection = conn;
            //cmd.CommandText = "UPDATE practica SET nota_final =" + txtNotaFinal.Text + "WHERE idpractica = 83";
            //cmd.CommandType = CommandType.Text;
            //OracleDataReader dr = cmd.ExecuteReader();
            //lblMensaje.Text = "Exito";
            //conn.Dispose();
            //Response.Redirect("Gracias.aspx");


            Practica practica = new Practica();
            if (practica.updateNota3Alumno(int.Parse(DropDownList1.SelectedValue), float.Parse(txtNotaFinal.Text)))
            {
                lblMensaje.Text = "Evaluación realizada con éxito!";

            }
            else {
                lblMensaje.Text = "Ocurrio un error";
            }




        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            try
            {
                double uno = int.Parse(txtNota1.Text) * (0.02);
                double dos = int.Parse(txtNota2.Text) * (0.02);
                double tres = int.Parse(txtNota3.Text) * (0.02);
                double cuatro = int.Parse(txtNota4.Text) * (0.05);
                double cinco = int.Parse(txtNota5.Text) * (0.02);
                double seis = int.Parse(txtNota6.Text) * (0.02);
                double siete = int.Parse(txtNota7.Text) * (0.1);
                double ocho = int.Parse(txtNota8.Text) * (0.05);
                double nueve = int.Parse(txtNota9.Text) * (0.05);
                double diez = int.Parse(txtNota10.Text) * (0.05);
                double once = int.Parse(txtNota11.Text) * (0.05);
                double doce = int.Parse(txtNota12.Text) * (0.2);
                double trece = int.Parse(txtNota13.Text) * (0.1);
                double catorce = int.Parse(txtNota14.Text) * (0.25);
                
                
                double suma = uno + dos + tres + cuatro + cinco + seis + siete + ocho + nueve + diez + once + doce + trece + catorce;
                
                
                txtNotaFinal.Text = suma + "";
             }
                        catch (Exception)
            {
            }
            }

        private void CargarAlumnos()
        {
            ListaAsignados lista = new ListaAsignados();
            Practica practica = new Practica();
            
            foreach (var item in lista.AlumnosAsignados(Docente.Rut))
            {
                if (item.EstadoDetalle == "Aceptado" && !practica.tieneNota3(item.Rut)) {
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
    }
}
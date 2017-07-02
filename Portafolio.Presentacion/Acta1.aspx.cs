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

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            int empleador = 19064142;
            int idCentro = 1;
            int alumno = 19562876;
            int acta1 = 1;
            string oradb = "Data Source=localhost:1521 / XE;User Id=PROYECTO;Password=1234;";
            OracleConnection conn = new OracleConnection(oradb); // C#
            conn.Open();

            String value = txtNomJefe.Text;
            Char delimiter = ' ';
            String[] substrings = value.Split(delimiter);


            OracleCommand cmd = new OracleCommand();
            cmd.Connection = conn;
            cmd.CommandText = "UPDATE CENTRO_PRACTICA SET DIRECCION_CENTRO ='" + txtDirCentro.Text + "', DEPARTAMENTO_CENTRO='" + txtDepartamento.Text + "' WHERE idcentropractica = " + idCentro;
            cmd.CommandType = CommandType.Text;
            OracleDataReader dr = cmd.ExecuteReader();


            OracleCommand emp = new OracleCommand();
            emp.Connection = conn;
            emp.CommandText = "UPDATE USUARIO SET NOMBRES ='" + substrings[0] + "', APELLIDO1='" + substrings[1] + "', APELLIDO2='" + substrings[2] + "', CORREO='" + txtMailJefe.Text + "',TELEFONO='" + txtFono.Text + "' WHERE rut = " + empleador;
            emp.CommandType = CommandType.Text;
            OracleDataReader em = emp.ExecuteReader();

            //OracleCommand pra = new OracleCommand();
            //pra.Connection = conn;
            //pra.CommandText = "UPDATE PRACTICA SET DISTANCIA='" + txtPracDistan.Text + "', DONDE='" + txtDonde.Text + "' WHERE IDPRACTICA = " + alumno;
            //pra.CommandType = CommandType.Text;
            //OracleDataReader pa = pra.ExecuteReader();

            OracleCommand a1 = new OracleCommand();
            a1.Connection = conn;
            a1.CommandText = "UPDATE ACTA1 SET TAREAS='" + txtTareas.Text + "' WHERE IDACTA1 = " + acta1;
            a1.CommandType = CommandType.Text;
            OracleDataReader a = a1.ExecuteReader();

            conn.Dispose();
            lblMensaje.Text = "Todo okis";
        }
    }
}
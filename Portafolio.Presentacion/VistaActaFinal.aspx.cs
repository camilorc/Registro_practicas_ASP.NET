using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Portafolio.Presentacion
{
    public partial class VistaActa1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void btnConsultar_Click(object sender, EventArgs e)
        //{
        //    int rutAlumno = 19562876;
        //    int rutProfe = 8379020;
        //
        //    txtFecha.Text = DateTime.Now.ToShortDateString();
        //    txtAnio.Text = DateTime.Now.Year.ToString();
        //
        //    string oradb = "Data Source=localhost:1521 / XE;User Id=PROYECTO;Password=1234";
        //    OracleConnection conn = new OracleConnection(oradb);  // C#
        //    conn.Open();
        //    OracleCommand cmd = new OracleCommand();
        //    cmd.Connection = conn;
        //    cmd.CommandText = "select * from usuario where rut=" + rutAlumno;
        //    cmd.CommandType = CommandType.Text;
        //    OracleDataReader dr = cmd.ExecuteReader();
        //    txtRut.Text = rutAlumno.ToString();
        //    dr.Read();
        //    String uno = dr.GetString(3);
        //    String dos = dr.GetString(4);
        //    String tres = dr.GetString(5);
        //
        //    String dv = dr.GetString(1);
        //    txtDv.Text = dv;
        //
        //    string carrera = String.Format("{0}", dr[15]);
        //    txtCarrera.Text = carrera;
        //
        //    txtNombreAlumno.Text = uno + " " + dos + " " + tres + ".";
        //
        //
        //    OracleCommand com = new OracleCommand();
        //    com.Connection = conn;
        //    com.CommandText = "Select * from practica where idpractica=" + rutAlumno;
        //    com.CommandType = CommandType.Text;
        //    OracleDataReader od = com.ExecuteReader();
        //    od.Read();
        //
        //    string nFinal = String.Format("{0}", od[10]);
        //    txtNotaFinal.Text = nFinal;
        //
        //    string ac1 = String.Format("{0}", od[11]);
        //    if (ac1 != null)
        //    {
        //        txtActa1Si.Text = "X";
        //    }
        //    else
        //    {
        //        txtActa1No.Text = "X";
        //    }
        //
        //    txtInforme.Text = String.Format("{0}", od[9]);
        //    var cant = String.Format("{0}", od[3]);
        //    if (od.GetInt32(3) == 480)
        //    {
        //        txtLaboral.Text = "X";
        //        txtSemestre.Text = "5";
        //    }
        //    else
        //    {
        //        txtProfesional.Text = "X";
        //        txtSemestre.Text = "8";
        //    }
        //
        //    OracleCommand ac2 = new OracleCommand();
        //    ac2.Connection = conn;
        //    ac2.CommandText = String.Format("select * from ACTA2 where idacta2={0}", od[11]);
        //    var a2 = ac2.ExecuteReader();
        //    a2.Read();
        //    string nota1 = String.Format("{0}", a2[4]);
        //    string nota2 = String.Format("{0}", a2[5]);
        //    double nota = ((double.Parse(nota1) + double.Parse(nota2)) / 2);
        //    txtEmpresa.Text = nota.ToString();
        //
        //    double notFinal = (double.Parse(txtInforme.Text) + nota) / 2;
        //    txtNotaFinal.Text = notFinal.ToString();
        //    if (nota > 1)
        //    {
        //        txtActa2Si.Text = "X";
        //    }
        //    else
        //    {
        //        txtActa2No.Text = "X";
        //    }
        //
        //    if (double.Parse(txtInforme.Text) > 1)
        //    {
        //        txtDigitalSi.Text = "X";
        //    }
        //    else
        //    {
        //        txtDigitalNo.Text = "X";
        //    }
        //
        //    OracleCommand pal = new OracleCommand();
        //    pal.Connection = conn;
        //    pal.CommandText = "SELECT * FROM USUARIO WHERE rut="+rutProfe;
        //    var pro = pal.ExecuteReader();
        //    pro.Read();
        //    
        //    string docente = String.Format("{0}", pro[3]);
        //    string docente1 = String.Format("{0}", pro[4]);
        //    string docente2 = String.Format("{0}", pro[5]);
        //    txtProfesorGuia.Text = docente+" "+ docente1+" "+docente2;
        //    
        //
        //    conn.Dispose();
        //}

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("InicioAlumno.aspx");
        }
    }
}
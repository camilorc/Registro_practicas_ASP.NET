<%@ Page Title="" Language="C#" MasterPageFile="~/DocenteLayout.Master" AutoEventWireup="true" CodeBehind="ActaFinal.aspx.cs" Inherits="Portafolio.Presentacion.ActaFinal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style12
        {
            height: 23px;
            font-size:small;
            } 
        .style13
        {
            height: 23px;
            width: 157px;
        }
        .auto-style1 {
            height: 23px;
            width: 1224px;
            margin-right: 244px;
        }
        .auto-style2 {
            width: 274px;
        }
        .auto-style3 {
            width: 1454px;
        }
        .auto-style4 {
            width: 272px;
        }
        .auto-style5 {
            width: 415px;
        }
        .auto-style6 {
            width: 1962px;
        }
        .auto-style8 {
            width: 79px;
        }
        .auto-style10 {
            width: 303px;
        }
        .auto-style11 {
            width: 1477px;
        }
        .auto-style12 {
            width: 668px;
        }
        .auto-style13 {
            width: 209px;
        }
        .auto-style14 {
            width: 45px;
        }
        .auto-style15 {
            width: 81px;
        }
        .auto-style16 {
            width: 70px;
        }
        .auto-style17 {
            width: 543px;
        }
        .auto-style18 {
            width: 145px;
        }
     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
<table class="auto-style1">
    <tr>
        <td class="auto-style2">
            Nombre Alumno</td>
         <td>
             <asp:TextBox ID="txtNombreAlumno" runat="server" Width="568px" Enabled="False"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            Rut<Rut</td>
         <td>
             <asp:TextBox ID="txtRut" runat="server" Width="126px" Enabled="False"></asp:TextBox>
             -<asp:TextBox ID="txtDv" runat="server" Width="21px" Enabled="False"></asp:TextBox>
             &nbsp;
             </td>
    </tr>
    <tr>
        <td class="auto-style2">
            Fecha<td>
             <asp:TextBox ID="txtFecha" runat="server" Width="209px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Semestre<asp:TextBox ID="txtSemestre" runat="server" Width="39px"></asp:TextBox>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Año<asp:TextBox ID="txtAnio" runat="server" Width="75px"></asp:TextBox>
        </td>
    </tr>
</table>
    <br />
    <br />
    <br />
<table>
    <tr>
        <td class="auto-style4">
            Profesor Guía
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtProfesorGuia" runat="server" Width="570px" Enabled="False"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            Tipo de Práctica</td>
        <td class="auto-style3">
            Profesional<asp:TextBox ID="txtProfesional" runat="server" Width="42px" Enabled="False"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Laboral <asp:TextBox ID="txtLaboral" runat="server" Width="48px" Enabled="False"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            Carrera</td>
        <td class="auto-style3">
            <asp:TextBox ID="txtCarrera" runat="server" Width="567px" Enabled="False"></asp:TextBox>
        </td>
    </tr>
</table>
    <br />
    <br />
    <table>
        <tr>
            <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ENTREGA DOCUMENTO PRÁCTICA PROFESOR GUÍA<br />
            </td>
        </tr>
</table>

<table>
   <tr>
       <td class="auto-style5">ACTA N°1
       </td>
       <td class="auto-style15">
           <asp:TextBox ID="txtActa1Si" runat="server" Width="48px"></asp:TextBox>
       </td>
       <td class="auto-style8">
           SI</td>
       <td class="auto-style16">
           <asp:TextBox ID="txtActa1No" runat="server" Width="48px"></asp:TextBox>
       </td>
       <td class="auto-style10">
           NO</td>
    </tr>
    <tr>
       <td class="auto-style5">
           ACTA N°2</td>
       <td class="auto-style15">
           <asp:TextBox ID="txtActa2Si" runat="server" Width="48px"></asp:TextBox>
       </td>
       <td class="auto-style8">
           SI</td>
       <td class="auto-style16">
           <asp:TextBox ID="txtActa2No" runat="server" Width="48px"></asp:TextBox>
       </td>
       <td class="auto-style10">
           NO</td>
    </tr>
    <tr>
       <td class="auto-style5">
           INFORME DIGITAL MÁS PAUTA DE EVALUACIÓN DEL INFORME</td>
       <td class="auto-style15">
           <asp:TextBox ID="txtDigitalSi" runat="server" Width="48px"></asp:TextBox>
       </td>
       <td class="auto-style8">
           SI</td>
       <td class="auto-style16">
           <asp:TextBox ID="txtDigitalNo" runat="server" Width="48px"></asp:TextBox>
       </td>
       <td class="auto-style10">
           NO</td>
    </tr>
    <tr>
       <td class="auto-style5">
           EVALUACIÓN CENTRO DE PRÁCTICA</td>
       <td class="auto-style15">
           <asp:TextBox ID="txtEvaluacionSi" runat="server" Width="48px"></asp:TextBox>
       </td>
       <td class="auto-style8">
           SI</td>
       <td class="auto-style16">
           <asp:TextBox ID="txtEvaluacionNo" runat="server" Width="48px"></asp:TextBox>
       </td>
       <td class="auto-style10">
           NO</td>
    </tr>
</table>
    <br />
    <br />
<table>
    <tr>
        <td class="auto-style11">
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         La Evaluación Final de Práctica tiene la siguiente ponderación:
        </td>
    </tr>
</table>

<table>
    <tr>
        <td class="auto-style17">
            La evaluación de la Práctica se realizará a través de dos instrumentos llamados<br />
&nbsp;Informe de Práctica y Pauta de Verificación de Cumplimiento de Estándar.
            <br />
            <br />
            La nota obtenida en el informe de práctica corresponderá al 60% de la nota final del
            <br />
            curso. La nota obtenida según la pauta de evaluación entregada por la empresa o
            <br />
            Pauta de Verificación de Cumplimiento de Estándar tendrá una ponderación de un
            <br />
            40% de la nota final.
        </td>
        <td class="auto-style12">
            <table>
                <tr>
                    <td class="auto-style18">
                        Nota obtenida en el informe 
                        <br />
                        de práctica
                    </td>
                    <td class="auto-style14">

                        60%</td>
                    <td class="auto-style13">

                        <asp:TextBox ID="txtInforme" runat="server" Height="58px" Width="51px" Enabled="False"></asp:TextBox>

                    </td>
                </tr>
                 <tr>
                    <td class="auto-style18">

                        Pauta de evaluación
                        <br />
                        entregada por la empresa</td>
                    <td class="auto-style14">

                        40%</td>
                    <td class="auto-style13">

                        <asp:TextBox ID="txtEmpresa" runat="server" Height="38px" Width="50px" Enabled="False"></asp:TextBox>

                    </td>
                </tr>
                 <tr>
                    <td class="auto-style18">

                        NOTA FINAL</td>
                    <td class="auto-style14">

                    </td>
                    <td class="auto-style13">

                        <asp:TextBox ID="txtNotaFinal" runat="server" Height="43px" Enabled="False"></asp:TextBox>

                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
    <br />
&nbsp;
        <asp:Button ID="btnEnviar" runat="server" OnClick="btnEnviar_Click" Text="Enviar" />
        <asp:Label ID="lblMensaje" runat="server" Text="Label"></asp:Label>
    </div>
</asp:Content>

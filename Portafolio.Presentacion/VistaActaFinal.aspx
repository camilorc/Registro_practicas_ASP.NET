<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="VistaActaFinal.aspx.cs" Inherits="Portafolio.Presentacion.VistaActa1" %>
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
            width: 1604px;
            margin-right: 244px;
        }
        .auto-style2 {
            width: 274px;
        }
        .auto-style3 {
            width: 1844px;
        }
        .auto-style4 {
            width: 407px;
        }
        .auto-style5 {
            width: 448px;
        }
        .auto-style6 {
            width: 1962px;
        }
        .auto-style11 {
            width: 1477px;
        }
        .auto-style13 {
            width: 167px;
        }
        .auto-style15 {
            width: 75px;
        }
        .auto-style16 {
            width: 56px;
        }
        .auto-style17 {
            width: 64px;
        }
        .auto-style18 {
            width: 547px;
        }
        .auto-style19 {
            width: 485px;
        }
        .auto-style20 {
            width: 466px;
        }
     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <asp:Button ID="btnConsultar" runat="server" Text="Consultar" OnClick="btnConsultar_Click" />
    <br />
    <br />
    <br />

    <table class="auto-style1">
    <tr>
        <td class="auto-style2">
            Nombre Alumno</td>
         <td>
             <asp:TextBox ID="txtNombreAlumno" runat="server" Width="805px" ReadOnly="true"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            Rut<Rut</td>
         <td>
             <asp:TextBox ID="txtRut" runat="server" Width="148px" ReadOnly="true"></asp:TextBox>
             -<asp:TextBox ID="txtDv" runat="server" Width="18px" ReadOnly="true"></asp:TextBox>
             <asp:Button ID="btnBuscarAlumno" runat="server" Text="Buscar" />
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            Fecha
         <td>
             <asp:TextBox ID="txtFecha" runat="server" Width="241px" ReadOnly="true"></asp:TextBox>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Semestre<asp:TextBox ID="txtSemestre" runat="server" ReadOnly="true"></asp:TextBox>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Año<asp:TextBox ID="txtAnio" runat="server" ReadOnly="true"></asp:TextBox>
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
            <asp:TextBox ID="txtProfesorGuia" runat="server" Width="906px" ReadOnly="true"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            Tipo de Práctica</td>
        <td class="auto-style3">
            Profesional<asp:TextBox ID="txtProfesional" runat="server" Width="34px" ReadOnly="true"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Laboral<asp:TextBox ID="txtLaboral" runat="server" Width="40px" ReadOnly="true"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            Carrera</td>
        <td class="auto-style3">
            <asp:TextBox ID="txtCarrera" runat="server" Width="905px" ReadOnly="true"></asp:TextBox>
        </td>
    </tr>
</table>
    <br />
    <br />
    <table>
        <tr>
            <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ENTREGA DOCUMENTO PRÁCTICA PROFESOR GUÍA</td>
        </tr>
</table>

<table>
   <tr>
       <td class="auto-style5">ACTA N°1
       </td>
       <td class="auto-style15">
           <asp:TextBox ID="txtActa1Si" runat="server" Width="48px" ReadOnly="true"></asp:TextBox>
       </td>
       <td class="auto-style16">
           SI</td>
       <td class="auto-style17">
           <asp:TextBox ID="txtActa1No" runat="server" Width="48px" ReadOnly="true"></asp:TextBox>
       </td>
       <td class="auto-style20">
           NO</td>
    </tr>
    <tr>
       <td class="auto-style5">
           ACTA N°2</td>
       <td class="auto-style15">
           <asp:TextBox ID="txtActa2Si" runat="server" Width="48px" ReadOnly="true"></asp:TextBox>
       </td>
       <td class="auto-style16">
           SI</td>
       <td class="auto-style17">
           <asp:TextBox ID="txtActa2No" runat="server" Width="48px" ReadOnly="true"></asp:TextBox>
       </td>
       <td class="auto-style20">
           NO</td>
    </tr>
    <tr>
       <td class="auto-style5">
           INFORME DIGITAL MÁS PAUTA DE EVALUACIÓN DEL INFORME</td>
       <td class="auto-style15">
           <asp:TextBox ID="txtDigitalSi" runat="server" Width="48px" ReadOnly="true"></asp:TextBox>
       </td>
       <td class="auto-style16">
           SI</td>
       <td class="auto-style17">
           <asp:TextBox ID="txtDigitalNo" runat="server" Width="48px" ReadOnly="true"></asp:TextBox>
       </td>
       <td class="auto-style20">
           NO</td>
    </tr>
    <tr>
       <td class="auto-style5">
           EVALUACIÓN CENTRO DE PRÁCTICA</td>
       <td class="auto-style15">
           <asp:TextBox ID="txtEvaluacionSi" runat="server" Width="48px" ReadOnly="true"></asp:TextBox>
       </td>
       <td class="auto-style16">
           SI</td>
       <td class="auto-style17">
           <asp:TextBox ID="txtEvaluacionNo" runat="server" Width="48px" ReadOnly="true"></asp:TextBox>
       </td>
       <td class="auto-style20">
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
        <td class="auto-style18">
             evaluación de la Práctica se realizará a través de dos instrumentos llamados<br />
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
        <td class="auto-style19">
            <table>
                <tr>
                    <td>
                        Nota obtenida en el informe 
                        <br />
                        de práctica
                    </td>
                    <td class="auto-style17">

                        60%</td>
                    <td class="auto-style13">

                        <asp:TextBox ID="txtInforme" runat="server" Height="63px" Width="59px" ReadOnly="true"></asp:TextBox>

                    </td>
                </tr>
                 <tr>
                    <td>

                        Pauta de evaluación
                        <br />
                        entregada por la empresa</td>
                    <td class="auto-style17">

                        40%</td>
                    <td class="auto-style13">

                        <asp:TextBox ID="txtEmpresa" runat="server" Height="55px" Width="59px" ReadOnly="true"></asp:TextBox>

                    </td>
                </tr>
                 <tr>
                    <td>

                        NOTA FINAL</td>
                    <td class="auto-style17">

                    </td>
                    <td class="auto-style13">

                        <asp:TextBox ID="txtNotaFinal" runat="server" Height="43px" ReadOnly="true"></asp:TextBox>

                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
    <br />
    <br />
&nbsp;

</asp:Content>

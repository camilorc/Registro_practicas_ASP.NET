<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Acta1.aspx.cs" Inherits="WebApplication1.Acta1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Dirección Centro Práctica"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDirCentro" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Departamento en el que realizará su práctica"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDepartamento" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Nombre jefe directo"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtNomJefe" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Cargo jefe directo"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCargoJefe" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Correo Jefe"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtMailJefe" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Teléfono"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtFono" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Nombre profesor guía"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtNomProf" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Correo Alumno"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtMailAlum" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Práctica a distancia"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPracDistan" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label10" runat="server" Text="Principales tareas a desarrollar"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtTareas" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />
                </td>
            <td>

                <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>

            </td>
        </tr>
    </table>
</asp:Content>

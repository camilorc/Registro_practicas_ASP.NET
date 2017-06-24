<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MiPerfilAlumno.aspx.cs" Inherits="Portafolio.Presentacion.MiPerfilAlumno" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 998px;
            height: 355px;
            
        }
        .auto-style6 {
            width: 429px;
            height: 224px;
        }
        .auto-style7 {
            height: 224px;
        }
        .auto-style9 {
            margin-left: 50px;
            margin-top: 29px;
        }
        .auto-style10 {
            width: 429px;
        }
        .auto-style11 {
            color: #0000FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel3" runat="server">
        <asp:Panel ID="Panel4" runat="server" Width="999px">
            <table class="auto-style4">
                <tr>
                    <td class="auto-style10">

                    </td>
                    <td>

                    </td>
                    <td>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">

                        <asp:Image ID="Image1" runat="server" Height="192px" Width="332px" BorderColor="blue" BorderWidth="10px" CssClass="auto-style9"/>

                    </td>
                    <td class="auto-style7">

                        <asp:Label ID="lblNombre" runat="server" Text="Label" Height="37px" Width="318px" Font-Size="X-Large" Font-Bold="true" ForeColor="DarkBlue"></asp:Label>

                        <br />
                        <asp:Label ID="lblRut" runat="server" Font-Size="Medium" Height="44px" Text="Label" Width="318px" ForeColor="LightBlue" Font-Bold="true"></asp:Label>

                    </td>
                    <td class="auto-style7">

                    </td>
                </tr>
                 <tr>
                    <td class="auto-style10">

                        <asp:Button ID="btnEditar" runat="server" Text="Editar" OnClick="btnEditar_Click" />
                        <br />
                        <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" OnClick="btnLimpiar_Click" />

                    </td>
                    <td>

                        <asp:Label ID="Label3" runat="server" Text="Fecha Nacimiento"></asp:Label>
&nbsp;
                        <asp:TextBox ID="txtNacimiento" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="Dirección"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="Telefono"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
                        <br />
                        Correo&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
                        <br />

                        <br />
                        <br />

                    </td>
                    <td>

                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label4" runat="server" Text="Mis Notas" Font-Size="Medium" ForeColor="LightBlue"></asp:Label>
                        &nbsp;&nbsp;<span class="auto-style11">&nbsp;</span>&nbsp;<asp:Label ID="Label9" runat="server" ForeColor="Blue" Text="Empleador"></asp:Label>
                        &nbsp;<asp:TextBox ID="txtActa2" runat="server" Height="70px" Width="95px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Informe" ForeColor="Blue"></asp:Label>
                        &nbsp;&nbsp;<asp:TextBox ID="txtNota3" runat="server" Height="70px" Width="95px"></asp:TextBox>
                        <asp:Label ID="Label5" ForeColor="lightBlue" runat="server" Font-Size="Small" Text="Nota Final"></asp:Label>
&nbsp;
                        <asp:TextBox ID="txtFinal" runat="server" Height="70px" Width="95px"></asp:TextBox>
                    </td>
                    <td></td>
                </tr>
                 
            </table>
            
        </asp:Panel>
    </asp:Panel>
</asp:Content>

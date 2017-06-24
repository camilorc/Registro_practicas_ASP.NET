<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MiPracticaAlumno.aspx.cs" Inherits="Portafolio.Presentacion.MiPracticaAlumno" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:Panel ID="Panel3" runat="server">
        <table>
            <tr>
                <td>
                    <asp:Label ID="lblNombrePractica" runat="server" Text="" Font-Size="X-Large" ForeColor="Blue"></asp:Label>
                    <br />
                    <asp:Label ID="lblRazon" runat="server" ForeColor="LightBlue" Text="" Font-Size="Larger"></asp:Label>
                    <br />
                    <asp:Label ID="lblDireccion" runat="server" Text="" ForeColor="LightBlue"></asp:Label>
                    <br />
                    <asp:Label ID="lblDepartamento" runat="server" Text="" ForeColor="LightBlue"></asp:Label>
                    <br />
                    <asp:Label ID="lblArea" runat="server" Text="" ForeColor="LightBlue"></asp:Label>
                    <br />                                       
                    <asp:Label ID="lblWeb" runat="server" Text="" ForeColor="LightBlue"></asp:Label>
                    <br />                                      
                    <asp:Label ID="lblFono" runat="server" Text="" ForeColor="LightBlue"></asp:Label>
                    <br />                                        
                    <asp:Label ID="lblMail" runat="server" Text="" ForeColor="LightBlue"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

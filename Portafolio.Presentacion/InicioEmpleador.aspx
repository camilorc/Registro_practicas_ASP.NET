<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="InicioEmpleador.aspx.cs" Inherits="WebApplication1.InicioEmpleador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 974px;
        }
        .auto-style2 {
            width: 158px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
       <tr>
           <td class="auto-style1">
               <br />
               <br />
           </td>
           <td>
           </td>
       </tr>
       <tr>
           <td class="auto-style1">
               <asp:Panel ID="Panel2" runat="server" Height="519px" Width="753px" BackColor="#FFFFCC" BorderColor="Blue" BorderStyle="Solid" Enabled="False" ForeColor="Black">
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table style="width:100%;">
                       <tr>
                           <td class="auto-style2">Bienvenido(a)</td>
                           <td>
                               <asp:Label ID="lbl_nom_centro" runat="server" Text="Label"></asp:Label>
                           </td>
                           <td>
                               <asp:Button ID="btn_cerrar" runat="server" OnClick="btn_cerrar_Click" Text="Cerrar Sesión" />
                           </td>
                       </tr>
                   </table>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:Panel>
           </td>
           <td>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Button ID="Button1" runat="server" BackColor="#996633" BorderColor="#996633" BorderStyle="Solid" ForeColor="White" Text="Evaluar" Font-Size="X-Large" Height="133px" OnClick="Button1_Click1" PostBackUrl="~/Acta2.aspx" Width="265px" />
               <asp:Button ID="Button2" runat="server" Text="Acta 3" OnClick="Button2_Click" />
           </td>
       </tr>
       <tr>
           <td class="auto-style1">
               <br />
               <br />
           </td>
           <td>
               <br />
               <br />
               <br />
           </td>
       </tr>
   </table>
    <br />
    
            
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Gracias.aspx.cs" Inherits="WebApplication1.Gracias" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style12
    {
        height: 23px;
    } 
    .style13
    {
        height: 23px;
        width: 157px;
    }
        .auto-style1 {
            width: 100%;
            height: 900px;
        }
        .auto-style2 {
            height: 444px;
            width: 157px;
        }
        .auto-style3 {
            height: 444px;
        }
        .auto-style4 {
            height: 132px;
            width: 157px;
        }
        .auto-style5 {
            height: 132px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table class="auto-style1">
      <tr>
          <td class="auto-style2" >

              <br />
              <br />

            <asp:Image ID="Image3" runat="server" ImageUrl="~/Imagenes/GraciasASSS.jpg" Height="250px" Width="780px"/>
          </td>
          <td class="auto-style3">

                &nbsp;&nbsp;

                <asp:Label ID="Label1" runat="server" Text="Por ser parte de Prácticas de" Font-Size="XX-Large" ></asp:Label>

                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <asp:Image ID="Image5" ImageUrl="~/Imagenes/logoDuoc.png" runat="server" Height="166px" Width="618px" />

                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Y ayudarnos a FORMAR NUESTROS" Font-Size="XX-Large"></asp:Label>

          </td>
      </tr>
        <tr>
          <td class="auto-style4" >
                </td>
          <td class="auto-style5">
                <asp:Image ID="Image4" runat="server" ImageUrl="~/Imagenes/especialistas.jpg" Height="286px" Width="550px " />
          </td>
      </tr>
    </table>
    


</asp:Content>

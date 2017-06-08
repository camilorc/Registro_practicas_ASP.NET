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
    <br />
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <ul class="nav nav-pills">
                  <li role="presentation" class="active"><a href="InicioEmpleador.aspx">Home</a></li>
                  <li role="presentation"><a href="#" runat="server" onserverclick="Button1_Click1">Evaluar</a></li>
                  <li role="presentation"><a href="#" runat="server" onserverclick="btn_cerrar_Click">Cerrar Sesión</a></li>
                </ul>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">
                <h2>Bienvenido(a) <asp:Label ID="lbl_nom_centro" runat="server" Text="Label"></asp:Label></h2>
 
            </div>
        </div>
    </div>
      
</asp:Content>

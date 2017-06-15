<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="InicioDocente.aspx.cs" Inherits="Portafolio.Presentacion.InicioDocente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <ul class="nav nav-pills">
                  <li role="presentation" class="active"><a href="InicioDocente.aspx">Home</a></li>
                  <li role="presentation"><a href="#" >Evaluar</a></li>
                  <li role="presentation"><a href="#">Cerrar Sesión</a></li>
                </ul>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">
                <h2>Bienvenido(a) <asp:Label ID="lbl_nom_docente" runat="server" Text="Label"></asp:Label></h2>
 
            </div>
        </div>
    </div>
</asp:Content>

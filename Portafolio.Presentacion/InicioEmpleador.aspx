<%@ Page Title="" Language="C#" MasterPageFile="~/Empleado.Master" AutoEventWireup="true" CodeBehind="InicioEmpleador.aspx.cs" Inherits="WebApplication1.InicioEmpleador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 974px;
        }
        <style type="text/css" >
        body
        {
         background: url("Imagenes/") no-repeat center center;
         -webkit-background-size: cover;
         -moz-background-size: cover;
         -o-background-size: cover;
         -background-size: cover;
        }
        .style2
        {
            width: 6866px;
            height: 80px;
        }
        .style9
        {
            height: 42px;
            width: 6866px;
        }
        .style11
        {
            height: 4px;
            width: 6866px;
        }
        
        #header
        {
            margin:auto;
            width:800px;
            font-family:Arial, Helvetica, Sans-Serif;
        }
        ul, ol
        {
            list-style:none;
            height: 48px;
            width: 786px;
        }
        .nav>li
        {
            float:left;
        }
        .nav li a 
        {
            background-color:lightblue;
            color: blue;
            font-weight:bold;
            text-decoration:none;
            padding:10px 12px;
            display:block;
            width: 120px;
        }
        .nav li a:haver
        {
            background-color:Purple;
        }
        .nav li ul {
			display:none;
			position:absolute;
			min-width:140px;
		}
		.nav li:hover > ul {
			display:block;
		}
		.nav li ul li {
			position:relative;
		}
		.nav li ul li ul {
			right:-140px;
			top:0px;
		}
        .auto-style1 {
            left: -2px;
            top: -1px;
            background-color:lightblue;
        }
        .auto-style3 {
            left: 0px;
            top: 0px;
            width: 188px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
            <div class="row">
            <div class="col-md-6">
                <h2>Bienvenido(a) <asp:Label ID="lbl_nom_centro" runat="server" Text="Label" ForeColor="Blue"></asp:Label></h2>
                <p>&nbsp;</p>
 
            </div>
        </div>

      
</asp:Content>

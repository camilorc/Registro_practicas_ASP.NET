<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="GestorDocumentacion.aspx.cs" Inherits="Portafolio.Presentacion.GestorDocumentacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <p>
        <asp:ImageButton ID="btnActa1" runat="server" Height="80px"
ImageUrl="~/Imagenes/acta1.jpg" Width="80px" OnClick="btnActa1_Click" />
       <div >
		<a href="Archivo/.ACTA1.docx" target="_blank">Acta 1</a>
	</div>
    <p>
    </p>
</asp:Content>

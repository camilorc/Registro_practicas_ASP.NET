<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="VistaActa1.aspx.cs" Inherits="Portafolio.Presentacion.VistaActa11" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
	<META HTTP-EQUIV="CONTENT-TYPE" CONTENT="text/html; charset=utf-8">
	<TITLE></TITLE>
	<META NAME="GENERATOR" CONTENT="LibreOffice 4.1.6.2 (Linux)">
	<META NAME="AUTHOR" CONTENT="saceituno">
	<META NAME="CREATED" CONTENT="20160229;12900000000000">
	<META NAME="CHANGEDBY" CONTENT="Christian Lazcano">
	<META NAME="CHANGED" CONTENT="20160229;40900000000000">
	<META NAME="AppVersion" CONTENT="15.0000">
	<META NAME="DocSecurity" CONTENT="0">
	<META NAME="HyperlinksChanged" CONTENT="false">
	<META NAME="LinksUpToDate" CONTENT="false">
	<META NAME="ScaleCrop" CONTENT="false">
	<META NAME="ShareDoc" CONTENT="false">
	<STYLE TYPE="text/css">
	<!--
		@page { size: 8.5in 11in; margin-left: 1.18in; margin-right: 1.18in; margin-top: 0.49in; margin-bottom: 0.89in }
		P { margin-bottom: 0.08in; direction: ltr; widows: 2; orphans: 2 }
	    .auto-style5 {
            font-family: "Arial Narrow", serif;
            font-size: small;
            margin-bottom: 0.14in;
        }
        .auto-style6 {
            float: left;
            width: 1.76in;
            height: 0.29in;
        }
        -->
	</STYLE>
    <script language="Javascript">

  function imprSelec(paraimprimir)
  {
      var ficha = document.getElementById(paraimprimir);
  var ventimp = window.open(' ', '_blank');
  ventimp.document.write( ficha.innerHTML );
  ventimp.document.close();
  var css = ventimp.document.createElement("link");
css.setAttribute("href", "tuhojadeeestilos.css");
css.setAttribute("rel", "stylesheet");
css.setAttribute("type", "text/css");
ventimp.document.head.appendChild(css);
  ventimp.print( );
  ventimp.close();
  }

</script> 
</HEAD>
<BODY>
    <a href="javascript:imprSelec('paraimprimir')">Imprimir</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:HyperLink ID="hyperlink1" NavigateUrl="~/Archivo/ACTA1.pdf" Text="descargar" Target="_new" runat="server"/>
    <br />
    <br />
    <br />
    <asp:Button ID="btnCargarDatos" runat="server" Text="Cargar Datos" OnClick="btnCargarDatos_Click" />
    <div id="paraimprimir">
<P  STYLE="margin-left: 1.48in; text-indent: 0.49in; margin-bottom: 0in">
<FONT FACE="Arial Narrow, serif"><FONT SIZE=3><B>SUPERVISIÓN DE
PRÁCTICA</B></FONT></FONT></P>
<P ALIGN=CENTER STYLE="margin-bottom: 0,10in"><FONT FACE="Arial Narrow, serif"><FONT SIZE=3><B>ACTA
N°1</B></FONT></FONT></P>
<P STYLE="margin-bottom: 0in"><A NAME="_GoBack"></A><BR>
</P>
<P STYLE="margin-bottom: 0in"><BR>
</P>
<TABLE  WIDTH=673 CELLPADDING=7 CELLSPACING=0 >
	<COL WIDTH=177>
	<COL WIDTH=24>
	<COL WIDTH=62>
	<COL WIDTH=109>
	<COL WIDTH=130>
	<COL WIDTH=33>
	<COL WIDTH=39>
	<TR VALIGN=TOP>
		<TD WIDTH=177 HEIGHT=3 STYLE="border: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0.08in; padding-right: 0.08in">
			<P><FONT FACE="Arial Narrow, serif"><FONT SIZE=3>Nombre del Alumno</FONT></FONT></P>
		</TD>
		<TD COLSPAN=6 WIDTH=466 STYLE="border: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0.08in; padding-right: 0.08in">
			<P><BR>
			    <asp:Label ID="LblNombreAlumno" runat="server" Text=""></asp:Label>
			</P>
		</TD>
	</TR>
	<TR VALIGN=TOP>
		<TD WIDTH=177 HEIGHT=4 STYLE="border: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0.08in; padding-right: 0.08in">
			<P><FONT FACE="Arial Narrow, serif"><FONT SIZE=3>Rut del Alumno</FONT></FONT></P>
		</TD>
		<TD COLSPAN=6 WIDTH=466 STYLE="border: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0.08in; padding-right: 0.08in">
			<P><BR>
			    <asp:Label ID="lblRutAlumno" runat="server" Text=""></asp:Label>
			</P>
		</TD>
	</TR>
	<TR VALIGN=TOP>
		<TD WIDTH=177 HEIGHT=4 STYLE="border: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0.08in; padding-right: 0.08in">
			<P><FONT FACE="Arial Narrow, serif"><FONT SIZE=3>Carrera</FONT></FONT></P>
		</TD>
		<TD COLSPAN=6 WIDTH=466 STYLE="border: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0.08in; padding-right: 0.08in">
			<P>
                <asp:Label ID="lblCarrera" runat="server" Text=""></asp:Label>
                <BR>
			</P>
		</TD>
	</TR>
	<TR VALIGN=TOP>
		<TD WIDTH=177 HEIGHT=4 STYLE="border: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0.08in; padding-right: 0.08in">
			<P><FONT FACE="Arial Narrow, serif"><FONT SIZE=3>Fecha  Inicio</FONT></FONT></P>
		</TD>
		<TD COLSPAN=2 WIDTH=99 STYLE="border: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0.08in; padding-right: 0.08in">
			<P><BR>
			    <asp:Label ID="lblFechaInicio" runat="server" Text=""></asp:Label>
			</P>
		</TD>
		<TD WIDTH=109 STYLE="border: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0.08in; padding-right: 0.08in">
			<P><FONT FACE="Arial Narrow, serif"><FONT SIZE=3>Fecha Término</FONT></FONT></P>
		</TD>
		<TD COLSPAN=3 WIDTH=230 STYLE="border: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0.08in; padding-right: 0.08in">
			<P><BR>
			    <asp:Label ID="lblFechaTermino" runat="server" Text=""></asp:Label>
			</P>
		</TD>
	</TR>
	<TR VALIGN=TOP>
		<TD WIDTH=177 HEIGHT=4 STYLE="border: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0.08in; padding-right: 0.08in">
			<P><FONT FACE="Arial Narrow, serif"><FONT SIZE=3>Nombre del Centro
			de Práctica</FONT></FONT></P>
		</TD>
		<TD COLSPAN=6 WIDTH=466 STYLE="border: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0.08in; padding-right: 0.08in">
			<P><BR>
			    <asp:Label ID="lblNombreCentroPractica" runat="server" Text=""></asp:Label>
			</P>
		</TD>
	</TR>
	<TR VALIGN=TOP>
		<TD WIDTH=177 HEIGHT=4 STYLE="border: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0.08in; padding-right: 0.08in">
			<P><FONT FACE="Arial Narrow, serif"><FONT SIZE=3>Dirección Centro
			Práctica</FONT></FONT></P>
		</TD>
		<TD COLSPAN=6 WIDTH=466 STYLE="border: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0.08in; padding-right: 0.08in">
			<P><BR>
			    <asp:Label ID="lblDireccionCentro" runat="server" Text=""></asp:Label>
			</P>
		</TD>
	</TR>
	<TR VALIGN=TOP>
		<TD WIDTH=177 HEIGHT=4 STYLE="border: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0.08in; padding-right: 0.08in">
			<P><FONT FACE="Arial Narrow, serif"><FONT SIZE=3>Departamento en
			el que Realizará su Práctica</FONT></FONT></P>
		</TD>
		<TD COLSPAN=6 WIDTH=466 STYLE="border: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0.08in; padding-right: 0.08in">
			<P><BR>
			    <asp:Label ID="lblDepartamentoCentro" runat="server" Text=""></asp:Label>
			</P>
		</TD>
	</TR>
	<TR VALIGN=TOP>
		<TD WIDTH=177 HEIGHT=4 STYLE="border: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0.08in; padding-right: 0.08in">
			<P><FONT FACE="Arial Narrow, serif"><FONT SIZE=3>Nombre Jefe
			Directo</FONT></FONT></P>
		</TD>
		<TD COLSPAN=6 WIDTH=466 STYLE="border: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0.08in; padding-right: 0.08in">
			<P>
                <asp:Label ID="lblNombreJefe" runat="server" Text=""></asp:Label>
                <BR>
			</P>
		</TD>
	</TR>
	<TR VALIGN=TOP>
		<TD WIDTH=177 HEIGHT=4 STYLE="border: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0.08in; padding-right: 0.08in">
			<P><FONT FACE="Arial Narrow, serif"><FONT SIZE=3>Cargo Jefe
			Directo</FONT></FONT></P>
		</TD>
		<TD COLSPAN=6 WIDTH=466 STYLE="border: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0.08in; padding-right: 0.08in">
			<P><BR>
			    <asp:Label ID="lblCargoJefe" runat="server" Text=""></asp:Label>
			</P>
		</TD>
	</TR>
	<TR VALIGN=TOP>
		<TD WIDTH=177 HEIGHT=4 STYLE="border: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0.08in; padding-right: 0.08in">
			<P><FONT FACE="Arial Narrow, serif"><FONT SIZE=3>Contacto Correo</FONT></FONT></P>
		</TD>
		<TD COLSPAN=6 WIDTH=466 STYLE="border: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0.08in; padding-right: 0.08in">
			<P><BR>
			    <asp:Label ID="lblCorreoJefe" runat="server" Text=""></asp:Label>
			</P>
		</TD>
	</TR>
	<TR VALIGN=TOP>
		<TD WIDTH=177 HEIGHT=4 STYLE="border: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0.08in; padding-right: 0.08in">
			<P><FONT FACE="Arial Narrow, serif"><FONT SIZE=3>Contacto Teléfono</FONT></FONT></P>
		</TD>
		<TD COLSPAN=6 WIDTH=466 STYLE="border: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0.08in; padding-right: 0.08in">
			<P><BR>
			    <asp:Label ID="lblTelefonoJefe" runat="server" Text=""></asp:Label>
			</P>
		</TD>
	</TR>
	<TR VALIGN=TOP>
		<TD WIDTH=177 HEIGHT=4 STYLE="border: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0.08in; padding-right: 0.08in">
			<P><FONT FACE="Arial Narrow, serif"><FONT SIZE=3>Nombre Profesor
			Guía</FONT></FONT></P>
		</TD>
		<TD COLSPAN=6 WIDTH=466 STYLE="border: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0.08in; padding-right: 0.08in">
			<P><BR>
			    <asp:Label ID="lblProfesorGuia" runat="server" Text=""></asp:Label>
			</P>
		</TD>
	</TR>
	<TR VALIGN=TOP>
		<TD WIDTH=177 HEIGHT=3 STYLE="border: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0.08in; padding-right: 0.08in">
			<P><FONT FACE="Arial Narrow, serif"><FONT SIZE=3>Práctica a
			Distancia</FONT></FONT></P>
		</TD>
		<TD WIDTH=24 STYLE="border-top: 1px solid #00000a; border-bottom: 1px solid #00000a; border-left: 1px solid #00000a; border-right: 1.00pt solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0.08in; padding-right: 0.08in">
			<P>         
			    <asp:Label ID="lblDondeSi" runat="server" Text=""></asp:Label>
			</P>
		</TD>
		<TD COLSPAN=3 WIDTH=328 STYLE="border-top: 1px solid #00000a; border-bottom: 1px solid #00000a; border-left: 1.00pt solid #00000a; border-right: 1.00pt solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0.08in; padding-right: 0.08in">
			<P><FONT FACE="Arial Narrow, serif"><FONT SIZE=3>Sí, Dónde</FONT></FONT></P>
		</TD>
		<TD WIDTH=33 STYLE="border-top: 1px solid #00000a; border-bottom: 1px solid #00000a; border-left: 1.00pt solid #00000a; border-right: 1.00pt solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0.08in; padding-right: 0.08in">
			<P STYLE="margin-left: 0.29in"><BR>
			    <asp:Label ID="lblDondeNo" runat="server" Text=""></asp:Label>
			</P>
		</TD>
		<TD WIDTH=39 STYLE="border-top: 1px solid #00000a; border-bottom: 1px solid #00000a; border-left: 1.00pt solid #00000a; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0.08in; padding-right: 0.08in">
			<P><FONT FACE="Arial Narrow, serif"><FONT SIZE=3>No</FONT></FONT></P>
		</TD>
	</TR>
</TABLE>
<P STYLE="margin-bottom: 0in"><BR>
</P>
<P STYLE="margin-bottom: 0in"><BR>
</P>
<P STYLE="text-indent: -0.0in; margin-bottom: 0in"><FONT FACE="Arial Narrow, serif"><FONT SIZE=3><B>Principalestareas a desempeñar</B></FONT></FONT></P>
<P STYLE="margin-left: -0.49in; margin-bottom: 0in"><br />
</P>
<TABLE WIDTH=684 CELLPADDING="7" CELLSPACING=0>
	<col WIDTH=670>
	<tr>
		<td WIDTH=670 HEIGHT=5 VALIGN=TOP STYLE="border-top: 1.00pt solid #00000a; border-bottom: 1.00pt solid #00000a; border-left: none; border-right: none; padding: 0in">
			<P STYLE="margin-left: -0.02in; text-indent: 0.02in"><BR>
			</P>
		</td>
	</tr>
	<TR>
		<TD WIDTH=670 HEIGHT=6 valign=top style="border-top: 1.00pt solid #00000a; border-bottom: 1.00pt solid #00000a; border-left: none; border-right: none; padding: 0in">
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD WIDTH=670 HEIGHT=6 VALIGN=TOP STYLE="border-top: 1.00pt solid #00000a; border-bottom: 1.00pt solid #00000a; border-left: none; border-right: none; padding: 0in">
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD WIDTH=670 HEIGHT=7 VALIGN=TOP STYLE="border-top: 1.00pt solid #00000a; border-bottom: none; border-left: none; border-right: none; padding: 0in">
			<P><BR>
			</P>
		</TD>
	</TR>
</TABLE>
<P STYLE="margin-bottom: 0in"><BR>
</P>
<P STYLE="margin-left: -0.0in; margin-bottom: 0in"><FONT FACE="Arial Narrow, serif"><FONT SIZE=3><B>Observaciones
Especiales</B></FONT></FONT></P>
<P STYLE="margin-left: -0.49in; margin-bottom: 0in"><BR>
</P>
<TABLE WIDTH=684 CELLPADDING=7 CELLSPACING=0>
	<COL WIDTH=670>
	<tr>
		<td width=670 height=5 VALIGN=TOP STYLE="border-top: 1.00pt solid #00000a; border-bottom: 1.00pt solid #00000a; border-left: none; border-right: none; padding: 0in">
			<p style="margin-left: 0.9in; text-indent: 0.02in"><BR>
			</p>
		</td>
	</tr>
	<tr>
		<TD WIDTH=670 HEIGHT=6 VALIGN=TOP STYLE="border-top: 1.00pt solid #00000a; border-bottom: 1.00pt solid #00000a; border-left: none; border-right: none; padding: 0in">
			<P><BR>
			</P>
		</TD>
	</tr>
	<TR>
		<TD WIDTH=670 HEIGHT=6 VALIGN=TOP STYLE="border-top: 1.00pt solid #00000a; border-bottom: 1.00pt solid #00000a; border-left: none; border-right: none; padding: 0in">
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD WIDTH=670 HEIGHT=7 VALIGN=TOP STYLE="border-top: 1.00pt solid #00000a; border-bottom: none; border-left: none; border-right: none; padding: 0in">
			<P><BR>
			</P>
		</TD>
	</TR>
</TABLE>
<P style="margin-left: -0.49in; margin-bottom: 0in"><BR>
</P>
<P STYLE="margin-left: -0.49in; margin-bottom: 0in"><BR>
</P>
    <SPAN DIR="LTR" STYLE="border-style: none; border-color: inherit; border-width: medium; padding: 0.05in 0.1in; background: #ffffff" class="auto-style6">
<P STYLE="margin-bottom: 0in">
	<P ALIGN=CENTER STYLE="margin-bottom: 0.14in"><FONT FACE="Arial Narrow, serif"><FONT SIZE=3><B>FIRMA
	ALUMNO</B></FONT></FONT></P>
    <P ALIGN=CENTER class="auto-style5">__<font size="3">_________________</font></P>
	<P STYLE="margin-bottom: 0.14in"><BR><BR>
	</P>
</SPAN>
<SPAN DIR="LTR" STYLE="float: left; width: 1.59in; height: 0.29in; border: none; padding: 0.05in 0.1in; background: #ffffff">
	<P ALIGN=CENTER STYLE="margin-bottom: 0.14in">&nbsp;<FONT SIZE=3 face="Arial Narrow, serif"><B>FIRMA
	PROFESOR</B></FONT></P>
    <P ALIGN=CENTER class="auto-style5">__<font size="3">_________________</font></P>
	<P ALIGN=CENTER STYLE="margin-bottom: 0.14in"><BR><BR>
	</P>
        <br />
</SPAN>
<CENTER>
	<TABLE DIR="LTR" WIDTH=167 CELLPADDING=7 CELLSPACING=0>
		<COL WIDTH=153>
		<TR>
			<TD WIDTH=153 HEIGHT=17 VALIGN=TOP BGCOLOR="#ffffff" STYLE="border: none; padding: 0in">
				<P><TABLE DIR="LTR" ALIGN=LEFT WIDTH=167 HSPACE=4 CELLPADDING=7 CELLSPACING=0>
					<COL WIDTH=153>
					<TR>
						<TD WIDTH=153 HEIGHT=17 VALIGN=TOP BGCOLOR="#ffffff" STYLE="border: none; padding: 0in">
							<P><BR>
							</P>
						</TD>
					</TR>
				</TABLE><BR>
				</P>
			</TD>
		</TR>
	</TABLE>
</CENTER><BR>
</P>
    </div>
    <br />
    <br />
</BODY>
</HTML>
    
</asp:Content>

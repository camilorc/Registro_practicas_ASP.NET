<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="VistaActaFinal.aspx.cs" Inherits="Portafolio.Presentacion.VistaActa1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style12
        {
            height: 23px;
            font-size:small;
            } 
        .style13
        {
            height: 23px;
            width: 157px;
        }
        .auto-style1 {
            height: 23px;
            width: 1604px;
            margin-right: 244px;
        }
        .auto-style3 {
            width: 1844px;
        }
        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
	<META HTTP-EQUIV="CONTENT-TYPE" CONTENT="text/html; charset=utf-8">
	<TITLE></TITLE>
	<META NAME="GENERATOR" CONTENT="LibreOffice 4.1.6.2 (Linux)">
	<META NAME="AUTHOR" CONTENT="saceituno">
	<META NAME="CREATED" CONTENT="20130508;201400000000000">
	<META NAME="CHANGEDBY" CONTENT="Christian Lazcano">
	<META NAME="CHANGED" CONTENT="20141223;185500000000000">
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
	    .auto-style4 {
            height: 25px;
        }
	    .auto-style6 {
            width: 44px;
        }
        .auto-style7 {
            width: 169px;
        }
        .auto-style8 {
            width: 127px;
        }
        .auto-style9 {
            width: 150px;
        }
        .auto-style10 {
            width: 48px;
        }
        .auto-style11 {
            width: 79px;
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
    <asp:HyperLink ID="hyperlink1" NavigateUrl="~/Archivo/ACTAFINAL.pdf" Text="descargar" Target="_new" runat="server"/>
    <br />
    <div id="paraimprimir">
<DIV TYPE=HEADER>
	<P STYLE="margin-bottom: 0.45in; line-height: 100%"><SPAN CLASS="sd-abs-pos" STYLE="position: absolute; top: -0.84in; left: -0.64in; width: 191px"><IMG SRC="Imagenes/ACTAFINAL_html_59c8c5f6.png" NAME="0 Imagen" WIDTH=191 HEIGHT=36 BORDER=0></SPAN>
        <asp:Button ID="btnCargar" runat="server" Text="Cargar Datos" Height="32px" Width="135px" OnClick="btnCargar_Click" />
    <SPAN DIR="LTR" STYLE="float: left; width: 2in; height: 0.6in; border: none; padding: 0.05in 0.1in; background: #ffffff"><P STYLE="margin-bottom: 0.45in; line-height: 100%">&nbsp;<P ALIGN=CENTER STYLE="margin-bottom: 0in"><FONT FACE="Arial Narrow, serif"><FONT SIZE=2>Instituto
		Profesional Duoc Uc</FONT></FONT></P>
		<P ALIGN=CENTER STYLE="margin-bottom: 0in"><FONT FACE="Arial Narrow, serif"><FONT SIZE=2>Escuela
		de Informática y Telecomunicaciones</FONT></FONT></P>
	</SPAN><BR>
	</P>
</DIV>
<P STYLE="margin-bottom: 0in">      <FONT FACE="Arial Narrow, serif"><FONT SIZE=3><B>SUPERVISIÓN
DE PRÁCTICA</B></FONT></FONT></P>
<P ALIGN=CENTER STYLE="margin-bottom: 0in"><A NAME="_GoBack"></A><FONT FACE="Arial Narrow, serif"><FONT SIZE=3><B>ACTA
N°5 - FINAL</B></FONT></FONT></P>
<P STYLE="margin-bottom: 0in">&nbsp;</P>
        <P STYLE="margin-bottom: 0in">&nbsp;<BR>
</P>
<TABLE WIDTH=695 CELLPADDING=5 CELLSPACING=0>
	<COL>
	<COL>
	<COL WIDTH=273>
	<COL WIDTH=13>
	<COL>
	<COL WIDTH=12>
	<TR>
		<TD WIDTH=200 HEIGHT=9 VALIGN=TOP BGCOLOR="#d9d9d9" STYLE="border-top: 1.00pt solid #00000a; border-bottom: none; border-left: 1.00pt solid #00000a; border-right: 1px solid #00000a; padding: 0in 0.05in">
			<P><FONT FACE="Calibri, serif"><B>NOMBRE ALUMNO</B></FONT></P>
		</TD>
		<TD COLSPAN=5 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: 1.00pt solid #00000a; border-bottom: 1px solid #00000a; border-left: none; border-right: 1.00pt solid #000001; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
			<P><FONT COLOR="#000000">&nbsp;<asp:Label ID="lblNombreAlumno" runat="server" Text=""></asp:Label>
                </FONT></P>
		</TD>
	</TR>
	<TR>
		<TD WIDTH=200 VALIGN=TOP BGCOLOR="#d9d9d9" STYLE="border-top: 1px solid #00000a; border-bottom: 1px solid #00000a; border-left: 1.00pt solid #00000a; border-right: 1px solid #00000a; padding: 0in 0.05in" class="auto-style4">
			<P><FONT FACE="Calibri, serif"><B>RUT</B></FONT></P>
		</TD>
		<TD COLSPAN=5 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: 1px solid #00000a; border-bottom: 1px solid #00000a; border-left: none; border-right: 1.00pt solid #000001; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in" class="auto-style4">
			<P><FONT COLOR="#000000">&nbsp;<asp:Label ID="lblRut" runat="server" Text=""></asp:Label>
                </FONT></P>
		</TD>
	</TR>
	<TR VALIGN=BOTTOM>
		<TD WIDTH=200 BGCOLOR="#d9d9d9" STYLE="border-top: none; border-bottom: 1.00pt solid #00000a; border-left: 1.00pt solid #00000a; border-right: 1px solid #00000a; padding: 0in 0.05in">
			<P><FONT FACE="Calibri, serif"><B>FECHA</B></FONT></P>
		</TD>
		<TD BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1.00pt solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in" class="auto-style8">
			<P ALIGN=CENTER><FONT COLOR="#000000">&nbsp;<asp:Label ID="lblFecha" runat="server" Text=""></asp:Label>
                &nbsp;
                </FONT></P>
		</TD>
		<TD BGCOLOR="#d9d9d9" STYLE="border-top: none; border-bottom: 1.00pt solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in" class="auto-style7">
			<P><FONT FACE="Calibri, serif"><B>SEMESTRE</B></FONT></P>
		</TD>
		<TD WIDTH=13 BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1.00pt solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
			<P ALIGN=CENTER><FONT COLOR="#000000">&nbsp;<asp:Label ID="lblSemestre" runat="server" Text=""></asp:Label>
                </FONT></P>
		</TD>
		<TD WIDTH=122 BGCOLOR="#d9d9d9" STYLE="border-top: none; border-bottom: 1.00pt solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
			<P><FONT FACE="Calibri, serif"><B>AÑO</B></FONT></P>
		</TD>
		<TD BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1.00pt solid #00000a; border-left: none; border-right: 1.00pt solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in" class="auto-style6">
			<P ALIGN=CENTER><FONT COLOR="#000000">&nbsp;<asp:Label ID="lblAnio" runat="server" Text=""></asp:Label>
                </FONT></P>
		</TD>
	</TR>
</TABLE>
<P STYLE="margin-bottom: 0in"><BR>
</P>
<TABLE WIDTH=697 CELLPADDING=5 CELLSPACING=0>
	<COLGROUP>
		<COL>
	</COLGROUP>
	<COLGROUP>
		<COL WIDTH=244>
	</COLGROUP>
	<COLGROUP>
		<COL>
	</COLGROUP>
	<COLGROUP>
		<COL WIDTH=168>
	</COLGROUP>
	<COLGROUP>
		<COL WIDTH=6>
		<COL WIDTH=5>
	</COLGROUP>
	<TBODY>
		<TR VALIGN=BOTTOM>
			<TD HEIGHT=9 BGCOLOR="#d9d9d9" STYLE="border-top: 1.00pt solid #00000a; border-bottom: 1px solid #00000a; border-left: 1.00pt solid #00000a; border-right: 1px solid #00000a; padding: 0in 0.05in" class="auto-style9">
				<P><FONT FACE="Calibri, serif"><B>PROFESOR GUIA</B></FONT></P>
			</TD>
			<TD COLSPAN=5 WIDTH=475 BGCOLOR="#ffffff" STYLE="border-top: 1.00pt solid #00000a; border-bottom: 1px solid #00000a; border-left: none; border-right: 1.00pt solid #000001; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
				<P><FONT COLOR="#000000">&nbsp;<asp:Label ID="lblProfesor" runat="server" Text=""></asp:Label>
                    </FONT></P>
			</TD>
		</TR>
	</TBODY>
	<TBODY>
		<TR VALIGN=BOTTOM>
			<TD HEIGHT=10 BGCOLOR="#d9d9d9" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: 1.00pt solid #00000a; border-right: 1px solid #00000a; padding: 0in 0.05in" class="auto-style9">
				<P><FONT FACE="Calibri, serif"><B>TIPO DE PRACTICA</B></FONT></P>
			</TD>
			<TD BGCOLOR="#d9d9d9" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in" class="auto-style11">
				<P><FONT COLOR="#000000"><FONT FACE="Calibri, serif"><B>PROFESIONAL</B></FONT></FONT></P>
			</TD>
			<TD WIDTH=12 BGCOLOR="#ffffff" STYLE="border: none; padding: 0in">
				<P><BR>
				    <asp:Label ID="lblProfesional" runat="server" Text=""></asp:Label>
				</P>
			</TD>
			<TD BGCOLOR="#d9d9d9" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: 1px solid #00000a; border-right: 1px solid #00000a; padding: 0in 0.05in" class="auto-style10">
				<P><FONT FACE="Calibri, serif"><B>LABORAL</B></FONT></P>
			</TD>
			<TD WIDTH=6 BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: none; border-left: 1px solid #00000a; border-right: none; padding-top: 0in; padding-bottom: 0in; padding-left: 0.05in; padding-right: 0in">
				<P ALIGN=CENTER><FONT COLOR="#000000">
                    <asp:Label ID="lblLaboral" runat="server" Text=""></asp:Label>
                    &nbsp;</FONT></P>
			</TD>
			<TD WIDTH=5 BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: none; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
				<P ALIGN=CENTER><FONT COLOR="#000000">&nbsp;</FONT></P>
			</TD>
		</TR>
		<TR VALIGN=BOTTOM>
			<TD HEIGHT=10 BGCOLOR="#d9d9d9" STYLE="border-top: none; border-bottom: 1.00pt solid #00000a; border-left: 1.00pt solid #00000a; border-right: 1px solid #00000a; padding: 0in 0.05in" class="auto-style9">
				<P><FONT FACE="Calibri, serif"><B>CARRERA</B></FONT></P>
			</TD>
			<TD COLSPAN=5 WIDTH=475 BGCOLOR="#ffffff" STYLE="border-top: 1px solid #00000a; border-bottom: 1.00pt solid #00000a; border-left: none; border-right: 1.00pt solid #000001; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
				<P><FONT COLOR="#000000">&nbsp;<asp:Label ID="lblCarrera" runat="server" Text=""></asp:Label>
                    </FONT></P>
			</TD>
		</TR>
	</TBODY>
</TABLE>
<P STYLE="margin-bottom: 0in"><BR>
</P>
<TABLE WIDTH=700 CELLPADDING=5 CELLSPACING=0>
	<COL WIDTH=296>
	<COL WIDTH=44>
	<COL WIDTH=144>
	<COL WIDTH=39>
	<COL WIDTH=126>
	<TR>
		<TD COLSPAN=5 WIDTH=688 HEIGHT=12 VALIGN=BOTTOM BGCOLOR="#d9d9d9" STYLE="border-top: 1.00pt solid #00000a; border-bottom: 1.00pt solid #00000a; border-left: 1.00pt solid #00000a; border-right: 1.00pt solid #000001; padding: 0in 0.05in">
			<P ALIGN=CENTER><FONT FACE="Arial Narrow, serif"><FONT SIZE=3><B>ENTREGA
			DOCUMENTOS PRÁCTICA PROFESOR GUÍA</B></FONT></FONT></P>
		</TD>
	</TR>
	<TR VALIGN=BOTTOM>
		<TD WIDTH=296 HEIGHT=26 BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: 1.00pt solid #00000a; border-right: none; padding-top: 0in; padding-bottom: 0in; padding-left: 0.05in; padding-right: 0in">
			<P ALIGN=CENTER><FONT FACE="Arial Narrow, serif"><FONT SIZE=3><B>ACTA
			N°1</B></FONT></FONT></P>
		</TD>
		<TD WIDTH=44 BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: 1px solid #00000a; border-right: 1px solid #00000a; padding: 0in 0.05in">
			<P><FONT COLOR="#ff0000">&nbsp;<asp:Label ID="lblActa1Si" runat="server" Text="" ForeColor="Black"></asp:Label>
                </FONT></P>
		</TD>
		<TD WIDTH=144 BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: 1px solid #00000a; border-right: 1px solid #00000a; padding: 0in 0.05in">
			<P><FONT FACE="Arial Narrow, serif"><FONT SIZE=3>Sí</FONT></FONT></P>
		</TD>
		<TD WIDTH=39 BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
			<P>
                <asp:Label ID="lblActa1No" runat="server" Text=""></asp:Label>
            </P>
		</TD>
		<TD WIDTH=126 BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: 1px solid #00000a; border-right: 1px solid #00000a; padding: 0in 0.05in">
			<P><FONT FACE="Arial Narrow, serif"><FONT SIZE=3>No</FONT></FONT></P>
		</TD>
	</TR>
	<TR VALIGN=BOTTOM>
		<TD WIDTH=296 HEIGHT=26 BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: 1.00pt solid #00000a; border-right: none; padding-top: 0in; padding-bottom: 0in; padding-left: 0.05in; padding-right: 0in">
			<P ALIGN=CENTER><FONT FACE="Arial Narrow, serif"><FONT SIZE=3><B>ACTA
			N°2</B></FONT></FONT></P>
		</TD>
		<TD WIDTH=44 BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: 1px solid #00000a; border-right: 1px solid #00000a; padding: 0in 0.05in">
			<P><FONT COLOR="#ff0000">&nbsp;<asp:Label ID="lblActa2si" runat="server" Text="" ForeColor="Black"></asp:Label>
                </FONT></P>
		</TD>
		<TD WIDTH=144 BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: 1px solid #00000a; border-right: 1px solid #00000a; padding: 0in 0.05in">
			<P><FONT FACE="Arial Narrow, serif"><FONT SIZE=3>Sí</FONT></FONT></P>
		</TD>
		<TD WIDTH=39 BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
			<P>
			    <asp:Label ID="lblActa2No" runat="server" Text=""></asp:Label>
			</P>
		</TD>
		<TD WIDTH=126 BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: 1px solid #00000a; border-right: 1px solid #00000a; padding: 0in 0.05in">
			<P><FONT FACE="Arial Narrow, serif"><FONT SIZE=3>No</FONT></FONT></P>
		</TD>
	</TR>
	<TR VALIGN=BOTTOM>
		<TD WIDTH=296 HEIGHT=26 BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: 1.00pt solid #00000a; border-right: none; padding-top: 0in; padding-bottom: 0in; padding-left: 0.05in; padding-right: 0in">
			<P ALIGN=CENTER><FONT FACE="Arial Narrow, serif"><FONT SIZE=3><B>INFORME
			DIGITAL MÁS PAUTA DE EVALUACIÓN DEL INFORME</B></FONT></FONT></P>
		</TD>
		<TD WIDTH=44 BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: 1px solid #00000a; border-right: 1px solid #00000a; padding: 0in 0.05in">
			<P><BR>
			    <asp:Label ID="lblActa3Si" runat="server" Text=""></asp:Label>
			</P>
		</TD>
		<TD WIDTH=144 BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: 1px solid #00000a; border-right: 1px solid #00000a; padding: 0in 0.05in">
			<P><FONT FACE="Arial Narrow, serif"><FONT SIZE=3>Sí</FONT></FONT></P>
		</TD>
		<TD WIDTH=39 BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
			<P><BR>
			    <asp:Label ID="lblActa3No" runat="server" Text=""></asp:Label>
			</P>
		</TD>
		<TD WIDTH=126 BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: 1px solid #00000a; border-right: 1px solid #00000a; padding: 0in 0.05in">
			<P><FONT FACE="Arial Narrow, serif"><FONT SIZE=3>No</FONT></FONT></P>
		</TD>
	</TR>
	<TR>
		<TD WIDTH=296 HEIGHT=25 BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: 1.00pt solid #00000a; border-right: none; padding-top: 0in; padding-bottom: 0in; padding-left: 0.05in; padding-right: 0in">
			<P ALIGN=CENTER><FONT FACE="Arial Narrow, serif"><FONT SIZE=3><B>EVALUACIÓN
			CENTRO DE PRÁCTICA</B></FONT></FONT></P>
		</TD>
		<TD WIDTH=44 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: 1px solid #00000a; border-right: 1px solid #00000a; padding: 0in 0.05in">
			<P>
                <asp:Label ID="lblActa22Si" runat="server" Text=""></asp:Label>
                <BR>
			</P>
		</TD>
		<TD WIDTH=144 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: 1px solid #00000a; border-right: 1px solid #00000a; padding: 0in 0.05in">
			<P><FONT FACE="Arial Narrow, serif"><FONT SIZE=3>Sí</FONT></FONT></P>
		</TD>
		<TD WIDTH=39 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
			<P>
                <asp:Label ID="lblActa22No" runat="server" Text=""></asp:Label>
            </P>
		</TD>
		<TD WIDTH=126 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: 1px solid #00000a; border-right: 1px solid #00000a; padding: 0in 0.05in">
			<P><FONT FACE="Arial Narrow, serif"><FONT SIZE=3>No</FONT></FONT></P>
		</TD>
	</TR>
</TABLE>
<P STYLE="margin-bottom: 0in"><BR>
</P>
<P STYLE="margin-bottom: 0in"><BR>
</P>
<TABLE WIDTH=693 CELLPADDING=5 CELLSPACING=0>
	<COLGROUP>
		<COL WIDTH=379>
	</COLGROUP>
	<COLGROUP>
		<COL WIDTH=174>
		<COL WIDTH=33>
	</COLGROUP>
	<COLGROUP>
		<COL WIDTH=65>
	</COLGROUP>
	<TR>
		<TD COLSPAN=4 WIDTH=681 HEIGHT=10 VALIGN=BOTTOM BGCOLOR="#d9d9d9" STYLE="border-top: 1.00pt solid #00000a; border-bottom: 1.00pt solid #00000a; border-left: 1.00pt solid #00000a; border-right: 1.00pt solid #000001; padding: 0in 0.05in">
			<P ALIGN=CENTER><FONT FACE="Arial Narrow, serif"><B>La Evaluación
			Final de Práctica tiene la siguiente ponderación:</B></FONT></P>
		</TD>
	</TR>
	<TR>
		<TD ROWSPAN=3 WIDTH=379 HEIGHT=42 BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1.00pt solid #000001; border-left: 1.00pt solid #00000a; border-right: 1.00pt solid #000001; padding: 0in 0.05in">
			<P ALIGN=CENTER><FONT COLOR="#000000"><FONT FACE="Arial Narrow, serif"><FONT SIZE=2 STYLE="font-size: 9pt">La
			evaluación de la Práctica se realizará a través de dos
			instrumentos llamados Informe de Práctica y Pauta de Verificación
			de Cumplimiento de Estándar. <BR><BR>La nota obtenida en el
			informe de práctica corresponderá al 60% de la nota final del
			curso. La nota obtenida según la pauta de evaluación entregada
			por la empresa o Pauta de Verificación de Cumplimiento de
			Estándar tendrá una ponderación de un 40% de la nota final.</FONT></FONT></FONT></P>
		</TD>
		<TD WIDTH=174 VALIGN=BOTTOM BGCOLOR="#d9d9d9" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
			<P><FONT FACE="Arial Narrow, serif"><B>Nota obtenida en el informe
			de práctica</B></FONT></P>
		</TD>
		<TD WIDTH=33 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
			<P><FONT COLOR="#000000"><FONT FACE="Arial Narrow, serif"><B>60%</B></FONT></FONT></P>
		</TD>
		<TD WIDTH=65 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: none; border-right: 1.00pt solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
			<P><FONT COLOR="#000000">&nbsp;<asp:Label ID="lblActa3" runat="server" Text=""></asp:Label>
                </FONT></P>
		</TD>
	</TR>
	<TR>
		<TD WIDTH=174 BGCOLOR="#d9d9d9" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
			<P><FONT FACE="Arial Narrow, serif"><B>Pauta de evaluación
			entregada por la empresa</B></FONT></P>
		</TD>
		<TD WIDTH=33 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
			<P><FONT COLOR="#000000"><FONT FACE="Arial Narrow, serif"><B>40%</B></FONT></FONT></P>
		</TD>
		<TD WIDTH=65 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: none; border-right: 1.00pt solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
			<P><FONT COLOR="#000000">&nbsp;<asp:Label ID="lblActa2" runat="server" Text=""></asp:Label>
                </FONT></P>
		</TD>
	</TR>
	<TR>
		<TD WIDTH=174 VALIGN=BOTTOM BGCOLOR="#d9d9d9" STYLE="border-top: 1.00pt solid #00000a; border-bottom: 1.00pt solid #00000a; border-left: none; border-right: none; padding: 0in">
			<P><FONT FACE="Arial Narrow, serif"><B>NOTA FINAL</B></FONT></P>
		</TD>
		<TD WIDTH=33 VALIGN=BOTTOM BGCOLOR="#d9d9d9" STYLE="border-top: 1.00pt solid #00000a; border-bottom: 1.00pt solid #00000a; border-left: none; border-right: 1.00pt solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
			<P ALIGN=CENTER><FONT COLOR="#ffffff">&nbsp;</FONT></P>
		</TD>
		<TD WIDTH=65 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: 1.00pt solid #00000a; border-bottom: 1.00pt solid #00000a; border-left: none; border-right: 1.00pt solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
			<P ALIGN=RIGHT>
                <asp:Label ID="lblNotaFinal" runat="server" Text=""></asp:Label>
			</P>
		</TD>
	</TR>
</TABLE>
<P STYLE="margin-left: -0.49in; margin-bottom: 0in"><BR>
</P>
<P STYLE="margin-left: -0.49in; margin-bottom: 0in"><BR>
</P>
<P STYLE="margin-left: -0.49in; margin-bottom: 0in"><BR>
</P>
<P STYLE="margin-left: -0.49in; margin-bottom: 0in"><BR>
</P>
<P STYLE="margin-bottom: 0in"><FONT FACE="Arial Narrow, serif"><FONT SIZE=3>						</FONT></FONT></P>
    <SPAN DIR="LTR" STYLE="float: left; width: 1.84in; height: 0.29in; border: none; padding: 0.05in 0.1in; background: #ffffff">
<P STYLE="margin-left: -0.49in; margin-bottom: 0in">
	<P ALIGN=CENTER STYLE="margin-bottom: 0.14in"><FONT FACE="Arial Narrow, serif"><FONT SIZE=3><B>FIRMA
	COORDINADOR</B></FONT></FONT></P>
	<P STYLE="margin-bottom: 0.14in"><BR><BR>
	</P>
</SPAN>
<SPAN DIR="LTR" STYLE="float: left; width: 1.76in; height: 0.29in; border: none; padding: 0.05in 0.1in; background: #ffffff">
	<P ALIGN=CENTER STYLE="margin-bottom: 0.14in"><FONT FACE="Arial Narrow, serif"><FONT SIZE=3><B>FIRMA
	PROFESOR</B></FONT></FONT></P>
</SPAN>
<TABLE DIR="LTR" ALIGN=RIGHT WIDTH=193 HSPACE=4 CELLPADDING=7 CELLSPACING=0>
	<COL WIDTH=179>
	<TR>
		<TD WIDTH=179 HEIGHT=22 VALIGN=TOP BGCOLOR="#ffffff" STYLE="border: none; padding: 0in">
			<P><TABLE DIR="LTR" ALIGN=LEFT WIDTH=189 HSPACE=4 CELLPADDING=7 CELLSPACING=0>
				<COL WIDTH=175>
				<TR>
					<TD WIDTH=175 HEIGHT=19 VALIGN=TOP BGCOLOR="#ffffff" STYLE="border: none; padding: 0in">
						<P><BR>
						</P>
					</TD>
				</TR>
			</TABLE><BR>
			</P>
		</TD>
	</TR>
</TABLE><BR>
</P>
</BODY>
    </div>
</HTML>

</asp:Content>

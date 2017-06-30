<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="VistaActa3.aspx.cs" Inherits="Portafolio.Presentacion.VistaActa3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
	<META HTTP-EQUIV="CONTENT-TYPE" CONTENT="text/html; charset=utf-8">
	<TITLE></TITLE>
	<META NAME="GENERATOR" CONTENT="LibreOffice 4.1.6.2 (Linux)">
	<META NAME="AUTHOR" CONTENT="Margarita Errandonea A">
	<META NAME="CREATED" CONTENT="20130731;152000000000000">
	<META NAME="CHANGEDBY" CONTENT="Christian Lazcano">
	<META NAME="CHANGED" CONTENT="20160229;40800000000000">
	<META NAME="AppVersion" CONTENT="15.0000">
	<META NAME="DocSecurity" CONTENT="0">
	<META NAME="HyperlinksChanged" CONTENT="false">
	<META NAME="LinksUpToDate" CONTENT="false">
	<META NAME="ScaleCrop" CONTENT="false">
	<META NAME="ShareDoc" CONTENT="false">
	<STYLE TYPE="text/css">
	<!--
		@page { size: 8.5in 11in; margin-left: 1.18in; margin-right: 1.18in; margin-top: 0.98in; margin-bottom: 0.98in }
		P { margin-bottom: 0.08in; direction: ltr; line-height: 100%; widows: 2; orphans: 2 }
		P.western { font-family: "Calibri", serif }
		P.ctl { font-family: "Calibri" }
		H3 { margin-top: 0.14in; margin-bottom: 0in; direction: ltr; color: #4f81bd; line-height: 100%; page-break-inside: avoid; widows: 2; orphans: 2 }
		H3.western { font-family: "Cambria", serif; font-size: 11pt }
		H3.cjk { font-family: "Arial"; font-size: 11pt }
		H3.ctl { font-family: ; font-size: 11pt }
		A:link { color: #0000ff; so-language: zxx }
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
    <a href="javascript:imprSelec('paraimprimir')">Imprimir</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:HyperLink ID="hyperlink1" NavigateUrl="~/Archivo/ACTA3.pdf" Text="descargar" Target="_new" runat="server"/>
    <br />
    <div id="paraimprimir">
<BODY LANG="es-CL" LINK="#0000ff" DIR="LTR">
<H3 CLASS="western" STYLE="text-indent: 0.49in"><A NAME="_Toc362353347"></A>
<I>Pauta de Evaluación Informe de Práctica</I></H3>
<P CLASS="western" STYLE="margin-bottom: 0in"><BR>
</P>
<TABLE WIDTH=599 CELLPADDING=7 CELLSPACING=0>
	<COL WIDTH=583>
	<TR>
		<TD WIDTH=583 VALIGN=TOP STYLE="border: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0.08in; padding-right: 0.08in">
			<P STYLE="margin-bottom: 0in"><BR>
			</P>
			<P CLASS="western" ALIGN=JUSTIFY STYLE="margin-bottom: 0in"><BR>
			</P>
			<P CLASS="western" ALIGN=CENTER STYLE="margin-bottom: 0in"><A NAME="_GoBack"></A>
			<FONT SIZE=2><SPAN LANG="en-US"><B>PAUTA DE EVALUACIÓN INFORME DE
			PRÁCTICA</B></SPAN></FONT></P>
			<P CLASS="western" ALIGN=CENTER STYLE="margin-bottom: 0in"><FONT SIZE=2><SPAN LANG="en-US"><B>Laboral
			| Profesional</B></SPAN></FONT></P>
			<P LANG="en-US" CLASS="western" ALIGN=CENTER STYLE="margin-bottom: 0in">
			<BR>
			</P>
			<P ALIGN=JUSTIFY STYLE="margin-left: 0.5in; margin-bottom: 0in"><FONT COLOR="#7f7f7f"><FONT SIZE=2><SPAN LANG="en-US">Esta
			evaluación debe ser realizada por el docente de la Asignatura de
			Práctica.</SPAN></FONT></FONT></P>
			<P STYLE="margin-bottom: 0in"><BR>
			</P>
			<TABLE WIDTH=540 CELLPADDING=5 CELLSPACING=0>
				<COL WIDTH=28>
				<COL WIDTH=118>
				<COL WIDTH=72>
				<COL WIDTH=153>
				<COL WIDTH=35>
				<COL WIDTH=73>
				<TBODY>
					<TR VALIGN=BOTTOM>
						<TD WIDTH=28 HEIGHT=1 BGCOLOR="#000000" STYLE="border-top: 1.00pt solid #00000a; border-bottom: 1px solid #00000a; border-left: 1.00pt solid #00000a; border-right: 1px solid #00000a; padding: 0in 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#ffffff"><FONT FACE="Calibri, serif"><FONT SIZE=2>Ítem</FONT></FONT></FONT></P>
						</TD>
						<TD WIDTH=118 BGCOLOR="#000000" STYLE="border-top: 1.00pt solid #00000a; border-bottom: 1px solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#ffffff"><FONT FACE="Calibri, serif"><FONT SIZE=2>Aspecto
							a Evaluar</FONT></FONT></FONT></P>
						</TD>
						<TD WIDTH=72 BGCOLOR="#000000" STYLE="border-top: 1.00pt solid #00000a; border-bottom: 1px solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#ffffff"><FONT FACE="Calibri, serif"><FONT SIZE=2>Aspecto</FONT></FONT></FONT></P>
						</TD>
						<TD WIDTH=153 BGCOLOR="#000000" STYLE="border-top: 1.00pt solid #00000a; border-bottom: 1px solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#ffffff"><FONT FACE="Calibri, serif"><FONT SIZE=2>Descripción</FONT></FONT></FONT></P>
						</TD>
						<TD WIDTH=35 BGCOLOR="#000000" STYLE="border-top: 1.00pt solid #00000a; border-bottom: 1px solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#ffffff"><FONT FACE="Calibri, serif"><FONT SIZE=2>%</FONT></FONT></FONT></P>
						</TD>
						<TD WIDTH=73 BGCOLOR="#000000" STYLE="border-top: 1.00pt solid #00000a; border-bottom: 1px solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#ffffff"><FONT FACE="Calibri, serif"><FONT SIZE=2>Nota
							de 1 a 7</FONT></FONT></FONT></P>
						</TD>
					</TR>
				</TBODY>
				<TBODY>
					<TR>
						<TD ROWSPAN=7 WIDTH=28 HEIGHT=10 BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #000001; border-left: 1.00pt solid #00000a; border-right: 1px solid #00000a; padding: 0in 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#000000"><FONT FACE="Calibri, serif"><FONT SIZE=2 STYLE="font-size: 9pt">I</FONT></FONT></FONT></P>
						</TD>
						<TD WIDTH=118 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: none; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#000000">&nbsp;</FONT></P>
						</TD>
						<TD ROWSPAN=7 WIDTH=72 BGCOLOR="#ffffff" STYLE="border-top: 1px solid #00000a; border-bottom: 1px solid #000001; border-left: 1px solid #00000a; border-right: 1px solid #00000a; padding: 0in 0.05in">
							<P CLASS="western"><FONT COLOR="#000000"><FONT FACE="Calibri, serif"><FONT SIZE=2 STYLE="font-size: 9pt">Formalidades.</FONT></FONT></FONT></P>
						</TD>
						<TD WIDTH=153 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western"><FONT COLOR="#000000"><FONT FACE="Calibri, serif"><FONT SIZE=2 STYLE="font-size: 9pt">Portada.</FONT></FONT></FONT></P>
						</TD>
						<TD WIDTH=35 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: 1px solid #00000a; border-right: 1px solid #00000a; padding: 0in 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#000000"><FONT FACE="Calibri, serif"><FONT SIZE=2 STYLE="font-size: 9pt">2</FONT></FONT></FONT></P>
						</TD>
						<TD WIDTH=73 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#000000">&nbsp;</FONT></P>
						</TD>
					</TR>
					<TR>
						<TD WIDTH=118 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: none; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#000000">&nbsp;</FONT></P>
						</TD>
						<TD WIDTH=153 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border: 1px solid #00000a; padding: 0in 0.05in">
							<P CLASS="western"><FONT COLOR="#000000"><FONT FACE="Calibri, serif"><FONT SIZE=2 STYLE="font-size: 9pt">Índice.</FONT></FONT></FONT></P>
						</TD>
						<TD WIDTH=35 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#000000"><FONT FACE="Calibri, serif"><FONT SIZE=2 STYLE="font-size: 9pt">2</FONT></FONT></FONT></P>
						</TD>
						<TD WIDTH=73 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#000000">&nbsp;</FONT></P>
						</TD>
					</TR>
					<TR>
						<TD WIDTH=118 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: none; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#000000"><FONT FACE="Calibri, serif"><FONT SIZE=2 STYLE="font-size: 9pt">FORMATO
							25%</FONT></FONT></FONT></P>
						</TD>
						<TD WIDTH=153 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: 1px solid #00000a; border-right: 1px solid #00000a; padding: 0in 0.05in">
							<P CLASS="western"><FONT COLOR="#000000"><FONT FACE="Calibri, serif"><FONT SIZE=2 STYLE="font-size: 9pt">Bibliografía.</FONT></FONT></FONT></P>
						</TD>
						<TD WIDTH=35 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#000000"><FONT FACE="Calibri, serif"><FONT SIZE=2 STYLE="font-size: 9pt">2</FONT></FONT></FONT></P>
						</TD>
						<TD WIDTH=73 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#000000">&nbsp;</FONT></P>
						</TD>
					</TR>
					<TR>
						<TD WIDTH=118 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: none; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#000000">&nbsp;</FONT></P>
						</TD>
						<TD WIDTH=153 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: 1px solid #00000a; border-right: 1px solid #00000a; padding: 0in 0.05in">
							<P CLASS="western"><FONT COLOR="#000000"><FONT FACE="Calibri, serif"><FONT SIZE=2 STYLE="font-size: 9pt">Anexos.</FONT></FONT></FONT></P>
						</TD>
						<TD WIDTH=35 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#000000"><FONT FACE="Calibri, serif"><FONT SIZE=2 STYLE="font-size: 9pt">5</FONT></FONT></FONT></P>
						</TD>
						<TD WIDTH=73 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#000000">&nbsp;</FONT></P>
						</TD>
					</TR>
					<TR>
						<TD WIDTH=118 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: none; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western"><FONT COLOR="#000000">&nbsp;</FONT></P>
						</TD>
						<TD WIDTH=153 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: 1px solid #00000a; border-right: 1px solid #00000a; padding: 0in 0.05in">
							<P CLASS="western"><FONT COLOR="#000000"><FONT FACE="Calibri, serif"><FONT SIZE=2 STYLE="font-size: 9pt">Anillado.</FONT></FONT></FONT></P>
						</TD>
						<TD WIDTH=35 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#000000"><FONT FACE="Calibri, serif"><FONT SIZE=2 STYLE="font-size: 9pt">2</FONT></FONT></FONT></P>
						</TD>
						<TD WIDTH=73 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#000000">&nbsp;</FONT></P>
						</TD>
					</TR>
					<TR>
						<TD WIDTH=118 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: none; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western"><FONT COLOR="#000000">&nbsp;</FONT></P>
						</TD>
						<TD WIDTH=153 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: 1px solid #00000a; border-right: 1px solid #00000a; padding: 0in 0.05in">
							<P CLASS="western"><FONT COLOR="#000000"><FONT FACE="Calibri, serif"><FONT SIZE=2 STYLE="font-size: 9pt">Diagramación.</FONT></FONT></FONT></P>
						</TD>
						<TD WIDTH=35 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#000000"><FONT FACE="Calibri, serif"><FONT SIZE=2 STYLE="font-size: 9pt">2</FONT></FONT></FONT></P>
						</TD>
						<TD WIDTH=73 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#000000">&nbsp;</FONT></P>
						</TD>
					</TR>
					<TR>
						<TD WIDTH=118 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western"><FONT COLOR="#000000">&nbsp;</FONT></P>
						</TD>
						<TD WIDTH=153 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: 1px solid #00000a; border-right: 1px solid #00000a; padding: 0in 0.05in">
							<P CLASS="western"><FONT COLOR="#000000"><FONT FACE="Calibri, serif"><FONT SIZE=2 STYLE="font-size: 9pt">Aspectos
							lingüísticos.</FONT></FONT></FONT></P>
						</TD>
						<TD WIDTH=35 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#000000"><FONT FACE="Calibri, serif"><FONT SIZE=2 STYLE="font-size: 9pt">10</FONT></FONT></FONT></P>
						</TD>
						<TD WIDTH=73 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#000000">&nbsp;</FONT></P>
						</TD>
					</TR>
				</TBODY>
				<TBODY>
					<TR>
						<TD ROWSPAN=7 WIDTH=28 HEIGHT=10 BGCOLOR="#ffffff" STYLE="border-top: 1px solid #00000a; border-bottom: 1.00pt solid #000001; border-left: 1.00pt solid #00000a; border-right: 1px solid #00000a; padding: 0in 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#000000"><FONT FACE="Calibri, serif"><FONT SIZE=2 STYLE="font-size: 9pt">II</FONT></FONT></FONT></P>
						</TD>
						<TD WIDTH=118 BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: none; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#000000">&nbsp;</FONT></P>
						</TD>
						<TD ROWSPAN=3 WIDTH=72 BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #000001; border-left: 1px solid #00000a; border-right: 1px solid #00000a; padding: 0in 0.05in">
							<P CLASS="western"><FONT COLOR="#000000"><FONT FACE="Calibri, serif"><FONT SIZE=2 STYLE="font-size: 9pt">Empresa.</FONT></FONT></FONT></P>
						</TD>
						<TD WIDTH=153 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: 1px solid #00000a; border-right: 1px solid #00000a; padding: 0in 0.05in">
							<P CLASS="western"><FONT COLOR="#000000"><FONT FACE="Calibri, serif"><FONT SIZE=2 STYLE="font-size: 9pt">Introducción.</FONT></FONT></FONT></P>
						</TD>
						<TD WIDTH=35 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#000000"><FONT FACE="Calibri, serif"><FONT SIZE=2 STYLE="font-size: 9pt">5</FONT></FONT></FONT></P>
						</TD>
						<TD WIDTH=73 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#000000">&nbsp;</FONT></P>
						</TD>
					</TR>
					<TR>
						<TD WIDTH=118 BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: none; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#000000">&nbsp;</FONT></P>
						</TD>
						<TD WIDTH=153 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: 1px solid #00000a; border-right: 1px solid #00000a; padding: 0in 0.05in">
							<P CLASS="western"><FONT COLOR="#000000"><FONT FACE="Calibri, serif"><FONT SIZE=2 STYLE="font-size: 9pt">Antecedentes.</FONT></FONT></FONT></P>
						</TD>
						<TD WIDTH=35 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#000000"><FONT FACE="Calibri, serif"><FONT SIZE=2 STYLE="font-size: 9pt">5</FONT></FONT></FONT></P>
						</TD>
						<TD WIDTH=73 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#000000">&nbsp;</FONT></P>
						</TD>
					</TR>
					<TR>
						<TD WIDTH=118 BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: none; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#000000">&nbsp;</FONT></P>
						</TD>
						<TD WIDTH=153 BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=JUSTIFY><FONT COLOR="#000000"><FONT FACE="Calibri, serif"><FONT SIZE=2 STYLE="font-size: 9pt">Descripción
							de la empresa.</FONT></FONT></FONT></P>
						</TD>
						<TD WIDTH=35 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: 1px solid #00000a; border-right: 1px solid #00000a; padding: 0in 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#000000"><FONT FACE="Calibri, serif"><FONT SIZE=2 STYLE="font-size: 9pt">5</FONT></FONT></FONT></P>
						</TD>
						<TD WIDTH=73 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#000000">&nbsp;</FONT></P>
						</TD>
					</TR>
					<TR>
						<TD WIDTH=118 BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: none; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#000000">&nbsp;</FONT></P>
						</TD>
						<TD WIDTH=72 BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: none; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=JUSTIFY><FONT COLOR="#000000">&nbsp;</FONT></P>
						</TD>
						<TD WIDTH=153 VALIGN=TOP BGCOLOR="#ffffff" STYLE="border: 1px solid #00000a; padding: 0in 0.05in">
							<P CLASS="western" ALIGN=JUSTIFY><FONT COLOR="#000000"><FONT FACE="Calibri, serif"><FONT SIZE=2 STYLE="font-size: 9pt">Descripción
							del área donde trabajó; funciones y estructuras. </FONT></FONT></FONT>
							</P>
						</TD>
						<TD WIDTH=35 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#000000"><FONT FACE="Calibri, serif"><FONT SIZE=2 STYLE="font-size: 9pt">5</FONT></FONT></FONT></P>
						</TD>
						<TD WIDTH=73 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#000000">&nbsp;</FONT></P>
						</TD>
					</TR>
					<TR>
						<TD WIDTH=118 BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: none; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#000000"><FONT FACE="Calibri, serif"><FONT SIZE=2 STYLE="font-size: 9pt">CONTENIDO
							75%</FONT></FONT></FONT></P>
						</TD>
						<TD WIDTH=72 BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: none; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=JUSTIFY STYLE="margin-bottom: 0in"><FONT COLOR="#000000"><FONT FACE="Calibri, serif"><FONT SIZE=2 STYLE="font-size: 9pt">Descripción
							</FONT></FONT></FONT>
							</P>
							<P CLASS="western" ALIGN=JUSTIFY STYLE="margin-bottom: 0in"><FONT COLOR="#000000"><FONT FACE="Calibri, serif"><FONT SIZE=2 STYLE="font-size: 9pt">de
							la</FONT></FONT></FONT></P>
							<P CLASS="western" ALIGN=JUSTIFY><FONT COLOR="#000000"><FONT FACE="Calibri, serif"><FONT SIZE=2 STYLE="font-size: 9pt">Práctica
							</FONT></FONT></FONT>
							</P>
						</TD>
						<TD WIDTH=153 VALIGN=TOP BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: 1px solid #00000a; border-right: 1px solid #00000a; padding: 0in 0.05in">
							<P CLASS="western" ALIGN=JUSTIFY><FONT COLOR="#000000"><FONT FACE="Calibri, serif"><FONT SIZE=2 STYLE="font-size: 9pt">Descripción
							del trabajo realizado (objetivos, desarrollo, dificultades,
							logros).</FONT></FONT></FONT></P>
						</TD>
						<TD WIDTH=35 BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#000000"><FONT FACE="Calibri, serif"><FONT SIZE=2 STYLE="font-size: 9pt">20</FONT></FONT></FONT></P>
						</TD>
						<TD WIDTH=73 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#000000">&nbsp;</FONT></P>
						</TD>
					</TR>
					<TR>
						<TD WIDTH=118 BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: none; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#000000">&nbsp;</FONT></P>
						</TD>
						<TD WIDTH=72 BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#000000">&nbsp;</FONT></P>
						</TD>
						<TD WIDTH=153 VALIGN=TOP BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: 1px solid #00000a; border-right: 1px solid #00000a; padding: 0in 0.05in">
							<P CLASS="western" ALIGN=JUSTIFY><FONT COLOR="#000000"><FONT FACE="Calibri, serif"><FONT SIZE=2 STYLE="font-size: 9pt">Recomendaciones
							para futuras mejoras de los procesos en los que estuvo
							involucrado el alumno.</FONT></FONT></FONT></P>
						</TD>
						<TD WIDTH=35 BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#000000"><FONT FACE="Calibri, serif"><FONT SIZE=2 STYLE="font-size: 9pt">10</FONT></FONT></FONT></P>
						</TD>
						<TD WIDTH=73 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#000000">&nbsp;</FONT></P>
						</TD>
					</TR>
					<TR>
						<TD WIDTH=118 BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: none; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#000000">&nbsp;</FONT></P>
						</TD>
						<TD WIDTH=72 BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1.00pt solid #000001; border-left: 1px solid #00000a; border-right: 1px solid #00000a; padding: 0in 0.05in">
							<P CLASS="western"><FONT COLOR="#000000"><FONT FACE="Calibri, serif"><FONT SIZE=2 STYLE="font-size: 9pt">Conclusión</FONT></FONT></FONT></P>
						</TD>
						<TD WIDTH=153 BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: 1px solid #00000a; border-right: 1px solid #00000a; padding: 0in 0.05in">
							<P CLASS="western" ALIGN=JUSTIFY><FONT COLOR="#000000"><FONT FACE="Calibri, serif"><FONT SIZE=2 STYLE="font-size: 9pt">Conclusiones
							y Recomendaciones  de la actividad.</FONT></FONT></FONT></P>
						</TD>
						<TD WIDTH=35 BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#000000"><FONT FACE="Calibri, serif"><FONT SIZE=2 STYLE="font-size: 9pt">25</FONT></FONT></FONT></P>
						</TD>
						<TD WIDTH=73 VALIGN=BOTTOM BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1px solid #00000a; border-left: none; border-right: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western"><FONT COLOR="#000000">&nbsp;</FONT></P>
						</TD>
					</TR>
					<TR VALIGN=BOTTOM>
						<TD COLSPAN=4 WIDTH=400 HEIGHT=10 BGCOLOR="#ffffff" STYLE="border: 1.00pt solid #00000a; padding: 0in 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#000000">&nbsp;</FONT></P>
						</TD>
						<TD WIDTH=35 BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1.00pt solid #00000a; border-left: none; border-right: 1.00pt solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#000000"><FONT FACE="Calibri, serif"><FONT SIZE=2 STYLE="font-size: 9pt">Nota
							Final</FONT></FONT></FONT></P>
						</TD>
						<TD WIDTH=73 BGCOLOR="#ffffff" STYLE="border-top: none; border-bottom: 1.00pt solid #00000a; border-left: none; border-right: 1.00pt solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0in; padding-right: 0.05in">
							<P CLASS="western" ALIGN=CENTER><FONT COLOR="#000000">&nbsp;</FONT></P>
						</TD>
					</TR>
				</TBODY>
			</TABLE>
			<P STYLE="margin-bottom: 0in; line-height: 100%"><BR>
			</P>
		</TD>
	</TR>
</TABLE>
<P STYLE="margin-left: 0.5in; margin-bottom: 0in"><BR>
</P>
<P CLASS="western" STYLE="margin-bottom: 0in"><BR>
</P>
<P CLASS="western" STYLE="margin-bottom: 0in"><BR>
</P>
<P CLASS="western" STYLE="margin-bottom: 0in"><BR>
</P>
<P CLASS="western" STYLE="margin-bottom: 0in"><BR>
</P>
<P CLASS="western" STYLE="margin-bottom: 0in"><BR>
</P>
<P CLASS="western" STYLE="margin-bottom: 0in"><BR>
</P>
</BODY>
        </div>
</HTML>

</asp:Content>

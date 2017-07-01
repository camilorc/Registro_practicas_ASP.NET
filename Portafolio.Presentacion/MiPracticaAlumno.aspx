<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MiPracticaAlumno.aspx.cs" Inherits="Portafolio.Presentacion.MiPracticaAlumno" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
	.demo {
		width:auto;
		height:auto;
		border:1px solid #0000A0;
		border-collapse:collapse;
		border-spacing:2px;
		padding:5px;
	}
	.demo caption {
		text-align:center;
	}
	.demo th {
		border:1px solid #0000A0;
		padding:5px;
		background:#F0F0F0;
	}
	.demo td {
		border:1px solid #0000A0;
		text-align:center;
		padding:5px;
		background:#1080DA;
	}
        .auto-style5 {
            width: 289px;
        }
        .auto-style6 {
            width: 669px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <asp:Panel ID="Panel3" runat="server">
      
        <table class="demo">
	<thead>
	<tr>
		<th class="auto-style6">&nbsp;
            <asp:Label ID="lblNombrePractica" runat="server" Text="" Font-Size="XX-Large" ForeColor="Blue"></asp:Label>
		</th>
	</tr>
	</thead>
	<tbody>
	<tr>
		<td class="auto-style6">
            <asp:Label ID="lblRazon" runat="server" ForeColor="LightBlue" Text="" Font-Size="X-Large"></asp:Label>
		</td>
	</tr>
	<tr>
		<td class="auto-style6">
            <asp:Label ID="lblDireccion" runat="server" Font-Size="X-Large" ForeColor="LightBlue" Text=""></asp:Label>
        </td>
	</tr>
	<tr>
		<td class="auto-style6">
            <asp:Label ID="lblDepartamento" runat="server" Font-Size="X-Large" ForeColor="LightBlue" Text=""></asp:Label>
        </td>
	</tr>
	<tr>
		<td class="auto-style6">
            <asp:Label ID="lblArea" runat="server" Font-Size="X-Large" ForeColor="LightBlue" Text=""></asp:Label>
        </td>
	</tr>
	<tr>
		<td class="auto-style6">
            <asp:Label ID="lblWeb" runat="server" Font-Size="X-Large" ForeColor="LightBlue" Text=""></asp:Label>
        </td>
	</tr>
	<tr>
		<td class="auto-style6">
            <asp:Label ID="lblFono" runat="server" Font-Size="X-Large" ForeColor="LightBlue" Text=""></asp:Label>
        </td>
	</tr>
	<tr>
		<td class="auto-style6">
            <asp:Label ID="lblMail" runat="server" Font-Size="X-Large" ForeColor="LightBlue" Text=""></asp:Label>
        </td>
	</tr>
	<tr>
		<td class="auto-style6">&nbsp;</td>
	</tr>
	<tbody>
</table>
    </asp:Panel>
</asp:Content>

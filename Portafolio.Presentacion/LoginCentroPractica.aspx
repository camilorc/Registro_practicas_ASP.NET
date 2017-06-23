﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginCentroPractica.aspx.cs" Inherits="Portafolio.Presentacion.LoginCentroPractica" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Login ID="loginCentroP" runat="server" BackColor="#F7F7DE" BorderColor="#CCCC99" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="10pt" OnAuthenticate="loginCentroP_Authenticate" Width="459px">
            <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />
        </asp:Login>
          <br />
            <asp:Label ID="lblMessage" runat="server" Text="¿Olvido la contraseña?" />
            <br />
            <asp:TextBox ID="txtEmail" runat="server" Width = "250"/>
            <br />
            <asp:Button Text="ENVIAR" runat="server" OnClick="SendEmail" />
        <br />
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginAlumno.aspx.cs" Inherits="Portafolio.Presentacion.LoginAlumno" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Login ID="LoginAlumnoWeb" runat="server" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" Width="484px" OnAuthenticate="LoginAlumnoWeb_Authenticate" UserNameLabelText="Rut sin guion">
            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
            <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
            <TextBoxStyle Font-Size="0.8em" />
            
            <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
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

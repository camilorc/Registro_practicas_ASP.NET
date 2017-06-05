<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Acta3.aspx.cs" Inherits="WebApplication1.Acta3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 1216px;
        }
        .auto-style2 {
            height: 47px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellspacing="10" cellpadding="10"> 
 <tr> 
    <td align="center">Formalidades</td> 
    <td align="center"> 
        <table cellspacing="2" cellpadding="2"> 
       <tr> 
            <td>Portada</td> 
            <td>2%</td> 
           <td>
               <asp:TextBox ID="txtNota1" runat="server" MaxLength="7"  TextMode="Number" ></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNota1" ErrorMessage="(*)Obligatorio" ForeColor="#CC0000" SetFocusOnError="True"></asp:RequiredFieldValidator>
           </td>
       </tr> 
       <tr>
            <td class="auto-style2">Índice</td> 
            <td class="auto-style2">2%</td>
            <td class="auto-style2">
               <asp:TextBox ID="txtNota2" runat="server" TextMode="Number"></asp:TextBox>
           </td> 
        </tr> 
        <tr>
            <td>Bibliografía </td> 
            <td>2%</td>
            <td>
               <asp:TextBox ID="txtNota3" runat="server" TextMode="Number"></asp:TextBox>
           </td>  
        </tr>
        <tr>
            <td>Anexos </td> 
            <td>5%</td> 
            <td>
               <asp:TextBox ID="txtNota4" runat="server" TextMode="Number"></asp:TextBox>
           </td> 
        </tr>
            <tr>
                <td>Anillado </td> 
                <td>2%</td> 
                <td>
               <asp:TextBox ID="txtNota5" runat="server" TextMode="Number"></asp:TextBox>
           </td> 
            </tr>
            <tr>
                <td>Diagramación </td> 
                <td>2%</td> 
                <td>
               <asp:TextBox ID="txtNota6" runat="server" TextMode="Number"></asp:TextBox>
           </td> 
            </tr>
            <tr>
                <td>Aspectos lingüísticos </td> 
                <td>10%</td> 
                <td>
               <asp:TextBox ID="txtNota7" runat="server" TextMode="Number"></asp:TextBox>
           </td> 
            </tr>
        </table> 
 </td> 
 </tr> 
</table>
        <table cellspacing="10" cellpadding="10"> 
 <tr> 
    <td align="center">Empresa</td> 
    <td align="center"> 
        <table cellspacing="2" cellpadding="2"> 
       <tr> 
            <td>Introducción</td> 
            <td>5%</td> 
           <td>
               <asp:TextBox ID="txtNota8" runat="server" TextMode="Number"></asp:TextBox>
           </td> 
       </tr> 
       <tr>
            <td>Antecedentes</td> 
            <td>5%</td> 
           <td>
               <asp:TextBox ID="txtNota9" runat="server" TextMode="Number"></asp:TextBox>
           </td> 
        </tr> 
        <tr>
            <td>Descripcion de la empresa </td> 
            <td>5%</td> 
            <td>
               <asp:TextBox ID="txtNota10" runat="server" TextMode="Number"></asp:TextBox>
           </td> 
        </tr>
        </table> 
 </td> 
 </tr> 
</table>
        <table cellspacing="10" cellpadding="10"> 
 <tr> 
    <td align="center">Descripción de la práctica</td> 
    <td align="center"> 
        <table cellspacing="2" cellpadding="2"> 
       <tr> 
            <td>Descripción del área donde <br />trabajó; funciones y estructuras</td> 
            <td>5%</td> 
           <td>
               <asp:TextBox ID="txtNota11" runat="server" TextMode="Number"></asp:TextBox>
           </td> 
       </tr> 
       <tr>
            <td>Descripción del trabajo realizado <br />(objetivos, desarrollo, dificultades, logros)</td> 
            <td>20%</td> 
           <td>
               <asp:TextBox ID="txtNota12" runat="server" TextMode="Number"></asp:TextBox>
           </td> 
        </tr> 
        <tr>
            <td>Recomendaciones para futuras mejoras <br />de los procesos en los que estuvo involucrado </td> 
            <td>10%</td> 
            <td>
               <asp:TextBox ID="txtNota13" runat="server" TextMode="Number"></asp:TextBox>
           </td> 
        </tr>
        </table> 
 </td> 
 </tr> 
</table>
        <table cellspacing="10" cellpadding="10"> 
 <tr> 
    <td align="center">Conclusión</td> 
    <td align="center" class="auto-style1"> 
        <table cellspacing="2" cellpadding="2"> 
       <tr> 
            <td>Conclusiones y Recomendaciones  de la actividad.</td> 
            <td>25%</td> 
           <td>
               <asp:TextBox ID="txtNota14" runat="server" TextMode="Number"></asp:TextBox>
           </td> 
       </tr> 
        </table>
         
 </td> 
 </tr> 
</table>
    <table cellspacing="10" cellpadding="10"> 
 <tr> 
    <td align="center">
        <asp:Button ID="btnCalcular" runat="server" Text="Calcular" OnClick="btnCalcular_Click" />
     </td> 
    <td align="center"> 
        <table cellspacing="2" cellpadding="2"> 
       <tr> 
            <td></td> 
            <td>Nota Final</td> 
           <td>
               <asp:TextBox ID="txtNotaFinal" runat="server" ReadOnly="true"></asp:TextBox>
           </td> 
       </tr> 
        </table>
         
 </td> 
 </tr> 
</table>
<br />
    <asp:Label ID="lblUpdate" runat="server" Text="."></asp:Label>
    <br />
    <asp:Label ID="lblMensaje" runat="server" Text="."></asp:Label>
    <br />
    <asp:Button ID="btnEvaluar" runat="server" Text="Evaluar" OnClick="btnEvaluar_Click" />
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Empleado.Master" AutoEventWireup="true" CodeBehind="MiPerfilCentro.aspx.cs" Inherits="Portafolio.Presentacion.MiPerfilCentro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container">
        <br />
        <div class="row">
            <div class="col-md-10">
                <form class="form-horizontal">

                  <div class="form-group">
                    <label for="inputNombres" class="col-sm-2 control-label">Nombre Centro de Práctica</label>
                    <div class="col-sm-10">
                      <asp:TextBox ID="txtNombreCentro" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                  </div>

                  <br />
                  <div class="form-group">
                    <label for="txtApellido1" class="col-sm-2 control-label">Dirección</label>
                    <div class="col-sm-10">
                       <asp:TextBox ID="txtDireccion" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                  </div>

                  <br />
                  <div class="form-group">
                    <label for="txtApellido2" class="col-sm-2 control-label">Departamento</label>
                    <div class="col-sm-10">
                       <asp:TextBox ID="txtDepartamento" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                  </div>

                  <br />
                  <div class="form-group">
                    <label for="txtFechaN" class="col-sm-2 control-label">Area</label>
                    <div class="col-sm-10">
                       <asp:TextBox ID="txtArea" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                  </div>

                <br />
                  <div class="form-group">
                    <label for="txtDireccion" class="col-sm-2 control-label">Razón Social</label>
                    <div class="col-sm-10">
                       <asp:TextBox ID="txtRazon" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                  </div>

                    <br />
                  <div class="form-group">
                    <label for="txtEmail" class="col-sm-2 control-label">Página Web</label>
                    <div class="col-sm-10">
                       <asp:TextBox ID="txtWeb" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                  </div>

                     <br />
                  <div class="form-group">
                    <label for="txtEmail" class="col-sm-2 control-label">Teléfono</label>
                    <div class="col-sm-10">
                       <asp:TextBox ID="txtTelefono" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                  </div>

                     <br />
                  <div class="form-group">
                    <label for="txtEmail" class="col-sm-2 control-label">Email</label>
                    <div class="col-sm-10">
                       <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                  </div>

                   
                  <br />
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                      <asp:Button runat="server" Text="Editar" OnClick="Editar_Click"  CssClass="btn btn-success"></asp:Button>
                        <asp:Label ID="lbl_mensaje" runat="server"></asp:Label>
                    </div>
                  </div>
                </form>
            </div>
        </div>
     </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MiPerfilDocente.aspx.cs" Inherits="Portafolio.Presentacion.MiPerfilDocente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br />
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <ul class="nav nav-pills">
                  <li role="presentation"><a href="InicioDocente.aspx">Home</a></li>
                  <li role="presentation"><a href="#" >Evaluar</a></li>
                  <li role="presentation" class="active"><a href="MiPerfilDocente.aspx" >Mi Perfil</a></li>
                  <li role="presentation"><a href="#">Cerrar Sesión</a></li>
                </ul>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-10">
                <form class="form-horizontal">

                  <div class="form-group">
                    <label for="inputNombres" class="col-sm-2 control-label">Nombres</label>
                    <div class="col-sm-10">
                      <asp:TextBox ID="txtNombres" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                  </div>

                  <br />
                  <div class="form-group">
                    <label for="txtApellido1" class="col-sm-2 control-label">Apellido Materno</label>
                    <div class="col-sm-10">
                       <asp:TextBox ID="txtApellido1" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                  </div>

                  <br />
                  <div class="form-group">
                    <label for="txtApellido2" class="col-sm-2 control-label">Apellido Paterno</label>
                    <div class="col-sm-10">
                       <asp:TextBox ID="txtApellido2" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                  </div>

                  <br />
                  <div class="form-group">
                    <label for="txtFechaN" class="col-sm-2 control-label">Nacimiento</label>
                    <div class="col-sm-10">
                       <asp:TextBox ID="txtFechaN" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                  </div>

                <br />
                  <div class="form-group">
                    <label for="txtDireccion" class="col-sm-2 control-label">Direccion</label>
                    <div class="col-sm-10">
                       <asp:TextBox ID="txtDireccion" runat="server" CssClass="form-control"></asp:TextBox>
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
                      <button type="submit" class="btn btn-primary">Editar</button>
                    </div>
                  </div>
                </form>

            </div>
            
        </div>


     </div>
   

        
</asp:Content>

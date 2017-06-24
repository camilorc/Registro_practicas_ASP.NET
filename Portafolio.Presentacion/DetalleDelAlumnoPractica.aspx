<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DetalleDelAlumnoPractica.aspx.cs" Inherits="Portafolio.Presentacion.DetalleDelAlumnoPractica" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <ul class="nav nav-pills">
                  <li role="presentation" class="active"><a href="InicioDocente.aspx">Home</a></li>
                  <li role="presentation"><a href="#" >Evaluar</a></li>
                  <li role="presentation"><a href="MiPerfilDocente.aspx" >Mi Perfil</a></li>
                  <li role="presentation"><a href="#">Cerrar Sesión</a></li>
                </ul>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">
                <h2>Bienvenido(a) <asp:Label ID="lbl_nom_docente" runat="server" Text="Label"></asp:Label></h2>
 
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                
                
                <table class="table table-striped">
                    <thead> 
                        <tr> 
                            <th>Campos</th> 
                            <th>Detalle</th> 
                            
                        </tr> 
                    </thead>
                    <tbody>
                      <tr>
                         <th>Rut:</th>
                         <th><asp:label runat="server" text="Label" ID="lbl_rut"></asp:label></th>
                      </tr>
                    <tr>
                         <th>Nombres:</th>
                         <th>
                             <asp:label runat="server" text="Label" ID="lbl_nombres"></asp:label>
                         </th>
                      </tr>
                        <tr>
                         <th>Appelido Materno:</th>
                         <th><asp:label runat="server" text="Label" ID="lbl_apellido1"></asp:label></th>
                      </tr>
                        <tr>
                         <th>Apellido Paterno:</th>
                         <th><asp:label runat="server" text="Label" ID="lbl_apellido2"></asp:label></th>
                      </tr>
                        <tr>
                         <th>Email:</th>
                         <th><asp:label runat="server" text="Label" ID="lbl_email_alumno"></asp:label></th>
                      </tr>
                        <tr>
                         <th>Fono:</th>
                         <th><asp:label runat="server" text="Label" ID="lbl_fono"></asp:label></th>
                      </tr>
                        <tr>
                         <th>Carrera:</th>
                         <th><asp:label runat="server" text="Label" ID="lbl_carrera"></asp:label></th>
                      </tr>
                        <tr>
                         <th>Centro Práctica:</th>
                         <th><asp:label runat="server" text="Label" ID="lbl_centro_practica"></asp:label></th>
                      </tr>
                        <tr>
                         <th>Email Centro:</th>
                         <th><asp:label runat="server" text="Label" ID="lbl_email_centro"></asp:label></th>
                      </tr>
                        <tr>
                         <th>Dirección Centro:</th>
                         <th><asp:label runat="server" text="Label" ID="lbl_direccion_centro"></asp:label></th>
                      </tr>
                        <tr>
                         <th>Fecha Inicio:</th>
                         <th><asp:label runat="server" text="Label" ID="lbl_fecha_inicio"></asp:label></th>
                      </tr>
                        <tr>
                         <th>Fecha de término:</th>
                         <th><asp:label runat="server" text="Label" ID="lbl_fecha_termino"></asp:label></th>
                      </tr>
                        <tr>
                         <th>Tipo de práctica:</th>
                         <th><asp:label runat="server" text="Label" ID="lbl_tipo_practica"></asp:label></th>
                      </tr>

                            
                                    
                                                     
                    </tbody>                          
                         
                <table>
                    

                <asp:ObjectDataSource runat="server" ID="ObjectDataSource1"></asp:ObjectDataSource>
            </div>
        </div>
    </div>
</asp:Content>

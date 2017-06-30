<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Acta2.aspx.cs" Inherits="Portafolio.Presentacion.Acta2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

 p.MsoNormal
	{margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	        margin-left: 0cm;
            margin-right: 0cm;
            margin-top: 0cm;
        }
        .auto-style1 {
            width: 154px;
            text-align: left;
        }
        .auto-style2 {
            text-align: left;
        }
        .auto-style3 {
            width: 207px;
        }
        .auto-style4 {
            text-align: left;
            width: 207px;
        }
        .auto-style5 {
            text-align: left;
            width: 193px;
        }
        .auto-style6 {
            text-align: left;
            width: 212px;
        }
        .auto-style7 {
            text-align: right;
        }
        .auto-style10 {
            text-align: center;
        }
        .auto-style11 {
            width: 31%;
        }
        .auto-style12 {
            width: 13%;
        }
        .auto-style13 {
            width: 2%;
        }
        .auto-style17 {
            width: 4%;
        }
        .auto-style18 {
            width: 3%;
        }
        .auto-style19 {
            width: 3px;
        }
        .auto-style21 {
        }
        .auto-style22 {
            width: 64px;
        }
        .auto-style23 {
        }
        .auto-style24 {
            width: 222px;
        }
        .auto-style25 {
            width: 44px;
        }
        #TextArea3 {
            height: 73px;
            width: 843px;
        }
        #TextArea2 {
            width: 841px;
            height: 88px;
        }
        .auto-style26 {
            height: 75px;
        }
        .auto-style27 {
            height: 65px;
        }
        #TextArea1 {
            height: 81px;
            width: 835px;
        }
        #Button1 {
            text-align: center;
        }
        .auto-style28 {
            text-align: right;
            height: 30px;
        }
        .auto-style29 {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<br />    
<div class="container">
    <div class="row">
            <div class="col-md-12">
                <ul class="nav nav-pills">
                  <li role="presentation" ><a href="InicioEmpleador.aspx">Home</a></li>
                  <li role="presentation" class="active"><a href="Acta2.aspx">Evaluar</a></li>
                  <li role="presentation"><a href="#" runat="server" onserverclick="btn_cerrar_Click">Cerrar Sesión</a></li>
                </ul>
            </div>
        </div>
    <br />
    <h1>PAUTA DE EVALUACIÓN PRÁCTICA POR PARTE DE LA EMPRESA</h1>
    <br />
<div class="row">
    <div class="col-md-6">
        <table style="width:100%;">
            <tr>
                <td colspan="3" class="auto-style2"><strong>Alumno</strong></td>
            </tr>
            <tr>
                <td class="auto-style1">Nombre Completo</td>
                <td>
                    <asp:DropDownList ID="ddl_alumnos" runat="server" AutoPostBack="True" Width="301px" OnSelectedIndexChanged="ddl_alumnos_SelectedIndexChanged">
                    </asp:DropDownList>
                    </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">RUT</td>
                <td>
                    <asp:TextBox ID="txt_rut_alum" runat="server" Width="200px" Enabled="False"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Domicilio </td>
                <td>
                    <asp:TextBox ID="txt_dom_alum" runat="server" Width="208px" Enabled="False"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Carrera</td>
                <td>
                    <asp:TextBox ID="txt_carr_alum" runat="server" Width="219px" Enabled="False"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</div>

<br />

<div class="row" >
    <div class="col-md-1"></div>
    <div class="col-md-10">
        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
            <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingOne">
                      <h4 class="panel-title">
                        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                          Empresa o Institución
                        </a>
                      </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                      <div class="panel-body">
                        <table style="width:100%;">
                    
                            <tr>
                                <td class="auto-style3" style="text-align: left">Nombre</td>
                                <td>
                                    <asp:TextBox ID="txt_nom_emp" runat="server" Enabled="False"></asp:TextBox>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style4">Razón social</td>
                                <td>
                                    <asp:TextBox ID="txt_razon_emp" runat="server" Enabled="False"></asp:TextBox>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style4">Dirección</td>
                                <td>
                                    <asp:TextBox ID="txt_direc_emp" runat="server" Enabled="False"></asp:TextBox>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style4">Página Web</td>
                                <td>
                                    <asp:TextBox ID="txt_web_emp" runat="server" Enabled="False" OnTextChanged="txt_web_emp_TextChanged"></asp:TextBox>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style4">Nombre Jefe directo</td>
                                <td>
                                    <asp:TextBox ID="txt_jefe_emp" runat="server" Enabled="False"></asp:TextBox>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style4">Teléfono de contacto</td>
                                <td>
                                    <asp:TextBox ID="txt_fono_emp" runat="server" Enabled="False"></asp:TextBox>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style4">Correo Electrónico</td>
                                <td>
                                    <asp:TextBox ID="txt_email_emp" runat="server" Enabled="False"></asp:TextBox>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style3">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>




                      </div>
                    </div>
            </div>

            <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingTwo">
                      <h4 class="panel-title">
                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                          Profesor Supervisor
                        </a>
                      </h4>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                      <div class="panel-body">
                       <table style="width: 100%;">
                   
                            <tr>
                                <td class="auto-style5">Nombre Completo</td>
                                <td>
                                    <asp:TextBox ID="txt_nom_prof" runat="server" Enabled="False"></asp:TextBox>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style5">Rut</td>
                                <td>
                                    <asp:TextBox ID="txt_rut_prof" runat="server" Enabled="False"></asp:TextBox>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style5">Teléfono</td>
                                <td>
                                    <asp:TextBox ID="txt_fono_prof" runat="server" Enabled="False"></asp:TextBox>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style5">Correo Electrónico</td>
                                <td>
                                    <asp:TextBox ID="txt_email_prof" runat="server" Enabled="False"></asp:TextBox>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                      </div>
                    </div>
            </div>

            <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingThree">
                      <h4 class="panel-title">
                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                          Fecha inicio práctica
                        </a>
                      </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                      <div class="panel-body">
                        <table style="width: 100%;">
                    
                            <tr>
                                <td class="auto-style6">Fecha inicio práctica</td>
                                <td>
                                    <asp:TextBox ID="txt_ini_prac" runat="server" OnTextChanged="txt_ini_prac_TextChanged"></asp:TextBox>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style6">Fecha término de práctica</td>
                                <td>
                                    <asp:TextBox ID="txt_term_prac" runat="server"></asp:TextBox>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style6">Horas cronológicas realizadas</td>
                                <td>
                                    <asp:TextBox ID="txt_horas_prac" runat="server"></asp:TextBox>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                      </div>
                    </div>
            </div>

            <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingFour">
                          <h4 class="panel-title">
                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                              Condiciones personales del alumno en práctica
                            </a>
                          </h4>
                        </div>
                        <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
                          <div class="panel-body">
                            <table style="width: 100%;">
                        
                                <tr>
                                    <td class="auto-style11">&nbsp;</td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style10" colspan="7">Criterio de evaluación</td>
                                    <td class="auto-style13">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style11">&nbsp;</td>
                                    <td class="auto-style12">&nbsp;</td>
                                    <td class="auto-style25">1</td>
                                    <td class="auto-style17">2</td>
                                    <td class="auto-style18">3</td>
                                    <td class="auto-style13">4</td>
                                    <td class="auto-style18">5</td>
                                    <td class="auto-style19">6</td>
                                    <td class="auto-style22">7</td>
                                    <td class="auto-style13">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style11">1. Presentación Personal</td>
                                    <td class="auto-style12">Insatisfactoria</td>
                                    <td class="auto-style21" colspan="7">
                                        <asp:DropDownList ID="DropDownList1" runat="server" Height="21px" Width="183px">
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>5</asp:ListItem>
                                            <asp:ListItem>6</asp:ListItem>
                                            <asp:ListItem>7</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style13">Excelente</td>
                                </tr>
                                <tr>
                                    <td class="auto-style11">2. Puntualidad</td>
                                    <td class="auto-style12">Atrasos diarios</td>
                                    <td class="auto-style21" colspan="7">
                                        <asp:DropDownList ID="DropDownList2" runat="server" Height="21px" Width="183px">
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>5</asp:ListItem>
                                            <asp:ListItem>6</asp:ListItem>
                                            <asp:ListItem>7</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style13">Sin atrasos</td>
                                </tr>
                                <tr>
                                    <td class="auto-style11">3. Asistencia</td>
                                    <td class="auto-style12">Menos de 75%</td>
                                    <td class="auto-style21" colspan="7">
                                        <asp:DropDownList ID="DropDownList3" runat="server" Height="21px" Width="183px">
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>5</asp:ListItem>
                                            <asp:ListItem>6</asp:ListItem>
                                            <asp:ListItem>7</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style13">100%</td>
                                </tr>
                                <tr>
                                    <td class="auto-style11">4. Responsabilidad</td>
                                    <td class="auto-style12">Irresponsable</td>
                                    <td class="auto-style21" colspan="7">
                                        <asp:DropDownList ID="DropDownList4" runat="server" Height="21px" Width="183px">
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>5</asp:ListItem>
                                            <asp:ListItem>6</asp:ListItem>
                                            <asp:ListItem>7</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style13">Responsable</td>
                                </tr>
                                <tr>
                                    <td class="auto-style11">5. Cooperación e iniciativa</td>
                                    <td class="auto-style12">No se percibe</td>
                                    <td class="auto-style21" colspan="7">
                                        <asp:DropDownList ID="DropDownList5" runat="server" Height="21px" Width="183px">
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>5</asp:ListItem>
                                            <asp:ListItem>6</asp:ListItem>
                                            <asp:ListItem>7</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style13">Destacada</td>
                                </tr>
                                <tr>
                                    <td class="auto-style11">6. Adaptabilidad al medio laboral</td>
                                    <td class="auto-style12">No se adapta</td>
                                    <td class="auto-style21" colspan="7">
                                        <asp:DropDownList ID="DropDownList6" runat="server" Height="21px" Width="183px">
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>5</asp:ListItem>
                                            <asp:ListItem>6</asp:ListItem>
                                            <asp:ListItem>7</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style13">Con facilidad</td>
                                </tr>
                                <tr>
                                    <td class="auto-style11">7. Uso del lenguaje y comunicación</td>
                                    <td class="auto-style12">Con difultad</td>
                                    <td class="auto-style21" colspan="7">
                                        <asp:DropDownList ID="DropDownList7" runat="server" Height="21px" Width="183px">
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>5</asp:ListItem>
                                            <asp:ListItem>6</asp:ListItem>
                                            <asp:ListItem>7</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style13">Gran Habilidad</td>
                                </tr>
                                <tr>
                                    <td class="auto-style11">8. Demuestra cortesía y atención</td>
                                    <td class="auto-style12">Nunca</td>
                                    <td class="auto-style21" colspan="7">
                                        <asp:DropDownList ID="DropDownList8" runat="server" Height="21px" Width="183px">
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>5</asp:ListItem>
                                            <asp:ListItem>6</asp:ListItem>
                                            <asp:ListItem>7</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style13">Siempre</td>
                                </tr>
                                <tr>
                                    <td class="auto-style11">9. Respeta y escucha otras ideas</td>
                                    <td class="auto-style12">Nunca</td>
                                    <td class="auto-style21" colspan="7">
                                        <asp:DropDownList ID="DropDownList9" runat="server" Height="21px" Width="183px">
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>5</asp:ListItem>
                                            <asp:ListItem>6</asp:ListItem>
                                            <asp:ListItem>7</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style13">Siempre</td>
                                </tr>
                                <tr>
                                    <td class="auto-style11">10. Es capaz de controlar sus emociones</td>
                                    <td class="auto-style12">Nunca</td>
                                    <td class="auto-style21" colspan="7">
                                        <asp:DropDownList ID="DropDownList10" runat="server" Height="21px" Width="183px">
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>5</asp:ListItem>
                                            <asp:ListItem>6</asp:ListItem>
                                            <asp:ListItem>7</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style13">Siempre</td>
                                </tr>
                                <tr>
                                    <td class="auto-style11">11. Mantiene relaciones publicas</td>
                                    <td class="auto-style12">Nunca</td>
                                    <td class="auto-style21" colspan="7">
                                        <asp:DropDownList ID="DropDownList11" runat="server" Height="21px" Width="183px">
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>5</asp:ListItem>
                                            <asp:ListItem>6</asp:ListItem>
                                            <asp:ListItem>7</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style13">Muy buena</td>
                                </tr>
                                <tr>
                                    <td class="auto-style7" colspan="2"><strong>Promedio</strong></td>
                                    <td colspan="4">
                                        <asp:TextBox ID="txt_prom_personal" runat="server" Width="172px" Enabled="False"></asp:TextBox>
                                        
                                    </td>
                                    <td colspan="4">
                                            <asp:Button ID="btn_prom_personal"  runat="server" Text="Calcular" OnClick="btn_prom_personal_Click" />
                    
                                            </td>
                                </tr>
                            </table>
                          </div>
                        </div>
            </div>

            <div class="panel panel-default">
            <div class="panel-heading" role="tab" id="headingFive">
              <h4 class="panel-title">
                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                  Condiciones profesionales del alumno
                </a>
              </h4>
            </div>
            <div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
              <div class="panel-body">
                <table style="width: 100%;">
            
                    <tr>
                        <td class="auto-style23">&nbsp;</td>
                        <td class="auto-style24">&nbsp;</td>
                        <td>1</td>
                        <td>2</td>
                        <td>3</td>
                        <td>4</td>
                        <td>5</td>
                        <td>6</td>
                        <td>7</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style23">1. Motivacion</td>
                        <td class="auto-style24">No demuestra interés</td>
                        <td colspan="7">
                            <asp:DropDownList ID="DropDownList12" runat="server" Height="21px" Width="183px">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>Demuestra interés por obtener un desarrollo armónico, cultural y profesional</td>
                    </tr>
                    <tr>
                        <td class="auto-style23">2. Conocimiento técnico de su especialidad</td>
                        <td class="auto-style24">Deficiente nivel de conocimientos</td>
                        <td colspan="7">
                            <asp:DropDownList ID="DropDownList13" runat="server" Height="21px" Width="183px">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>Excelente nivel de conocimientos para desarrollar su trabajo</td>
                    </tr>
                    <tr>
                        <td class="auto-style23">3. Demuestra concentración y atención al trabajo</td>
                        <td class="auto-style24">Nunca</td>
                        <td colspan="7">
                            <asp:DropDownList ID="DropDownList14" runat="server" Height="21px" Width="183px">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>Siempre</td>
                    </tr>
                    <tr>
                        <td class="auto-style23">4. Es ordenado y acusiosos en la realización de su trabajo</td>
                        <td class="auto-style24">Nunca</td>
                        <td colspan="7">
                            <asp:DropDownList ID="DropDownList15" runat="server" Height="21px" Width="183px">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>Siempre</td>
                    </tr>
                    <tr>
                        <td class="auto-style23">5. Es capaz de aplicar conocimientos técnicos a su que hacer</td>
                        <td class="auto-style24">Nunca</td>
                        <td colspan="7">
                            <asp:DropDownList ID="DropDownList16" runat="server" Height="21px" Width="183px">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>Siempre</td>
                    </tr>
                    <tr>
                        <td class="auto-style23">6. Demuestra interés por consultar y profundizar materias</td>
                        <td class="auto-style24">Nunca</td>
                        <td colspan="7">
                            <asp:DropDownList ID="DropDownList17" runat="server" Height="21px" Width="183px">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>Siempre</td>
                    </tr>
                    <tr>
                        <td class="auto-style23">7. Es capaz de utilizar adecuadamente los recursos materiales de que dispone</td>
                        <td class="auto-style24">Nunca</td>
                        <td colspan="7">
                            <asp:DropDownList ID="DropDownList18" runat="server" Height="21px" Width="183px">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>Siempre</td>
                    </tr>
                    <tr>
                        <td class="auto-style23">8. Es capaz de mantener el ritmo de trabajo</td>
                        <td class="auto-style24">Nunca</td>
                        <td colspan="7">
                            <asp:DropDownList ID="DropDownList19" runat="server" Height="21px" Width="183px">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>Siempre</td>
                    </tr>
                    <tr>
                        <td class="auto-style23">9. Demuestra cumplimiento oportuno de las tareas encomendadas </td>
                        <td class="auto-style24">Nunca</td>
                        <td colspan="7">
                            <asp:DropDownList ID="DropDownList20" runat="server" Height="21px" Width="183px">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>Siempre</td>
                    </tr>
                    <tr>
                        <td class="auto-style28" colspan="2"><strong>Promedio</strong></td>
                        <td colspan="7" class="auto-style29">
                            <asp:TextBox ID="txt_prom_prof" runat="server" Width="167px" Enabled="False" ></asp:TextBox>
                            </td>
                        <td class="auto-style29">
                            <asp:Button ID="btn_prom_profesional" runat="server" Text="Calcular" OnClick="btn_prom_profesional_Click" />
                        </td>
                    </tr>
                </table>
              </div>
            </div>
          </div>

            <div class="panel panel-default">
            <div class="panel-heading" role="tab" id="headingSix">
              <h4 class="panel-title">
                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
                  Clasificación global de la práctica en terreno
                </a>
              </h4>
            </div>
            <div id="collapseSix" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSix">
              <div class="panel-body">
                <table style="width: 100%; margin-top: 33px;">
        
                <tr>
                    <td>Enumere las principales tareas desempeñadas por el alumno</td>
                </tr>
                <tr>
                    <td class="auto-style27">
                        <asp:TextBox ID="txtTareas" runat="server" Width="580px" ></asp:TextBox>
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>Señale lo que usted considera aportes del alumno, hacia el centro de práctica</td>
                </tr>
                <tr>
            
                    <td class="auto-style26">
                        <br />
                        <asp:TextBox ID="txtAportes" runat="server" Width="578px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Sugerencias para permitir elevar el nivel de formación del alumno</td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtSugerencias" runat="server" Width="585px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Ingresar" />
                        <asp:Label ID="lbl_mensaje" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
              </div>
            </div>
          </div>

        </div>
    </div>
    
</div>    

         
        

  
</div>    
</asp:Content>

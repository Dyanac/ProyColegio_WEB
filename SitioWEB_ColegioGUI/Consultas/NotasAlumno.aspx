<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="NotasAlumno.aspx.cs" Inherits="SitioWEB_ColegioGUI.Consultas.NotasAlumno" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" tagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Cabecera" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 80%;
        }
        .auto-style2 {
            width: 122px;
        }
        .auto-style3 {
            width: 157px;
        }
        .auto-style5 {
            height: 33px;
        }
        .auto-style7 {
            font-family: Verdana;
            font-size: 10pt;
            color: #993366;
            width: 157px;
        }
        .auto-style9 {
            height: 33px;
            width: 376px;
        }
        .auto-style10 {
            width: 376px;
        }
        .auto-style11 {
            font-size: smaller;
            height: 29px;
        }
        .auto-style12 {
            width: 376px;
            text-align: center;
            height: 43px;
        }
        .auto-style13 {
            font-family: Verdana;
            font-size: 10pt;
            color: #993366;
            width: 122px;
        }
        .auto-style14 {
            border: 1px solid gray;
            text-align: right;
            margin-left: 0px;
        }
        .auto-style15 {
            width: 122px;
            height: 43px;
        }
        .auto-style16 {
            width: 157px;
            height: 43px;
        }
        .auto-style17 {
            height: 43px;
        }
        .auto-style18 {
            font-family: Verdana;
            font-size: 10pt;
            color: #993366;
            width: 122px;
            height: 33px;
        }
        .auto-style19 {
            width: 157px;
            height: 33px;
        }
        .auto-style20 {
            font-family: Verdana;
            font-size: 10pt;
            color: #993366;
            width: 122px;
            height: 35px;
        }
        .auto-style21 {
            width: 376px;
            height: 35px;
        }
        .auto-style22 {
            font-family: Verdana;
            font-size: 10pt;
            color: #993366;
            width: 157px;
            height: 35px;
        }
        .auto-style23 {
            height: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Principal" runat="server">
    <p class="tituloForm" >CONSULTA NOTAS DEL ALUMNO</p>
    <table class="auto-style1">
        <tr>
            <td class="auto-style13">Ingrese Alumno: </td>
            <td class="auto-style10">
                <asp:TextBox ID="txtIdAlumno" runat="server" CssClass="TextBoxDerecha" MaxLength="2" Width="70px"></asp:TextBox>
                <asp:ImageButton ID="btnBuscar" runat="server" ImageUrl="~/Images/Buscar.png" OnClick="btnBuscar_Click1" />
            </td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">Nombre(s):</td>
            <td class="auto-style9">
                <asp:TextBox ID="txtNombre" runat="server" CssClass="TextBoxDerecha" ReadOnly="True" Width="279px"></asp:TextBox>
            </td>
            <td class="auto-style7">Dirección:</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtDireccion" runat="server" CssClass="TextBoxDerecha" ReadOnly="True" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">Apellidos:</td>
            <td class="auto-style10">
                <asp:TextBox ID="txtApellido" runat="server" CssClass="TextBoxDerecha" ReadOnly="True" Width="279px"></asp:TextBox>
            </td>
            <td class="auto-style7">Ubigeo:</td>
            <td>
                <asp:TextBox ID="txtUbigeo" runat="server" CssClass="auto-style14" ReadOnly="True" Width="201px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">DNI:</td>
            <td class="auto-style21">
                <asp:TextBox ID="txtDNI" runat="server" CssClass="TextBoxDerecha" ReadOnly="True" Width="120px"></asp:TextBox>
            </td>
            <td class="auto-style22">Fecha de Nacimiento:</td>
            <td class="auto-style23">
                <asp:TextBox ID="txtFecNac" runat="server" CssClass="TextBoxDerecha" ReadOnly="True" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">Sexo:</td>
            <td class="auto-style10">
                <asp:TextBox ID="txtSexo" runat="server" CssClass="TextBoxDerecha" ReadOnly="True" Width="120px"></asp:TextBox>
            </td>
            <td class="auto-style7">Estado:</td>
            <td>
                <asp:TextBox ID="txtEstado" runat="server" CssClass="TextBoxDerecha" ReadOnly="True" Width="120px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11" colspan="4"><strong>INGRESE GRADO DEL ALUMNO A CONSULTAR:</strong></td>
        </tr>
        <tr>
            <td class="auto-style18">Grado:</td>
            <td class="auto-style9">
                <asp:DropDownList ID="cboGrado" runat="server" AutoPostBack="True" CssClass="DropDownList" Width="154px">
                </asp:DropDownList>
            </td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style15"></td>
            <td class="auto-style12">
                <asp:Button ID="btnConsultar" runat="server" CssClass="boton2" Height="26px" OnClick="btnConsultar_Click1" Text="Consultar" />
            </td>
            <td class="auto-style16"></td>
            <td class="auto-style17"></td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lblRegistros" runat="server" CssClass="labelErrores"></asp:Label>
            </td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Consultas/Consultas.aspx">Retornar</asp:HyperLink>
            </td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    


    <asp:GridView ID="grvDatos" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="GriedView" ForeColor="Black" GridLines="Vertical" Width="1522px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" Height="27px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Curso" HeaderText="Curso" >
            <ItemStyle Font-Bold="True" />
            </asp:BoundField>
            <asp:BoundField DataField="Grado" HeaderText="Grado" >
            <ItemStyle Font-Bold="True" />
            </asp:BoundField>
            <asp:BoundField DataField="Año" HeaderText="Año" >
            <ItemStyle Font-Bold="True" HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="Practica 1" HeaderText="Practica 1" >
            <ItemStyle Font-Bold="True" HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="Practica 2" HeaderText="Practica 2" >
            <ItemStyle Font-Bold="True" HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="Practica 3" HeaderText="Practica 3" >
            <ItemStyle Font-Bold="True" HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="Practica 4" HeaderText="Practica 4" >
            <ItemStyle Font-Bold="True" HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="Examen Parcial" HeaderText="Examen Parcial" >
            <ItemStyle Font-Bold="True" HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="Examen Final" HeaderText="Examen Final" >
            <ItemStyle Font-Bold="True" HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="Promedio Practicas" HeaderText="Promedio Practicas" >
            <ItemStyle Font-Bold="True" HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="Nota Final" HeaderText="Nota Final" >
            <ItemStyle Font-Bold="True" HorizontalAlign="Right" />
            </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
    <br />
    


    <%--Este es el modal popup  que contiene los mensajes --%>
                <%--1 Control target (cualquier control)--%>
              <asp:LinkButton ID="lnkMensaje" runat="server" ></asp:LinkButton>
                 <%--2 el panel que se mostrara en el popup--%>
              <asp:Panel ID="pnlMensaje" runat="server" CssClass="CajaDialogo" Style="display: normal;" Width="500"> 
                    <table border="0" width="500px" style="margin: 0px; padding: 0px; background-color:darkred ; 
                        color: #FFFFFF;"> 
                        <tr> 
                            <td align="center"> 
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                <asp:Label ID="lblTitulo" runat="server" Text="Mensaje" /> 
                            </td> 
                            <td width="12%" class="center"> 
                                <asp:ImageButton ID="btnCerrar" runat="server" ImageUrl="~/Images/Cancelar.png" Style="vertical-align: top;" 
                                    ImageAlign="Right" /> 
                            </td> 
                        </tr> 
                         
                    </table>
                  <div>
                      <br />
                  </div>
                    <div> 
                        <asp:Label ID="lblMensajePopup" runat="server" CssClass="labelTitulo"  /> 
                    </div> 
                  <div>
                       <br />
                  </div>
                    <div> 
                        <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" CausesValidation="False" CssClass="boton-new" /> 
                    </div> 
                   <div>
                       <br />
                  </div>
                </asp:Panel> 
         <%--3 el Modal popup que hace referencia al control target  (1) y al panel (2)--%>
                <ajaxToolkit:ModalPopupExtender ID="PopMensaje" runat="server" TargetControlID="lnkMensaje" 
                    PopupControlID="pnlMensaje" BackgroundCssClass="FondoAplicacion"  OkControlID="btnAceptar" />
    <br />
</asp:Content>

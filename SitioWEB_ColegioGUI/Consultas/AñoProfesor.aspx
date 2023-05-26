<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="AñoProfesor.aspx.cs" Inherits="SitioWEB_ColegioGUI.Consultas.ConsultaProfesor" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" tagPrefix="ajaxToolkit" %>


<asp:Content ID="Content1" ContentPlaceHolderID="Cabecera" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 80%;
        }
        .auto-style2 {
            width: 128px;
        }
        .auto-style3 {
            width: 354px;
        }
        .auto-style6 {
            width: 354px;
            height: 33px;
        }
        .auto-style8 {
            height: 33px;
        }
        .auto-style9 {
            font-family: Verdana;
            font-size: 10pt;
            color: #993366;
            width: 161px;
        }
        .auto-style10 {
            width: 161px;
        }
        .auto-style11 {
            font-family: Verdana;
            font-size: 10pt;
            color: #993366;
            width: 128px;
        }
        .auto-style12 {
            height: 33px;
            font-size: smaller;
        }
        .auto-style13 {
            width: 354px;
            text-align: center;
        }
        .auto-style14 {
            font-family: Verdana;
            font-size: 10pt;
            color: #993366;
            height: 33px;
        }
        .auto-style15 {
            width: 161px;
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Principal" runat="server">
    <p class="tituloForm" >CONSULTA EN QUE GRADOS ENSEÑO UN PROFESOR</p>
    <table class="auto-style1">
        <tr>
            <td class="auto-style11">Ingrese profesor: </td>
            <td class="auto-style3">
                <asp:TextBox ID="txtIdProfesor" runat="server" CssClass="TextBoxDerecha" MaxLength="2" Width="70px"></asp:TextBox>
                <asp:ImageButton ID="btnBuscar" runat="server" ImageUrl="~/Images/Buscar.png" OnClick="btnBuscar_Click1" />
            </td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">Nombre(s):</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtNombre" runat="server" CssClass="TextBoxDerecha" ReadOnly="True" Width="279px"></asp:TextBox>
            </td>
            <td class="auto-style9">Ubigeo: </td>
            <td>
                <asp:TextBox ID="txtUbigeo" runat="server" CssClass="TextBoxDerecha" ReadOnly="True" Width="201px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Apellidos: </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtApellido" runat="server" CssClass="TextBoxDerecha" ReadOnly="True" Width="275px"></asp:TextBox>
            </td>
            <td class="auto-style9">Fecha de Nacimiento:</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtFecNac" runat="server" CssClass="TextBoxDerecha" ReadOnly="True" Width="197px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">DNI: </td>
            <td class="auto-style3">
                <asp:TextBox ID="txtDNI" runat="server" CssClass="TextBoxDerecha" ReadOnly="True" Width="178px"></asp:TextBox>
            </td>
            <td class="auto-style9">Email: </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="TextBoxDerecha" ReadOnly="True" Width="275px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Sexo: </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtSexo" runat="server" CssClass="TextBoxDerecha" ReadOnly="True" Width="148px"></asp:TextBox>
            </td>
            <td class="auto-style9">Sueldo</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtSueldo" runat="server" CssClass="TextBoxDerecha" ReadOnly="True" Width="174px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Teléfono:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtTelf" runat="server" CssClass="TextBoxDerecha" ReadOnly="True" Width="147px"></asp:TextBox>
            </td>
            <td class="auto-style9">Estado:</td>
            <td>
                <asp:TextBox ID="txtEstado" runat="server" CssClass="TextBoxDerecha" ReadOnly="True" Width="170px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12" colspan="4"><strong>INGRESE AÑO:</strong></td>
        </tr>
        <tr>
            <td class="auto-style14">Año:</td>
            <td class="auto-style6">
                <asp:DropDownList ID="cboAño" runat="server" AutoPostBack="True" Width="169px" CssClass="TextBox">
                </asp:DropDownList>
            </td>
            <td class="auto-style15"></td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style13">
                <asp:Button ID="btnConsultar" runat="server" CssClass="boton2" Height="26px" OnClick="btnConsultar_Click" Text="Consultar" Width="77px" />
            </td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lblRegistros" runat="server" CssClass="labelErrores"></asp:Label>
            </td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Consultas/Consultas.aspx">Retornar</asp:HyperLink>
            </td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
    <asp:GridView ID="grvDatos" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="1073px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Grado" HeaderText="Grado">
            </asp:BoundField>
            <asp:BoundField DataField="NomCurso" HeaderText="Nombre de Curso" />
            <asp:BoundField DataField="Dia" HeaderText="Día" />
            <asp:BoundField DataField="HoraInicio" HeaderText="Hora de Inicio">
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="HoraFin" HeaderText="Hora de Fin">
            <ItemStyle HorizontalAlign="Right" />
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
</asp:Content>

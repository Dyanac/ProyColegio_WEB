<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="PromedioAprobadosDesaprobados.aspx.cs" Inherits="SitioWEB_ColegioGUI.Consultas.PromedioAprobadosDesaprobados" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Cabecera" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 80%;
        }
        .auto-style2 {
            width: 764px;
        }
        .auto-style3 {
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Principal" runat="server">
    <p class="tituloForm">Graficos de alumnos aprobados y desaprobados</p>
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">
                <asp:GridView ID="grvAprobados" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="GriedView" ForeColor="Black" GridLines="Vertical" Width="505px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Año" HeaderText="Año">
                        <ItemStyle HorizontalAlign="Right" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Aprobados" HeaderText="Cantidad aprobados">
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
            </td>
            <td class="auto-style3">
                <asp:GridView ID="grvDesaprobados" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="GriedView" ForeColor="Black" GridLines="Vertical" Width="509px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Año" HeaderText="Año">
                        <ItemStyle HorizontalAlign="Right" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Desaprobados" HeaderText="Cantidad desaprobados">
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
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Chart ID="grafAprobados" runat="server" Height="181px" Width="537px">
                    <series>
                        <asp:Series Name="Series1">
                        </asp:Series>
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                    <Titles>
                        <asp:Title BackColor="128, 64, 0" BackSecondaryColor="FloralWhite" BorderColor="Transparent" Font="Microsoft Sans Serif, 10pt, style=Bold" ForeColor="White" Name="Title1" Text="Total alumnos aprobados 2022">
                        </asp:Title>
                    </Titles>
                </asp:Chart>
            </td>
            <td>
                <asp:Chart ID="grafDesaprobados" runat="server" Height="183px" Width="481px" Palette="Fire">
                    <series>
                        <asp:Series ChartArea="ChartArea1" Name="Series1">
                        </asp:Series>
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                    <Titles>
                        <asp:Title BackColor="128, 64, 0" Font="Microsoft Sans Serif, 10pt, style=Bold" ForeColor="White" Name="Title1" Text="Total alumnos desaprobados 2022">
                        </asp:Title>
                    </Titles>
                </asp:Chart>
            </td>
        </tr>
    </table>
    <br />
    <asp:Label ID="lblMensaje" runat="server" CssClass="labelErrores"></asp:Label>
</asp:Content>

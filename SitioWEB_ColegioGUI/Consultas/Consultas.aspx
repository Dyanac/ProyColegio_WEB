<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.master" AutoEventWireup="true" CodeBehind="Consultas.aspx.cs" Inherits="SitioVentasWEB_GUI.Consultas.Consultas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Cabecera" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 606px;
            height: 145px;
        }
        .auto-style2 {
            width: 570px;
            height: 145px;
        }
        .auto-style10 {
            text-align: left;
        }
        .auto-style11 {
            text-align: left;
            width: 402px;
            height: 252px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Principal" Runat="Server">
    &nbsp;<table >
        <caption class="auto-style10">
            <p class="tituloForm">CONSULTAS DEL SISTEMA </p>
            <div class="auto-style11">
                <asp:Image ID="Image1" runat="server" Height="251px" ImageUrl="~/Images/Testeo1.jpg" Width="404px" />
                <br />
                <br />
                <br />
            </div>
        <tr>
            <td class="auto-style2">
                <br />
                <asp:TreeView ID="TreeView1" runat="server" ImageSet="BulletedList4" ShowExpandCollapse="False">
                    <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
                    <Nodes>
                        <asp:TreeNode Text="Consultas" Value="Consultas">
                            <asp:TreeNode Text="Consulta Profesor" Value="Consulta " NavigateUrl="~/Consultas/AñoProfesor.aspx"></asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/Consultas/NotasAlumno.aspx" Text="Consulta notas" Value="Consulta notas"></asp:TreeNode>
                        </asp:TreeNode>
                    </Nodes>
                    <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
                    <ParentNodeStyle Font-Bold="False" />
                    <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
                </asp:TreeView>
                <br />
            </td>
            <td class="auto-style1">
                
            </td>
        </tr>
    </table>
&nbsp;
</asp:Content>



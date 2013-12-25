<%@ Page Title="Administración - Tipos de Competición" Language="C#" MasterPageFile="~/MasterPages/SiteAdmin.master" AutoEventWireup="true" CodeFile="RaceTypes.aspx.cs" Inherits="SiteAdmin_RaceTypes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">
    <table class="auto-style1">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Tipo  Carrera :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txbxNombre" runat="server" Width="450px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Puntos Participación :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txbxPuntos" runat="server" Width="37px"></asp:TextBox>
            </td>
        </tr>        
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Observaciones : "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txbxMemo" runat="server" TextMode="MultiLine" Width="450px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:ImageButton ID="imgBtnFirst" runat="server" Height="25px" ImageAlign="Middle" ToolTip="Primero" Width="25px" ImageUrl="~/Images/Navigation/First.png" OnClick="imgBtnFirst_Click" />
                <asp:ImageButton ID="imgBtnPrevious" runat="server" Height="25px" ImageAlign="Middle" ToolTip="Anterior" Width="25px" ImageUrl="~/Images/Navigation/Back.png" OnClick="imgBtnPrevious_Click" />
                <asp:ImageButton ID="imgBtnNext" runat="server" Height="25px" ImageAlign="Middle" ToolTip="Siguiente" Width="25px" ImageUrl="~/Images/Navigation/Forward.png" OnClick="imgBtnNext_Click" />
                <asp:ImageButton ID="imgBtnLast" runat="server" Height="25px" ImageAlign="Middle" ToolTip="Último" Width="25px" ImageUrl="~/Images/Navigation/Last.png" OnClick="imgBtnLast_Click" />
                <asp:ImageButton ID="imgBtnNew" runat="server" Height="25px" ImageAlign="Middle" ToolTip="Nuevo" Width="25px" ImageUrl="~/Images/Navigation/New.png" OnClick="imgBtnNew_Click" />
                <asp:ImageButton ID="imgBtnEdit" runat="server" Height="25px" ImageAlign="Middle" ToolTip="Editar" Width="25px" ImageUrl="~/Images/Navigation/Modify.png" OnClick="imgBtnEdit_Click" />
                <asp:ImageButton ID="imgBtnSave" runat="server" Height="25px" ImageAlign="Middle" ToolTip="Grabar" Width="25px" ImageUrl="~/Images/Navigation/Save.png" OnClick="imgBtnSave_Click" Enabled="False" />
                <asp:ImageButton ID="imgBtnCancel" runat="server" Height="25px" ImageAlign="Middle" ToolTip="Cancelar" Width="25px" ImageUrl="~/Images/Navigation/Cancel.png" Enabled="False" OnClick="imgBtnCancel_Click" />
                <asp:ImageButton ID="imgBtnDelete" runat="server" Height="25px" ImageAlign="Middle" ToolTip="Borrar" Width="25px" ImageUrl="~/Images/Navigation/Delete.png" OnClick="imgBtnDelete_Click" />
                <br />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="EntityDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="834px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id">
                        <HeaderStyle HorizontalAlign="Left" Width="50px" />
                        <ItemStyle HorizontalAlign="Right" Width="50px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Name" HeaderText="Race Name" SortExpression="Name">
                        <HeaderStyle HorizontalAlign="Left" Width="250px" />
                        <ItemStyle Width="250px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="PuntosPart" HeaderText="Points" SortExpression="PuntosPart">
                        <HeaderStyle HorizontalAlign="Left" Width="50px" />
                        <ItemStyle HorizontalAlign="Right" Width="50px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Memo" HeaderText="Memo" SortExpression="Memo">
                        <HeaderStyle HorizontalAlign="Left" Width="400px" />
                        <ItemStyle Width="400px" />
                        </asp:BoundField>
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=TheClubBDEntities" DefaultContainerName="TheClubBDEntities" EnableFlattening="False" EntitySetName="RaceTypes" OrderBy="it.[Name]">
                </asp:EntityDataSource>
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>


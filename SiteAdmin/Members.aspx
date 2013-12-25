<%@ Page Title="Administración - Miembros" Language="C#" MasterPageFile="~/MasterPages/SiteAdmin.master" AutoEventWireup="true" CodeFile="Members.aspx.cs" Inherits="SiteAdmin_Members" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" />
    <asp:UpdatePanel ID="UpdateMembersGridView" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <table>
                <tr>
                    <td>Botones aquí
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:DetailsView ID="MemberDetailsView" runat="server" AutoGenerateRows="False" CellPadding="4" DataSourceID="EntityDataSource1" ForeColor="#333333" GridLines="None" OnItemUpdated="MemberDetailsView_ItemUpdated" OnItemDeleted="MemberDetailsView_ItemDeleted" OnItemInserted="MemberDetailsView_ItemInserted">
                            <AlternatingRowStyle BackColor="White" />
                            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                            <EditRowStyle BackColor="#2461BF" />
                            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                            <Fields>
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                <asp:BoundField DataField="SecondName" HeaderText="SecondName" SortExpression="SecondName" />
                                <asp:BoundField DataField="eMail" HeaderText="eMail" SortExpression="eMail" />
                                <asp:BoundField DataField="BDate" HeaderText="BDate" SortExpression="BDate" />
                                <asp:BoundField DataField="RegDate" HeaderText="RegDate" SortExpression="RegDate" />
                                <asp:CheckBoxField DataField="Federated" HeaderText="Federated" SortExpression="Federated" />
                                <asp:BoundField DataField="Addres" HeaderText="Addres" SortExpression="Addres" />
                                <asp:BoundField DataField="AddresNumber" HeaderText="AddresNumber" SortExpression="AddresNumber" />
                                <asp:BoundField DataField="CPost" HeaderText="CPost" SortExpression="CPost" />
                                <asp:BoundField DataField="Town" HeaderText="Town" SortExpression="Town" />
                                <asp:BoundField DataField="Province" HeaderText="Province" SortExpression="Province" />
                                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                                <asp:BoundField DataField="tlf" HeaderText="tlf" SortExpression="tlf" />
                                <asp:BoundField DataField="tlfMobile" HeaderText="tlfMobile" SortExpression="tlfMobile" />
                                <asp:BoundField DataField="DNI" HeaderText="DNI" SortExpression="DNI" />
                                <asp:BoundField DataField="theClubNumer" HeaderText="theClubNumer" SortExpression="theClubNumer" />
                                <asp:BoundField DataField="photoUrl" HeaderText="photoUrl" SortExpression="photoUrl" />
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                            </Fields>
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                        </asp:DetailsView>

                        <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=TheClubBDEntities" DefaultContainerName="TheClubBDEntities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="Members" AutoGenerateWhereClause="True" Where="" EntityTypeFilter="Member">
                            <WhereParameters>
                                <asp:ControlParameter ControlID="MembersGridView" Name="MemberID" PropertyName="SelectedValue" Type="Int32" />
                            </WhereParameters>
                        </asp:EntityDataSource>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="MembersGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="EntityDataSource2" ForeColor="#333333" GridLines="None" DataKeyNames="MemberID">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="theClubNumer" HeaderText="theClubNumer" SortExpression="theClubNumer" />
                                <asp:BoundField DataField="photoUrl" HeaderText="photoUrl" SortExpression="photoUrl" />
                                <asp:BoundField DataField="MemberID" HeaderText="MemberID" SortExpression="MemberID" ReadOnly="True" />
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                <asp:BoundField DataField="SecondName" HeaderText="SecondName" SortExpression="SecondName" />
                                <asp:BoundField DataField="eMail" HeaderText="eMail" SortExpression="eMail" />
                                <asp:BoundField DataField="BDate" HeaderText="BDate" SortExpression="BDate" />
                                <asp:BoundField DataField="RegDate" HeaderText="RegDate" SortExpression="RegDate" />
                                <asp:CheckBoxField DataField="Federated" HeaderText="Federated" SortExpression="Federated" />
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
                        <asp:EntityDataSource ID="EntityDataSource2" runat="server" AutoGenerateWhereClause="True" ConnectionString="name=TheClubBDEntities" DefaultContainerName="TheClubBDEntities" EnableFlattening="False" EntitySetName="Members" Where="">
                        </asp:EntityDataSource>

                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>


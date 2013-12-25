<%@ Page Title="Administración - Ficha de Miembro" Language="C#" MasterPageFile="~/MasterPages/SiteAdmin.master" AutoEventWireup="true" CodeFile="AdEditMember.aspx.cs" Inherits="SiteAdmin_AdEditMember" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">   
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="575px" AutoGenerateRows="False" DataKeyNames="MemberID" DataSourceID="SqlDataSource1" DefaultMode="Insert" CellPadding="4" ForeColor="#333333" GridLines="None" OnItemInserted="DetailsView1_ItemInserted" OnItemUpdated="DetailsView1_ItemUpdated" OnModeChanged="DetailsView1_ModeChanged">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <EditRowStyle BackColor="#2461BF" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="MemberID" HeaderText="MemberID" InsertVisible="False" ReadOnly="True" SortExpression="MemberID" />
            <asp:TemplateField HeaderText="Nombre :" SortExpression="Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ErrorMessage="Falta el nombre" ControlToValidate="TextBox1" runat="server" />
                </EditItemTemplate>                         
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ErrorMessage="Falta el nombre" ControlToValidate="TextBox1" runat="server" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Apellidos :" SortExpression="SecondName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("SecondName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ErrorMessage="Faltan los apellidos." ControlToValidate="TextBox2" runat="server" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("SecondName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ErrorMessage="Faltan los apellidos." ControlToValidate="TextBox2" runat="server" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("SecondName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="eMail :" SortExpression="eMail">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("eMail") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ErrorMessage="Falta el mail" ControlToValidate="TextBox3" runat="server" /> 
                    <asp:RegularExpressionValidator ErrorMessage="No es un mail válido" ControlToValidate="TextBox3" runat="server" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("eMail") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ErrorMessage="Falta el mail" ControlToValidate="TextBox3" runat="server" /> 
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("eMail") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="F.Nacimiento :" SortExpression="BDate">
                <EditItemTemplate>
                    <asp:Calendar ID="Calendar1" runat="server" SelectedDate='<%# Bind("BDate") %>'></asp:Calendar>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:Calendar ID="Calendar1" runat="server" SelectedDate='<%# Bind("BDate") %>'></asp:Calendar>                    
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("BDate") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:BoundField DataField="Addres" HeaderText="Dirección :" SortExpression="Addres" />
            <asp:CheckBoxField DataField="Federated" HeaderText="Federado :" SortExpression="Federated" />
            <asp:TemplateField HeaderText="DNI" SortExpression="DNI :">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("DNI") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("DNI") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("DNI") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="tlfMobile" HeaderText="tlf Móvil :" SortExpression="tlfMobile" />
            <asp:BoundField DataField="tlf" HeaderText="tlf Fijo :" SortExpression="tlf" />
            <asp:BoundField DataField="Country" HeaderText="País :" SortExpression="Country" />
            <asp:BoundField DataField="Province" HeaderText="Provincia :" SortExpression="Province" />
            <asp:BoundField DataField="Town" HeaderText="Ciudad :" SortExpression="Town" />
            <asp:BoundField DataField="CPost" HeaderText="C. Postal :" SortExpression="CPost" />
            <asp:BoundField DataField="AddresNumber" HeaderText="Nº :" SortExpression="AddresNumber" />
            <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
</asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:theClubConnectionString1 %>" DeleteCommand="DELETE FROM [Members] WHERE [MemberID] = @original_MemberID" InsertCommand="INSERT INTO [Members] ([Name], [SecondName], [eMail], [BDate], [Addres], [Federated], [DNI], [tlfMobile], [tlf], [Country], [Province], [Town], [CPost], [AddresNumber]) VALUES (@Name, @SecondName, @eMail, @BDate, @Addres, @Federated, @DNI, @tlfMobile, @tlf, @Country, @Province, @Town, @CPost, @AddresNumber)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [MemberID], [Name], [SecondName], [eMail], [BDate], [Addres], [Federated], [DNI], [tlfMobile], [tlf], [Country], [Province], [Town], [CPost], [AddresNumber] FROM [Members] WHERE ([MemberID] = @MemberID)" UpdateCommand="UPDATE [Members] SET [Name] = @Name, [SecondName] = @SecondName, [eMail] = @eMail, [BDate] = @BDate, [Addres] = @Addres, [Federated] = @Federated, [DNI] = @DNI, [tlfMobile] = @tlfMobile, [tlf] = @tlf, [Country] = @Country, [Province] = @Province, [Town] = @Town, [CPost] = @CPost, [AddresNumber] = @AddresNumber WHERE [MemberID] = @original_MemberID">
    <DeleteParameters>
        <asp:Parameter Name="original_MemberID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="SecondName" Type="String" />
        <asp:Parameter Name="eMail" Type="String" />
        <asp:Parameter DbType="Date" Name="BDate" />
        <asp:Parameter Name="Addres" Type="String" />
        <asp:Parameter Name="Federated" Type="Boolean" />
        <asp:Parameter Name="DNI" Type="String" />
        <asp:Parameter Name="tlfMobile" Type="String" />
        <asp:Parameter Name="tlf" Type="String" />
        <asp:Parameter Name="Country" Type="String" />
        <asp:Parameter Name="Province" Type="String" />
        <asp:Parameter Name="Town" Type="String" />
        <asp:Parameter Name="CPost" Type="String" />
        <asp:Parameter Name="AddresNumber" Type="Int32" />
    </InsertParameters>
    <SelectParameters>
        <asp:QueryStringParameter Name="MemberID" QueryStringField="MemberID" Type="Int32" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="SecondName" Type="String" />
        <asp:Parameter Name="eMail" Type="String" />
        <asp:Parameter DbType="Date" Name="BDate" />
        <asp:Parameter Name="Addres" Type="String" />
        <asp:Parameter Name="Federated" Type="Boolean" />
        <asp:Parameter Name="DNI" Type="String" />
        <asp:Parameter Name="tlfMobile" Type="String" />
        <asp:Parameter Name="tlf" Type="String" />
        <asp:Parameter Name="Country" Type="String" />
        <asp:Parameter Name="Province" Type="String" />
        <asp:Parameter Name="Town" Type="String" />
        <asp:Parameter Name="CPost" Type="String" />
        <asp:Parameter Name="AddresNumber" Type="Int32" />
        <asp:Parameter Name="original_MemberID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>


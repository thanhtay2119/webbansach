<%@ Page Title="Management – Genre" Language="C#" MasterPageFile="~/MasterPages/Management.master" AutoEventWireup="true" CodeFile="Genres.aspx.cs" Inherits="Management_Genres" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <body style="background-image:url(../anh/hinhnen.jpg);background-repeat:no-repeat;font-size:20px;margin-left:190px;">
    <h1 style="color:red;margin-left:100px">Danh sách khách hàng</h1>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="MaDG" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="MaDG" HeaderText="MaDG" ReadOnly="True" SortExpression="MaDG" />
            <asp:BoundField DataField="HoTen" HeaderText="HoTen" SortExpression="HoTen" />
            <asp:BoundField DataField="NgaySinh" HeaderText="NgaySinh" SortExpression="NgaySinh" />
            <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
            <asp:BoundField DataField="NgheNghiep" HeaderText="NgheNghiep" SortExpression="NgheNghiep" />
        </Columns>
    </asp:GridView>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="MaDG" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="506px">
        <Fields>
            <asp:BoundField DataField="MaDG" HeaderText="MaDG" ReadOnly="True" SortExpression="MaDG" />
            <asp:BoundField DataField="HoTen" HeaderText="HoTen" SortExpression="HoTen" />
            <asp:BoundField DataField="NgaySinh" HeaderText="NgaySinh" SortExpression="NgaySinh" />
            <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
            <asp:BoundField DataField="NgheNghiep" HeaderText="NgheNghiep" SortExpression="NgheNghiep" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BT6ConnectionString1 %>" DeleteCommand="DELETE FROM [DocGia] WHERE [MaDG] = @MaDG" InsertCommand="INSERT INTO [DocGia] ([MaDG], [HoTen], [NgaySinh], [DiaChi], [NgheNghiep]) VALUES (@MaDG, @HoTen, @NgaySinh, @DiaChi, @NgheNghiep)" ProviderName="<%$ ConnectionStrings:BT6ConnectionString1.ProviderName %>" SelectCommand="SELECT [MaDG], [HoTen], [NgaySinh], [DiaChi], [NgheNghiep] FROM [DocGia]" UpdateCommand="UPDATE [DocGia] SET [HoTen] = @HoTen, [NgaySinh] = @NgaySinh, [DiaChi] = @DiaChi, [NgheNghiep] = @NgheNghiep WHERE [MaDG] = @MaDG">
        <DeleteParameters>
            <asp:Parameter Name="MaDG" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaDG" Type="String" />
            <asp:Parameter Name="HoTen" Type="String" />
            <asp:Parameter DbType="Date" Name="NgaySinh" />
            <asp:Parameter Name="DiaChi" Type="String" />
            <asp:Parameter Name="NgheNghiep" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="HoTen" Type="String" />
            <asp:Parameter DbType="Date" Name="NgaySinh" />
            <asp:Parameter Name="DiaChi" Type="String" />
            <asp:Parameter Name="NgheNghiep" Type="String" />
            <asp:Parameter Name="MaDG" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
        </body>
</asp:Content>


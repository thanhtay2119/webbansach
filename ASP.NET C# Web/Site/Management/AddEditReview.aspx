<%@ Page Title="Management – Insert and Update Reviews" Language="C#" MasterPageFile="~/MasterPages/Management.master" AutoEventWireup="true" CodeFile="AddEditReview.aspx.cs" Inherits="Management_AddEditReview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="SoPhieu,MaDauSach" DataSourceID="SqlDataSource1" Height="50px" Width="160px">
        <Fields>
            <asp:BoundField DataField="SoPhieu" HeaderText="SoPhieu" ReadOnly="True" SortExpression="SoPhieu" />
            <asp:BoundField DataField="MaDauSach" HeaderText="MaDauSach" ReadOnly="True" SortExpression="MaDauSach" />
            <asp:CommandField ShowDeleteButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BT6ConnectionString1 %>" DeleteCommand="DELETE FROM [ChiTiet] WHERE [SoPhieu] = @SoPhieu AND [MaDauSach] = @MaDauSach" InsertCommand="INSERT INTO [ChiTiet] ([SoPhieu], [MaDauSach]) VALUES (@SoPhieu, @MaDauSach)" SelectCommand="SELECT [SoPhieu], [MaDauSach] FROM [ChiTiet] WHERE ([SoPhieu] = @SoPhieu)">
        <DeleteParameters>
            <asp:Parameter Name="SoPhieu" Type="String" />
            <asp:Parameter Name="MaDauSach" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="SoPhieu" Type="String" />
            <asp:Parameter Name="MaDauSach" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="SoPhieu" QueryStringField="SoPhieu" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>


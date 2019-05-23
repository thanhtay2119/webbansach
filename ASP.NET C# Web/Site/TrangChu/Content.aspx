<%@ Page Title="Trang Chủ" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Content.aspx.cs" Inherits="Content" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server" >
    <div style="text-align:left">
        <h1>Chào mừng bạn đã đến với nhà sách Phương Tây</h1>
        <p>Đây là nơi buôn bán và trao đổi sách</p>
    </div>
    <video src="https://www.youtube.com/watch?v=6tbyV8J11zk" controls="controls" style="width:650px" />
</asp:Content>


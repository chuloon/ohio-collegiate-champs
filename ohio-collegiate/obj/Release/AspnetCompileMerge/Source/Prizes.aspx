<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Prizes.aspx.cs" Inherits="ohio_collegiate.Prizes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="FeaturedContent" runat="server">
    <script type="text/javascript">
        window.onload = function () {
            $("#body").show();
            $("#body1").show();
            $("#body2").show();
            $("#body3").show();
        }
    </script>
    <section class="featured">
        <h1 class="center">Insert feature image here</h1>
    </section>
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>First Prize</div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">
    <div>Second Prize</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyContent2" runat="server">
    <div>Third Prize</div>
</asp:Content>
<%@ Page Title="Prizes" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Prizes.aspx.cs" Inherits="ohio_collegiate.Prizes" %>
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
        <div class="content-wrapper-2 content-wrapper">
            <img src="/Images/prizes-bg.png" class="image-margin" />
        </div>
    </section>
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Who doesn't like winning things?</h2>
    </hgroup>
    <div><h3>We'll release more on exact prize pools and such later. Just trust us in that the prizes will be super awesome!</h3></div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">
    <div></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyContent2" runat="server">
    <div></div>
</asp:Content>
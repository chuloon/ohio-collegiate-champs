<%@ Page Title="Blog" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="ohio_collegiate.Blog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="FeaturedContent" runat="server">
    <script type="text/javascript">
        window.onload = function () {
            $("#body").show();
            $("#body1").show();
            $("#body3").show();
        }
    </script>
    <section class="featured">
        <div class="content-wrapper-2 content-wrapper">
            <img src="/Images/join-bg.png" class="image-margin" />
        </div>
    </section>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Catch up on all the latest AllMid news!</h2>
    </hgroup>
    
    <h2>Test Article</h2>
    <p>This is a test for the iframe which will hopefully show up.</p>
</asp:Content>
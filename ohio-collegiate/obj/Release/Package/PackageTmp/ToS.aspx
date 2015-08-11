<%@ Page Title="ToS" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ToS.aspx.cs" Inherits="ohio_collegiate.ToS" %>
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
        <h2>Our event, our rules.</h2>
    </hgroup>
    
    <script type="text/javascript" src="http://form.jotform.us/jsform/51943934071154"></script>


</asp:Content>

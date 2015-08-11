<%@ Page Title="Privacy" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Privacy.aspx.cs" Inherits="ohio_collegiate.Privacy" %>
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
        <h2>Keep it secret, keep it safe.</h2>
    </hgroup>
    
    <script type="text/javascript" src="http://form.jotform.us/jsform/51944297370159"></script>


</asp:Content>


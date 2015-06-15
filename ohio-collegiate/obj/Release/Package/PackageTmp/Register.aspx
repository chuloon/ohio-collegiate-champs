<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ohio_collegiate.Register" %>
<asp:Content ContentPlaceHolderID="FeaturedContent" runat="server">
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
    <h1>Step 1: Create an account</h1>
    <div>
        <p>Create an account using the <a href="/Account/Register">Register</a> button at the top of the screen. Please <strong>use your summoner name as your user name.</strong> and make sure to <strong>use your school email address</strong>!</p>
    </div>
</asp:Content>
<asp:Content ContentPlaceHolderID="BodyContent" runat="server">
    <h1>Step 2: Click on the team tab and create a team</h1>
    <div>
        <p>Decide on a team name, and then fill out the required information. <strong>Be sure to use your team mates summoner names, or they won't be eligible for the tournament!</strong></p>
    </div>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent2" runat="server">
    <h1>Step 3: Add members!</h1>
    <div>
        <p><strong>Have your team mates create accounts so we can verify they are students!</strong> After that, you can use the team page to add them to your team, then you're all done!</p>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent3" runat="server">
    <p>Hello</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyContent4" runat="server">
</asp:Content>

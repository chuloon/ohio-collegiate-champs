<%@ Page Title="Redirecting..." Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RedirectTeam.aspx.cs" Inherits="ohio_collegiate.RedirectTeam" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        window.onload = function () {
            $("#body").show();
            $("#body1").show();
            $("#body2").show();
            $("#body3").show();
        }
    </script>
    <meta http-equiv="refresh" content="5; url=/Account/Login" />
    <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>You will be redirected to the login page in 5 seconds.</h2>
            </hgroup>

    <h2 class="red">You must be logged in to create a team!</h2>
</asp:Content>
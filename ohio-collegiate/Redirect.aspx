<%@ Page Title="Redirecting..." Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Redirect.aspx.cs" Inherits="ohio_collegiate.Redirect" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        window.onload = function () {
            $("#body").show();
            $("#body1").show();
            $("#body2").show();
            $("#body3").show();
        }
    </script>
    <meta http-equiv="refresh" content="5; url=/Default" />
    <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>You will be redirected to the home page in 5 seconds.</h2>
            </hgroup>

    <h2 class="red">Your registration was a success! A confirmation email will be sent to you shortly.</h2>
</asp:Content>
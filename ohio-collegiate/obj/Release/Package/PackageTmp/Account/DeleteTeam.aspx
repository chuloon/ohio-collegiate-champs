<%@ Page Title="Delete Team" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeleteTeam.aspx.cs" Inherits="ohio_collegiate.Account.DeleteTeam" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        window.onload = function () {
            $("#body").show();
            $("#body1").show();
            $("#body2").show();
            $("#body3").show();
        }
    </script>
    <hgroup class="title">
        <h1><%: Title %></h1>
        <h2>Permanently delete your team. This action cannot be undone.</h2>
    </hgroup>

    <h4>Type your summoner name in the box below to confirm deletion.</h4>
    <asp:TextBox ID="deleteTeamTextBox" runat="server"></asp:TextBox>
    <asp:Button ID="deleteTeamButton" OnClick="deleteTeamButton_Click" CssClass="rectButton" runat="server" Text="Delete" />
    <asp:Button ID="cancelButton" OnClick="cancelButton_Click" CssClass="rectGrayButton" runat="server" Text="Cancel" />
</asp:Content>
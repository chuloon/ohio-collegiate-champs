<%@ Page Title="Team Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Team.aspx.cs" Inherits="ohio_collegiate.Account.Team" %>
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
        <h2>View your team mates and status.</h2>
    </hgroup>

    <asp:Label ID="TeamLabel" CssClass="teamText" runat="server" Text="Put team here"></asp:Label>

    <asp:Button ID="EditMembersButton" OnClick="EditMembersButton_Click" CssClass="rectButton" runat="server" Text="Edit Members" />
    <asp:Button ID="CreateTeamButton" OnClick="CreateTeamButton_Click" CssClass="rectButton" runat="server" Text="Create Team" />
</asp:Content>
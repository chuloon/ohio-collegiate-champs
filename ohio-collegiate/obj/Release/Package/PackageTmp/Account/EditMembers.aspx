<%@ Page Title="Edit Members" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditMembers.aspx.cs" Inherits="ohio_collegiate.Account.EditMembers" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        window.onload = function () {
            $("#body").show();
            $("#body1").show();
            $("#body3").show();
        }
    </script>

    <hgroup class="title">
        <h1><%: Title %></h1>
        <h2>Add or remove team members.</h2>
    </hgroup>

    <asp:Label ID="blockLabel" runat="server" Text="Sorry, you must be a team captain to access this page."></asp:Label>
    <asp:Label ID="addMembersLabel" CssClass="boldLabel" runat="server" Text="Add members"></asp:Label><br />
    <asp:TextBox ID="addMembersTextbox" runat="server"></asp:TextBox>
    <asp:Button ID="addMembersButton" OnClick="addMembersButton_Click" CssClass="rectButton" runat="server" Text="Add" />
    <!--<hr />
    <asp:Label ID="removeMembersLabel" runat="server" Text="Remove Members" CssClass="boldLabel"></asp:Label>
    <asp:RadioButtonList RepeatDirection="Vertical" TextAlign="Right" CssClass="inline-rb" ID="memberList" runat="server"></asp:RadioButtonList>
    <asp:Button ID="removeMembersButton" runat="server" OnClick="removeMembersButton_Click" CssClass="rectButton" Text="Remove" /> -->
    
</asp:Content>
<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ohio_collegiate.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <script type="text/javascript">
        window.onload = function () {
            $("#body").show();
            $("#body1").show();
            $("#body3").show();
        }
    </script>
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Shoot us a message!</h2>
    </hgroup>
    <div>
        <asp:Label ID="nameLabel" runat="server" AssociatedControlID="nameTextBox">Name</asp:Label>
        <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nameTextBox"
            CssClass="field-validation-error" ErrorMessage="The name field is required." />
        <asp:Label ID="emailLabel" runat="server" AssociatedControlID="emailTextBox">Email</asp:Label>
        <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="emailTextBox"
            CssClass="field-validation-error" ErrorMessage="The email address field is required." />
        <asp:Label ID="messageLabel" runat="server" AssociatedControlID="messageTextBox">Message</asp:Label>
        <asp:TextBox ID="messageTextBox" TextMode="MultiLine" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="messageTextBox"
            CssClass="field-validation-error" ErrorMessage="You must enter a message." />
    </div>
    <div>
        <asp:Button ID="sendButton" Text="Send" runat="server" CssClass="rectButton" OnClick="sendButton_Click" />
    </div>
</asp:Content>

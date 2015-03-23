<%@ Page Title="Tournament Registration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Join.aspx.cs" Inherits="ohio_collegiate.Join" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1><%: Title %></h1>
        <h2>Use the form below to register your team.</h2>
    </hgroup>
    <p class="red">All fields are required*</p>

    <section id="loginForm">
        <h4>Team Name</h4>
        <asp:TextBox ID="teamNameTextBox" runat="server"></asp:TextBox>

        <h4>School</h4>
        <asp:TextBox ID="schoolTextBox" runat="server"></asp:TextBox>

        <h4>Captain Name</h4>
        <asp:TextBox ID="captainNameTextBox" runat="server"></asp:TextBox>

        <h4>Player 2 Name</h4>
        <asp:TextBox ID="player2NameTextBox" runat="server"></asp:TextBox>

        <h4>Player 3 Name</h4>
        <asp:TextBox ID="player3NameTextBox" runat="server"></asp:TextBox>

        <h4>Player 4 Name</h4>
        <asp:TextBox ID="player4NameTextBox" runat="server"></asp:TextBox>

        <h4>Player 5 Name</h4>
        <asp:TextBox ID="player5NameTextBox" runat="server"></asp:TextBox>
    </section>

    <section id="socialLoginForm">
        <h4>Captain Summoner Name</h4>
        <asp:TextBox ID="captainSummonerTextBox" runat="server"></asp:TextBox>

        <h4>Player 2 Summoner Name</h4>
        <asp:TextBox ID="player2SummonerTextBox" runat="server"></asp:TextBox>

        <h4>Player 3 Summoner Name</h4>
        <asp:TextBox ID="player3SummonerTextBox" runat="server"></asp:TextBox>

        <h4>Player 4 Summoner Name</h4>
        <asp:TextBox ID="player4SummonerTextBox" runat="server"></asp:TextBox>

        <h4>Player 5 Summoner Name</h4>
        <asp:TextBox ID="player5SummonerTextBox" runat="server"></asp:TextBox>
    </section>
    <section id="submitButton">
        <asp:Button ID="registerButton" runat="server" OnClick="registerButton_Click" Text="Submit" CssClass="rectButton" />
    </section>


</asp:Content>

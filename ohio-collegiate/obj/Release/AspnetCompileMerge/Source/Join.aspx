<%@ Page Title="Tournament Registration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Join.aspx.cs" Inherits="ohio_collegiate.Join" %>
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
        <h2>Use the form below to register your team.</h2>
    </hgroup>
    <p class="red">All fields are required*</p>

    <section id="loginForm">
        <h4>Team Name</h4>
        <asp:TextBox ID="teamNameTextBox" Text="Team Awesome" runat="server"></asp:TextBox>

        <h4>Captain Name</h4>
        <asp:TextBox ID="captainNameTextBox" Text="Captain Name" runat="server"></asp:TextBox>

        <h4>Captain Email</h4>
        <asp:TextBox ID="captainEmailTextBox" Text="captSumm" runat="server"></asp:TextBox>

        <h4>Player 2 Name</h4>
        <asp:TextBox ID="player2NameTextBox" Text="2" runat="server"></asp:TextBox>

        <h4>Player 3 Name</h4>
        <asp:TextBox ID="player3NameTextBox" Text="3" runat="server"></asp:TextBox>

        <h4>Player 4 Name</h4>
        <asp:TextBox ID="player4NameTextBox" Text="4" runat="server"></asp:TextBox>

        <h4>Player 5 Name</h4>
        <asp:TextBox ID="player5NameTextBox" Text="5" runat="server"></asp:TextBox>
    </section>

    <section id="socialLoginForm">

        <h4>School</h4>
        <asp:TextBox ID="schoolTextBox" Text="Test University" runat="server"></asp:TextBox>

        <h4>Captain Summoner Name (Your username)</h4>
        <asp:TextBox ID="captainSummonerTextBox" Text="1s" ReadOnly="true"  runat="server"></asp:TextBox>

        <h4>Player 2 Summoner Name</h4>
        <asp:TextBox ID="player2SummonerTextBox" Text="2s" runat="server"></asp:TextBox>

        <h4>Player 3 Summoner Name</h4>
        <asp:TextBox ID="player3SummonerTextBox" Text="3s" runat="server"></asp:TextBox>

        <h4>Player 4 Summoner Name</h4>
        <asp:TextBox ID="player4SummonerTextBox" Text="4s" runat="server"></asp:TextBox>

        <h4>Player 5 Summoner Name</h4>
        <asp:TextBox ID="player5SummonerTextBox" Text="5s" runat="server"></asp:TextBox>
    </section>
    <section id="submitButton">
        <asp:Button ID="registerButton" runat="server" OnClick="registerButton_Click" Text="Submit" CssClass="rectButton" />
    </section>


</asp:Content>

<%@ Page Title="Prizes" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Prizes.aspx.cs" Inherits="ohio_collegiate.Prizes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="FeaturedContent" runat="server">
    <script type="text/javascript">
        window.onload = function () {
            $("#body").show();
            $("#body1").show();
            $("#body2").show();
            $("#body3").show();
        }
    </script>
    <section class="featured">
        <div class="content-wrapper-2 content-wrapper">
            <img src="/Images/prizes-bg.png" class="image-margin" />
        </div>
    </section>
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Who doesn't like winning things?</h2>
    </hgroup>
   <div>
        <h3>League of Legends</h3>
        <p>
            Division 1
            <ul>
                <li>$2000 pot bonus</li>
                <li>All tournament entry fees</li>
                <li>Standard Riot Prizing</li>
            </ul>
            Division 2
            <ul>
                <li>All tournament entry fees</li>
                <li>Standard Riot Prizing</li>
            </ul>
            Payout:
            <ul>
                <li>First place: 50%</li>
                <li>Second place: 30%</li>
                <li>Third place: 15%</li>
                <li>Fourth place: 5%</li>
            </ul>
        </p>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">
    <div>
        <h3>Super Smash Bros.</h3>
        <p>
            Project M Singles
            <ul>
                <li>$1000 pot bonus</li>
                <li>Tournament entry fees</li>
            </ul>
            Project M Doubles
            <ul>
                <li>Tournament entry fees</li>
            </ul>
            Melee Singles
            <ul>
                <li>Tournament entry fees</li>
            </ul>
            Melee Doubles
            <ul>
                <li>Tournament entry fees</li>
            </ul>
            Smash 4 Singles
            <ul>
                <li>Tournament entry fees</li>
            </ul>
            Smash 4 Doubles
            <ul>
                <li>Tournament entry fees</li>
            </ul>
        </p>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyContent2" runat="server">
    <section class="content-wrapper">
        <div></div>
    </section>
</asp:Content>

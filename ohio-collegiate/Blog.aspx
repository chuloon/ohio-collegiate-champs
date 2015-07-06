<%@ Page Title="Blog" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="ohio_collegiate.Blog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="FeaturedContent" runat="server">
    <script type="text/javascript">
        window.onload = function () {
            $("#body").show();
            $("#body1").show();
            $("#body3").show();
        }
    </script>
    <section class="featured">
        <div class="content-wrapper-2 content-wrapper">
            <img src="/Images/join-bg.png" class="image-margin" />
        </div>
    </section>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Catch up on all the latest AllMid news!</h2>
    </hgroup>
    <!--New Article Template-->
    <!-- 
        <article>
            <hr />
            <h3 class="blog-header">TITLE</h3>
            <a name="DATE_NUMBER"></a>
            <p class="blog-date> Posted DATE (ex: July 6th, 2015)</p>
            <p class="blog-article">For each paragraph in your article, make a new one of these.</p>
            <hr />
        </article>
    -->
    <article>
        <hr />
        <h3 class="blog-header">Tick tock!</h3>
        <a name="070615"></a>
        <p class="blog-date">Posted July 6th, 2015</p>
        <p class="blog-article">Tick tock, the timer counts down to one of the best events to occur in the Midwest!</p>

        <p class="blog-article">
            All Mid is proud to present the All Mid Collegiate Invitational, a massive inter-collegiate LAN featuring tournaments for League of Legends, Hearthstone, and Smash Bros., an artist alley, giveaways, minigames, and more! All Mid invites you to pack up your computers for this BYOC (bring your own computer) event and compete for thousands of dollars in prizing.
To register for a tournament, click on the <a href="/Join">Registration Page</a> here.
        </p>

        <p class="blog-article">All Mid will be posting more information about sponsors, tournaments, and opportunities to get involved on its website. So stay tuned for a truly truly truly outrageous time.</p>
        <hr />
    </article>
</asp:Content>
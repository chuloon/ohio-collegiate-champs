<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ohio_collegiate.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="FeaturedContent" runat="server">
    <script type="text/javascript">
        window.onload = function () {
            $("#body").show();
            $("#body1").show();
            $("#body2").show();
            $("#body3").show();
            $("#body4").show();
        }
    </script>
    <section class="featured">
        <h1 class="center">Insert feature image here</h1>
    </section>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Learn a little about who we are.</h2>
    </hgroup>

    <div>
        <p style="text-align:justify;">
            All MID is an organization that represents the largest and most active collegiate communities in the Midwest United States region.  With a emphasis on professionalism and community, All MID brings high level competition and involvement of all kinds to the E-sports scene.  The staff of All MID come from and represent some of the oldest and most established collegiate E-sports programs in the region while also drawing upon considerable professional in-house design, technology, and legal talents.
        </p>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">
    <hgroup class="title">
        <h1>Sponsors.</h1>
        <h2>We need you.</h2>
    </hgroup>
    <div>
        <p>The All MID team brings to the table over a decade of collective experience in hosting and producing high quality gaming events.</p>
        <p>To further promote and grow esports in the Midwest, we are developing the largest esports event in the history of our region – a massive competitive LAN known as the Invitational.</p>
        <p>We seek to bring together gamers from across multiple schools and state lines to compete on the largest possible stage with the highest possible production value.</p>
        <p>The date for the event is slated for the weekend of September 19th.</p>
        <p>We are looking for partners who can add value to our efforts and turn an amazing event into a truly remarkable and memorable one.</p>
        <p>Interested in more information on becoming a sponsor? <a href="mailto:ben.ng@outlook.com?Subject=AllMid%20Sponsor%20Information">Contact us here!</a></p>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyContent2" runat="server">
    <hgroup class="title">
        <h1>Donations.</h1>
        <h2>Mo' money, no problems.</h2>
    </hgroup>
    <div class="about-container">
        <p>Not a company, but still want to support AllMid and help us create an amazing event? Fear not! You can help us grow by donating through Paypal!</p>
        <a href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=EVM25TED4TV8L" target="_blank"><img src="/Images/paypal-donation-button.png" /></a>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="BodyContent3" runat="server">
    <hgroup class="title">
        <h1>Staff.</h1>
        <h2>Where we came from.</h2>
    </hgroup>

    <div class="about-container">
            <img class="about-image" src="/Images/Face_Shots/chris.png" />
            <h3 class="about-left">Chris Postell</h3>
            <p class="about-left">Located in Cincinnati, OH, Chris created UCLoL – the first collegiate E-sports organization to be recognized as a club sport in the nation.  He has organized and executed everything from tournaments to professional fan meets and has 4 years experience in running gaming organizations.</p>
        </div>
        <div class="about-container">
            <img class="about-image" src="/Images/Face_Shots/ben.png" />
            <h3 class="about-left">Ben Ng</h3>
            <p class="about-left">A graduate of Ohio State University, Ben is a professional web developer by day.  During his tenure as a student he ran BuckeyeLan and has 4+ years experience in organizing and executing events.  Ben is also an avid cosplayer and has ties to multiple professional gaming organizations and companies.</p>
        </div>
        <div class="about-container">
            <img class="about-image" src="/Images/Face_Shots/stelanie.png" />
            <h3 class="about-left">Stelanie Tsirlis</h3>
            <p class="about-left">A rising star in the E-sports community, Stelanie brings together passion for gaming and a profound understanding for marketing.  She plans and hosts an annual convention at Miami University.  She also is heavily involved Miami’s student government association.</p>
        </div>
        <div class="about-container">
            <img class="about-image" src="/Images/Face_Shots/albert.png" />
            <h3 class="about-left">Albert Maah</h3>
            <p class="about-left">Albert Maah has ran gaming organizations since his days in High School.  He currently sits on the executive staff of E-sports Initiative at Ohio State, and helps host Shuffle - the largest Super Smash Bothers game tournament in the region.  In addition to his work with ESI, Albert has worked with MLG at their esports arena in Columbus.</p>
        </div>
        <div class="about-container">
            <img class="about-image" src="/Images/Face_Shots/sebastian.png" />
            <h3 class="about-left">Sebastian Cheng</h3>
            <p class="about-left">A Hong Kong native, Sebastian attends Case Western Reserve University in Cleveland, OH, where he is president of the Case League of Legends club.  He holds a passion for community engagement and has a broad network for bringing gamers across the region together. </p>
        </div>
        <div class="about-container">
            <img class="about-image" src="/Images/Face_Shots/nick.png" />
            <h3 class="about-left">Nicholas Costaras</h3>
            <p class="about-left">Located in Cleveland, OH, Nicholas is a lawyer that specializes in contract and tech. law.  Having worked for high profile companies like IBM, Nick now owns his own practice.  In his spare time, he works to develop and promote accessible esports platforms for aspiring competitive gamers.    </p>
        </div>
</asp:Content>
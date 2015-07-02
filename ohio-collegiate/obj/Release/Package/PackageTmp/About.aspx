<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ohio_collegiate.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="FeaturedContent" runat="server">
    <script type="text/javascript">
        window.onload = function () {
            $("#body").show();
            $("#body1").show();
            $("#body2").show();
            $("#body3").show();
            $("#body4").show();
            $("#body5").show();
        }
    </script>
    <section class="featured">
        <div class="content-wrapper-2 content-wrapper">
            <img src="/Images/about-bg.png" class="image-margin" />
        </div>
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
        <p>The date for the event is slated for the weekend of October 3rd and 4th.</p>
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
            <p>email: <a href="mailto:chris@allmid.gg">chris@allmid.gg</a></p>
    </div>
        <div class="about-container">
            <img class="about-image" src="/Images/Face_Shots/ben.png" />
            <h3 class="about-left">Ben Ng</h3>
            <p class="about-left">A graduate of Ohio State University, Ben is a professional web developer by day.  During his tenure as a student he ran BuckeyeLan and has 4+ years experience in organizing and executing events.  Ben is also an avid cosplayer and has ties to multiple professional gaming organizations and companies.</p>
            <p>email: <a href="mailto:ben@allmid.gg">ben@allmid.gg</a></p>
        </div>
        <div class="about-container">
            <img class="about-image" src="/Images/Face_Shots/stelanie.png" />
            <h3 class="about-left">Stelanie Tsirlis</h3>
            <p class="about-left">A rising star in the E-sports community, Stelanie brings together passion for gaming and a profound understanding for marketing.  She plans and hosts an annual convention at Miami University.  She also is heavily involved Miami’s student government association.</p>
            <p>email: <a href="mailto:stelanie@allmid.gg">stelanie@allmid.gg</a></p>
        </div>
        <div class="about-container">
            <img class="about-image" src="/Images/Face_Shots/albert.png" />
            <h3 class="about-left">Albert Maah</h3>
            <p class="about-left">Albert Maah has ran gaming organizations since his days in high school.  He currently sits on the executive staff of E-sports Initiative at Ohio State, and helps host Shuffle - the largest Super Smash Brothers game tournament in the region.  In addition to his work with ESI, Albert has worked with MLG at their esports arena in Columbus.</p>
            <p>email: <a href="mailto:albert@allmid.gg">albert@allmid.gg</a></p>
        </div>
        <div class="about-container">
            <img class="about-image" src="/Images/Face_Shots/sebastian.png" />
            <h3 class="about-left">Sebastian Cheng</h3>
            <p class="about-left">A Hong Kong native, Sebastian attends Case Western Reserve University in Cleveland, OH, where he is president of the Case League of Legends club.  He holds a passion for community engagement and has a broad network for bringing gamers across the region together. </p>
            <p>email: <a href="mailto:sebastian@allmid.gg">sebastian@allmid.gg</a></p>
        </div>
        <div class="about-container">
            <img class="about-image" src="/Images/Face_Shots/nick.png" />
            <h3 class="about-left">Nicholas Costaras</h3>
            <p class="about-left">Located in Cleveland, OH, Nicholas is a lawyer that specializes in contract and tech. law.  Having worked for high profile companies like IBM, Nick now owns his own practice.  In his spare time, he works to develop and promote accessible esports platforms for aspiring competitive gamers.    </p>
            <p>email: <a href="mailto:nick@allmid.gg">nick@allmid.gg</a></p>
        </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="BodyContent4" runat="server">
    <hgroup id="subscribe" class="title">
        <h1>Subscribe.</h1>
        <h2>Get the latest news on AllMid.</h2>
    </hgroup>
    <!-- Begin MailChimp Signup Form -->
<link href="//cdn-images.mailchimp.com/embedcode/slim-081711.css" rel="stylesheet" type="text/css">
<style type="text/css">
	#mc_embed_signup{clear:left; font:14px Helvetica,Arial,sans-serif; }
	/* Add your own MailChimp form style overrides in your site stylesheet or in this style block.
	   We recommend moving this block and the preceding CSS link to the HEAD of your HTML file. */
</style>
<div id="mc_embed_signup">
    <div id="mc_embed_signup_scroll">
	
	<input type="email" value="" name="EMAIL" class="email" id="mce-EMAIL" placeholder="email address" required>
    <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
        <div style="position: absolute; left: -5000px;">
            <input type="text" name="b_7ebfc5e5db282fbb785936de0_d33c1b30a5" tabindex="-1" value=""></div>
        <div class="clear">
            <input type="submit" value="Subscribe" name="subscribe" id="mc-embedded-subscribe" class="button" style="background-color:#c64343;" onclick="this.form.action = '//allmid.us11.list-manage.com/subscribe/post?u=7ebfc5e5db282fbb785936de0&amp;id=d33c1b30a5'; this.form.submid();"></div>
    </div>
</div>

<!--End mc_embed_signup-->
</asp:Content>

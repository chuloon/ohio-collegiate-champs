<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ohio_collegiate._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <link rel="stylesheet" href="/Content/flipclock.css" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="/Content/flipclock.js"></script>
    <script type="text/javascript">
        window.onload = function () {

            $("#body").show();
            $("#body1").show();
            $("#body2").show();
            $("#body3").show();
            $("#body4").show();
            $("#body5").show();

            showFirst();

            $("#compete-norm").mouseenter(function () { $("#compete-flip").fadeToggle(0); $("#compete-norm").fadeToggle(0); $("#div4").fadeToggle(); });
            $("#compete-flip").mouseout(function () { $("#compete-flip").fadeToggle(0); $("#compete-norm").fadeToggle(0); $("#div4").fadeToggle(); });

            $("#news").mouseenter(function () { $("#news-flip").fadeToggle(0); $("#news").fadeToggle(0); $("#div5").fadeToggle(); });
            $("#news-flip").mouseout(function () { $("#news-flip").fadeToggle(0); $("#news").fadeToggle(0); $("#div5").fadeToggle(); });

            $("#spectate").mouseenter(function () { $("#spectate-flip").fadeToggle(0); $("#spectate").fadeToggle(0); $("#div6").fadeToggle(); });
            $("#spectate-flip").mouseout(function () { $("#spectate-flip").fadeToggle(0); $("#spectate").fadeToggle(0); $("#div6").fadeToggle(); });

            $("#cc").click(function () { scrollToAnchor('compete'); });
            $("#nn").click(function () { scrollToAnchor('news'); });
            $("#ss").click(function () { scrollToAnchor('spectate'); });
        };

        function showFirst() {
            $("#div1").fadeIn(500).delay(30000).fadeOut(500, showSecond);
        }

        function showSecond() {
            $("#div2").fadeIn(500).delay(30000).fadeOut(500, showThird);
        }
        
        function showThird() {
            $("#div3").fadeIn(500).delay(30000).fadeOut(500, showFirst);
        }

        function scrollToAnchor(aid) {
            var aTag = $("a[name='" + aid + "']");
            $('html,body').animate({ scrollTop: aTag.offset().top }, 'slow');
        }
    </script>
    <section class="featured">
        <div class="content-wrapper">
            <div id="menu-bg" class="menu-wrapper" style="z-index: 4; position: relative;">
                <div id="cc" class="circle-menu circle-compete">
                    <img id="compete-norm" src="Images/circle-compete.png" alt="compete" title="compete" />
                    <img id="compete-flip" src="Images/circle-compete-flip.png" alt="compete" title="compete" />
                </div>
                <div id="nn" class="circle-menu circle-news">
                    <img id="news-flip" src="Images/circle-news-flip.png" alt="news" title="news" />
                    <img id="news" src="Images/circle-news.png" alt="news" title="news" /></div>
                <div id="ss" class="circle-menu circle-spectate">
                    <img id="spectate-flip" src="Images/circle-spectate-flip.png" alt="spectate" title="spectate" />
                    <img id="spectate" src="Images/circle-spectate.png" alt="spectate" title="spectate" /></div>
            </div>
            <div id="div1" class="mouseover-1"></div>
            <div id="div2" class="mouseover-2"></div>
            <div id="div3" class="mouseover-3"></div>

            <div id="div4" class="rotator-1"></div>
            <div id="div5" class="rotator-2"></div>
            <div id="div6" class="rotator-3"></div>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="clock center"></div>
    <script>
        var clock;

        $(document).ready(function () {

            // Grab the current date
            var currentDate = new Date();

            // Set some date in the future. In this case, it's always Jan 1
            var futureDate = new Date(2015,9,19,0,0,0,0);

            // Calculate the difference in seconds between the future and current date
            var diff = futureDate.getTime() / 1000 - currentDate.getTime() / 1000;

            // Instantiate a coutdown FlipClock
            clock = $('.clock').FlipClock(diff, {
                clockFace: 'DailyCounter',
                countdown: true
            });
        });
    </script>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="BodyContent">
    <a name="compete"></a>
    <div class="content-wrapper">
        <div class="wrap">
            <div class="prizes prize-third">
                <h2>Join</h2>
                <div class="prize-img">
                    <img src="/Images/prize-third.png" />
                </div>
                <h3>Third Place</h3>
                <p class="prizes-text">Create your own winning team, or join an existing one, then start practicing to mark your place as the best in the nation!<br /><a href="/Register">Register now</a></p>
            </div>
            <div class="prizes prize-second">
                <h2>Compete</h2>
                <div class="prize-img">
                    <img src="/Images/prize-second.png" />
                </div>
                <h3>Second Place</h3>
                <p class="prizes-text">Join us in Cincinnati on September 19th to battle it out among the best of the best while exploring the rest of the countless festivities we have for you.<br /><a href="/Rules">Review rules</a></p>
            </div>
            <div class="prizes prize-first">
                <h2>Win</h2>
                <div class="prize-img">
                    <img src="/Images/prize-first.png" />
                </div>
                <h3>First Place</h3>
                <p class="prizes-text">Once your team wins, bask in the glory of victory--but not without going home with an enormous prize pot and swag from our sponsors!<br /><a href="/Prizes">View prizes</a></p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="BodyContent2">
    <div class="content-wrapper">
        <div class="sponsor-wrap">
            <a href="http://www.newegg.com/" target="_blank"><img src="/Images/logo-newegg.png" /></a>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="BodyContent3">
    <a name="news"></a>
    <div class="content-wrapper">News Div</div>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="BodyContent4">
    <a name="spectate"></a>
    <div class="content-wrapper">Spectate Div</div>
</asp:Content>
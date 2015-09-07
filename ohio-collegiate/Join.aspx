<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Join.aspx.cs" Inherits="ohio_collegiate.Join" %>
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
        <h2>Become part of the Midwest's most epic eSports event.</h2>
    </hgroup>
    <script type="text/javascript" src="http://form.jotform.us/jsform/51625357927160"></script>
    <h6 class="center">If you are having trouble viewing the form, please contact <a href="mailto:ben.ng@outlook.com">ben@allmid.gg</a></h6>

</asp:Content>

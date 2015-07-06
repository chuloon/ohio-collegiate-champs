<%@ Page Title="Rules" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Rules.aspx.cs" Inherits="ohio_collegiate.Rules" %>
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
            <img src="/Images/rules-bg.png" class="image-margin" />
        </div>
    </section>
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div><script type="text/javascript" src="http://form.jotform.us/jsform/51824831290151"></script></div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">
    <div>Rules: Section 2</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyContent2" runat="server">
    <div>Rules: Section 3</div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="BodyContent3" runat="server">
    <div>Rules: Section 4</div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="BodyContent4" runat="server">
</asp:Content>

<%@ Page Title="Tournament Registration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Join.aspx.cs" Inherits="ohio_collegiate.Join" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        window.onload = function () {
            $("#body").show();
            $("#body1").show();
            $("#body3").show();
        }
    </script>
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Use the form below to register your team.</h2>
    </hgroup>
    
    <script type="text/javascript" src="http://form.jotform.us/jsform/51625357927160"></script>


</asp:Content>

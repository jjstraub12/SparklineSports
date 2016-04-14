<%@ Page Title="Sparkline - HOME" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Straub.Web.UI.Default"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        img {
            width: 75%;
        }
    </style>

    <div id="logo1" style="background-color: white; width: 100%;">
        <img src="img/SPARKLINE_BlackText_AquaLine.svg" alt="Black Text, Aqua Line" />
    </div>
    <div id="logo2" style="background-color: black; width: 100%;">
        <img src="img/SPARKLINE_WhiteText_AquaLine.svg" alt="Black Text, Aqua Line" />
    </div>
    <div id="logo3" style="background-color: white; width: 100%;">
        <img src="img/SPARKLINE_AquaText_BlackLine.svg" alt="Black Text, Aqua Line" />
    </div>
    <div id="logo4" style="background-color: black; width: 100%;">
        <img src="img/SPARKLINE_AquaText_WhiteLine.svg" alt="Black Text, Aqua Line" />
    </div>
</asp:Content>
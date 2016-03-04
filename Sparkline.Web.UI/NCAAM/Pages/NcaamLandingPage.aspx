<%@ Page Title="NCAAM Basketball" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="NcaamLandingPage.aspx.cs" Inherits="Straub.Web.UI.NCAAM.NcaamLandingPage" %>

<%@ Register Src="~/NCAAM/Controls/Schedule.ascx" TagPrefix="straub" TagName="NcaamSchedule" %>
<%@ Register Src="~/NCAAM/Controls/NcaamSchedule.ascx" TagPrefix="straub" TagName="NcaamRankings" %>
<%@ Register Src="~/NCAAM/Controls/NcaamSchedule.ascx" TagPrefix="straub" TagName="NcaamTeams" %>
<%@ Register Src="~/NCAAM/Controls/NcaamSchedule.ascx" TagPrefix="straub" TagName="NcaamStats" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <straub:NcaamSchedule runat="server" ID="Schedule" Visible="true" />
<%--        <straub:NcaamSchedule runat="server" ID="NcaamSchedule" Visible="true" />
        <straub:NcaamRankings runat="server" ID="NcaamRankings" Visible="false" />
        <straub:NcaamTeams runat="server" ID="NcaamTeams" Visible="false" />
        <straub:NcaamStats runat="server" ID="NcaamStats" Visible="false" />--%>
    </div>
</asp:Content>

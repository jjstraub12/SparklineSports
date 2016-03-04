<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Straub.Web.UI.About.Information" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <style>
        h2 {
            text-align: center;
        }

        .button {
            border: 1px solid darkblue;
            width: 150px;
            height: 25px;
            background-color: lightsalmon;
            padding-top:5px;
            color: darkred;
            font-weight: bold;
        }
    </style>

    <div>
        <h2><b><i>Sports Information & Analysis</i></b></h2>
        <p><b><i>Knowledge is power. Information is liberating.</i></b></p>
        <p>Serious sports fans, sports investors, statistical hobbyists and fantasy players all rely on up to date information and unique
            insights that will give you the edge. Most sports information websites today display player stats, game matchups, trends
            and offer predictions. What about those player and team trends that no one else bothers to research? What’s the
            historical 1st half or 2nd half game performance of a team or player away/home, in conference or non-conference? A 
            certain day? Day game or night game? How does travel affect a team or player? Which MLB heavy defensive shifting 
            teams are the most efficient?
        </p>
        <p><b><i>What if... </i></b> you cruised over to <a href="/About.aspx">www.sparklinesports.com</a> and could run your 
            own search reports using our easy to use proprietary sports online database? With the explosion of big data information in sports 
            and our database you’re on your way to discovering new trends and insights. Curious?</p>
    </div>
    <div style="text-align: center;">
        <asp:LinkButton ID="btnGetStarted" runat="server" Text="Get Started!" CssClass="button" Font-Underline="false" PostBackUrl="~/About/UserSurvey.aspx"></asp:LinkButton>
    </div>
    <br />
    <div style="display: table;">
        <div style="display: table-row;">
            <div style="width: 5%; display: table-cell; padding: 5px;">
                <asp:Image ID="imgStar1" runat="server" ImageUrl="~/img/star.jpg" Width="50px"></asp:Image>
            </div>
            <div style="width: 24%; display: table-cell; padding: 5px;">
                <p><b>You will be empowered</b> to search on unlimited fields of team and player data. Each sport will offer ten years of data.</p>
            </div>
            <div style="width: 5%; display: table-cell; padding: 5px;">
                <asp:Image ID="imgStar2" runat="server" ImageUrl="~/img/star.jpg" Width="50px"></asp:Image>
            </div>
            <div style="width: 24%; display: table-cell; padding: 5px;">
                <p><b>Our analysts</b> will also offer their research on unique and <b>hidden trends</b> that can provide an edge.</p>
            </div>
            <div style="width: 5%; display: table-cell; padding: 5px;">
                <asp:Image ID="imgStar3" runat="server" ImageUrl="~/img/star.jpg" Width="50px"></asp:Image>
            </div>
            <div style="width: 24%; display: table-cell; padding: 5px;">
                <p><b>A fun and informative site</b> with weekly guests to share their opinions. Some will be off-the-wall. Why not check us out?</p>
            </div>
        </div>
    </div>  

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Straub.Web.UI.About.Information" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script type="text/javascript">
        function CheckBoxListSelect(cbControl, state)
        {
            var chkBoxList = document.getElementById(cbControl);
            var chkBoxCount = chkBoxList.getElementsByTagName("input");
            for (var i = 0; i < chkBoxCount.length; i++)
            {
                chkBoxCount[i].checked = state;
            }
            return false;
        }
    </script>

    <style>
        h2 {
            text-align: center;
        }

        p {
            margin-left: 5%;
            margin-right: 5%;
            margin-top: 2%;
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

    <div style="text-align: left;">
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
<%--    <div style="text-align: center;">
        <asp:LinkButton ID="btnGetStarted" runat="server" Text="Get Started!" CssClass="button" Font-Underline="false" PostBackUrl="~/About/UserSurvey.aspx"></asp:LinkButton>
    </div>--%>
<%--    <br />
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
    </div>--%>
    <br />
    <br />
    <h3>To customize your experience, please tell us your interests.</h3>
        <p><a id="A1" href="#" onclick="javascript: CheckBoxListSelect('<%= chkPersonal.ClientID %>', true)">Check All</a> | <a id="A2" href="#" onclick="javascript: CheckBoxListSelect('<%= chkPersonal.ClientID %>', false)">Uncheck All</a>
            <div style="text-align: left; width: 50%; margin: auto;">
                <asp:CheckBoxList ID="chkPersonal" runat="server" RepeatColumns="3">
                    <asp:ListItem Text="Casual Sports Fan" Value="chkCasual" />
                    <asp:ListItem Text="Sports Wagering ($)" Value="chkWager" />
                    <asp:ListItem Text="Stats Hobbyist" Value="chkHobby" />
                    <asp:ListItem Text="Daily Fantasy" Value="chkDaily" />
                    <asp:ListItem Text="Fantasy League" Value="chkFantasy" />
                    <asp:ListItem Text="I heard this site will be cool" Value="chkCool" />
                </asp:CheckBoxList>
            </div>
        </p>
    <br />
        <h3>What content are you most interested in?</h3>
        <p><a id="A3" href="#" onclick="javascript: CheckBoxListSelect('<%= chkInterests.ClientID %>', true)">Check All</a> | <a id="A4" href="#" onclick="javascript: CheckBoxListSelect('<%= chkInterests.ClientID %>', false)">Uncheck All</a>
            <div style="text-align: left; width: 50%; margin: auto;">
                <asp:CheckBoxList ID="chkInterests" runat="server" RepeatColumns="3">
                    <asp:ListItem Text="General Sports Database" Value="chkDatabase" />
                    <asp:ListItem Text="Sparkline Trends" Value="chkTrends" />
                    <asp:ListItem Text="ATS Predictions" Value="chkATS" />
                    <asp:ListItem Text="Current Sports News" Value="chkNews" />
                    <asp:ListItem Text="Specific Team Info" Value="chkTeamInfo" />
                    <asp:ListItem Text="Player Career Stats" Value="chkPlayer" />
                    <asp:ListItem Text="Injury Updates" Value="chkInjury" />
                    <asp:ListItem Text="Daily Fantasy" Value="chkDaily2" />
                    <asp:ListItem Text="Mobile Access" Value="chkMobile" />
                    <asp:ListItem Text="Site Contests" Value="chkContests" />
                    <asp:ListItem Text="Weekly Blog" Value="chkBlog" />
                    <asp:ListItem Text="Discussion Forums" Value="chkForums" />
                </asp:CheckBoxList>
            </div>
        </p>
    <br />
    <p style="text-align: left;">We expect to launch in Fall 2016 in time for the start of College Basketball. Followed by MLB, NFL and
       College football. We would like for you to join us in our development. We need 100 reservations for us to 
       launch. Reserve your seat today to receive preferential discounts, our monthly newsletter and an 
       invitation to participate in database testing in the coming months . Reserve now!
    </p>
    <p style="text-align: left;">
        <b>Enter email address:</b> <asp:TextBox ID="txtEmail" runat="server" Width="300px" CssClass="feedback"></asp:TextBox>
        <asp:CheckBox ID="chkDB" runat="server" Font-Bold="True" Text="Yes, I want to be a Database Tester" />
    </p>
    <p style="text-align: left;">
        <b>Please provide any other feedback or comments for us. Thanks for your support!</b>
        <asp:TextBox ID="txtFeedback" runat="server" Width="750px" Height="75px" CssClass="feedback" TextMode="MultiLine"></asp:TextBox>
    </p>
    <br />
    <br />
    <div style="text-align: center;">
        <asp:LinkButton ID="btnSubmit" runat="server" Text="Submit" CssClass="button" Font-Underline="false" OnClick="btnSubmit_Click"></asp:LinkButton>
    </div>
    <br />
    <br />
    <br />
    <br />
</asp:Content>


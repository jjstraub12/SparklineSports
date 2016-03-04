<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="UserSurvey.aspx.cs" Inherits="Straub.Web.UI.About.UserSurvey" %>
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
        .button {
            border: 1px solid darkblue;
            width: 150px;
            height: 25px;
            background-color: lightsalmon;
            padding-top:5px;
            color: darkred;
            font-weight: bold;
            float: right;
        }
    </style>
    <div>
        <h3>To customize your experience, please tell us your interests.</h3>
        <p><a id="A1" href="#" onclick="javascript: CheckBoxListSelect('<%= chkPersonal.ClientID %>', true)">Check All</a> | <a id="A2" href="#" onclick="javascript: CheckBoxListSelect('<%= chkPersonal.ClientID %>', false)">Uncheck All</a>
            <asp:CheckBoxList ID="chkPersonal" runat="server" RepeatColumns="3">
                <asp:ListItem Text="Casual Sports Fan" Value="chkCasual" />
                <asp:ListItem Text="Sports Wagering ($)" Value="chkWager" />
                <asp:ListItem Text="Stats Hobbyist" Value="chkHobby" />
                <asp:ListItem Text="Daily Fantasy" Value="chkDaily" />
                <asp:ListItem Text="Fantasy League" Value="chkFantasy" />
                <asp:ListItem Text="I heard this site will be cool" Value="chkCool" />
            </asp:CheckBoxList>
        </p>
        <h3>What content are you most interested in?</h3>
        <p><a id="A3" href="#" onclick="javascript: CheckBoxListSelect('<%= chkInterests.ClientID %>', true)">Check All</a> | <a id="A4" href="#" onclick="javascript: CheckBoxListSelect('<%= chkInterests.ClientID %>', false)">Uncheck All</a>
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
        </p>
        <div style="text-align: center;">
            <asp:LinkButton ID="btnContinue" runat="server" Text="Continue" CssClass="button" Font-Underline="false" PostBackUrl="~/About/Reserve.aspx"></asp:LinkButton>
        </div>
    </div>
</asp:Content>

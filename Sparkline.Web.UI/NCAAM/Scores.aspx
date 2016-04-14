<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Scores.aspx.cs" Inherits="Straub.Web.UI.NCAAM.Scores" EnableEventValidation="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        #divHeader {
            font-size: 36px;
            font-weight: bold;
            text-align: left;
            padding: 15px;
        }
        #divDate {
            font-size: 16px;
            font-weight: bold;
            text-align: left;
            margin: 15px;
        }
        #divScores {
            padding-bottom: 100px;
        }
        /*SCHEDULE GRID VIEW*/
        .dtlSchedule {
            width: 100%;
        }
        .scheduleTable {
            width: 25em;
            margin: auto;
            border: 1px solid black;
        }
        .teamInfo {
            text-align: left;
            font-size: 19px;
            padding-left: 10px;
        }
        .record {
            font-size: 16px;
            color: darkslategray;
        }
        .header {
            background-color: lightblue;
            color: black;
            border: 1px solid black;
        }

    </style>

    <div id="divHeader">NCAAM Basketball Scoreboard</div>

    <div id="divDate">
        <asp:Label ID="lblDate" runat="server" Text="DATE:" AssociatedControlID="txtDate"></asp:Label>
        <asp:TextBox ID="txtDate" runat="server" OnTextChanged="txtDate_TextChanged" AutoPostBack="true" />
    </div>

    <div id="divScores">
        <asp:DataList ID="dtlSchedule" runat="server" CssClass="dtlSchedule" OnDataBinding="grdSchedule_DataBinding" RepeatColumns="2" RepeatDirection="Horizontal">
            <SeparatorTemplate>
            </SeparatorTemplate>
            <ItemTemplate>
                <table class="scheduleTable">
                    <tr class="header">
                        <td class="teamInfo" style="padding-top: 5px;">
			    <asp:Label ID="lblGameTime" runat="server" Text='<%# Eval("GameDateTime", "{0:t}") %>' />
                        </td>
                        <td class="teamInfo">
			    <asp:Label ID="lblLine" runat="server" Text="LINE" />
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td class="teamInfo" style="width: 62%; padding-top: 5px;">
                            <asp:Label ID="lblTeam" runat="server" Text='<%# ("#" + Eval("TM_AP_RK","{0}") + " ").Replace("#99 ", "") + " " + Eval("Team","{0}") %>' />
                            <asp:Label ID="lblTeamRecord" runat="server" CssClass="record" Text='<%# ("(" + Eval("TM_SU_F_WINS","{0}") + "-" + Eval("TM_SU_F_LOSS","{0}") + ")") %>' />
                        </td>
                        <td class="teamInfo">
                            <asp:Label ID="lblSpread2" runat="server" Text='<%# GetVal(Eval("TeamSpreadF").ToString(), Eval("TotalF").ToString(), "team") %>' />
                        </td>
                        <td style="text-align: right; padding-right: 10px;">
			    <asp:Button ID="btnMatchup" runat="server" Text = "matchup" OnClientClick = '<%# "PopupCenter(" + "\u0022" + "/NCAAM/MatchupLink.aspx?team=" + Eval("TeamId","{0}") + "&date=" + Eval("GameDate","{0:d}") + "\u0022" + ", " + "\u0022" + "_blank" + "\u0022" + ", " + "\u0022" + "1200" + "\u0022" + ", " + "\u0022" + "800" + "\u0022" + "); return false;" %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="teamInfo" style="padding-bottom: 10px;">
                            <asp:Label ID="lblOpponent" runat="server" Text='<%# ("#" + Eval("OPP_AP_RK","{0}") + " ").Replace("#99 ", "") + " " + Eval("Opponent","{0}") %>' />
                            <asp:Label ID="lblOppRecord" runat="server" CssClass="record" Text='<%# ("(" + Eval("OPP_SU_F_WINS","{0}") + "-" + Eval("OPP_SU_F_LOSS","{0}") + ")") %>' />
                        </td>
                        <td class="teamInfo">
<asp:Label ID="Label1" runat="server" Text='<%# GetVal(Eval("TeamSpreadF").ToString(), Eval("TotalF").ToString(), "opp") %>' />
                        </td>
                        <td></td>
                    </tr>
                </table>
                <br />
            </ItemTemplate>
        </asp:DataList>
    </div>

    
    <script>
        $(function () {
            $("#<%= txtDate.ClientID %>").datepicker();
        });

        function PopupCenter(url, title, w, h) {
            // Fixes dual-screen position                         Most browsers      Firefox
            var dualScreenLeft = window.screenLeft != undefined ? window.screenLeft : screen.left;
            var dualScreenTop = window.screenTop != undefined ? window.screenTop : screen.top;

            var width = window.innerWidth ? window.innerWidth : document.documentElement.clientWidth ? document.documentElement.clientWidth : screen.width;
            var height = window.innerHeight ? window.innerHeight : document.documentElement.clientHeight ? document.documentElement.clientHeight : screen.height;

            var left = ((width / 2) - (w / 2)) + dualScreenLeft;
            var top = ((height / 2) - (h / 2)) + dualScreenTop;
            var newWindow = window.open(url, title, 'scrollbars=yes, menubar=no, status=no, titlebar=no, width=' + w + ', height=' + h + ', top=' + top + ', left=' + left);

            // Puts focus on the newWindow
            if (window.focus) {
                newWindow.focus();
            }
            return false;
        }
    </script>
    <script runat="server">
        string GetVal(string spread, string total, string team)
        {
            double dblSpread;
            double dblTotal;

            if (spread != "")
            {
                dblSpread = Convert.ToDouble(spread);
                if (team == "opp")
                    dblSpread = -1 * dblSpread;
                
                if (dblSpread <= 0)
                    return dblSpread.ToString("F1");
                else
                {
                    if (total != "")
                    {
                        dblTotal = Convert.ToDouble(total);
                        return dblTotal.ToString("F1");
                    }
                    else
                        return "";
                }
            }
            else if (total != "")
            {
                return total;
            }
            else
                return "";
        }
    </script>

</asp:Content>

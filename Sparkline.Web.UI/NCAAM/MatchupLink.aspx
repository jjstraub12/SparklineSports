<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="MatchupLink.aspx.cs" Inherits="Straub.Web.UI.NCAAM.MatchupLink" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MATCHUP</title>
    <style>
        body {
            font-family: 'Agency FB';
        }
        #tblInformation {
            text-align: center;
            width: 100%;
        }
        .logoClass {
            width: 25%;
        }

        /*THIS IS FOR MATCHUP DIV*/
        .cssMatchup {
            font-size: 36px;
            font-weight: bold;
            text-align: center;
            border: none;
            margin: auto;
        }
        .cssMatchupLogo {
            border: none;
        }
        .cssMatchupInfo {
            text-align: left;
            border: none;
            padding-left: 25px;
            padding-right: 25px;
        }

        /*THIS IS FOR LINESCORE DIV*/
        .cssLineScore {
            width: 80%;
            margin: auto;
            margin-top: 10px;
        }
        .cssLineScoreHeaders {
            width: 25%;
            background-color: black;
            color: white;
        }
        .cssLineScoreScores {
            width: 25%;
            text-align: center;
        }

        /*THIS IS FOR MATCHUP HISTORY DIV*/
        .cssMatchupHistory {
            width: 100%;
            margin: auto;
            margin-top: 10px;
        }
        .cssMatchupHistoryHeaders {
            background-color: black;
            color: white;
        }
        .cssMatchupHistoryItems {
            text-align: center;
        }


    </style>


</head>
<body onload="passValues()">
    <form id="form1" runat="server">
        <table id="tblInformation">
            <tr>
                <td class="logoClass">
                    <asp:Image ID="imgTeam1" runat="server" ImageUrl="~/img/SparklineMiniLogo.png" Height="100" />
                </td>
                <td>
    <%----- MATCHUP ---------------------------------------------------------------------------------------------------------------------------------%>
                    <asp:GridView ID="grdMatchup" runat="server" CssClass="cssMatchup" AutoGenerateColumns="false" ShowHeader="false">
                        <EmptyDataTemplate>No Data Available</EmptyDataTemplate>
                        <Columns>
                            <asp:BoundField ItemStyle-CssClass="cssMatchupInfo" DataField="Matchup" />
                        </Columns>
                    </asp:GridView> 
    <%----- LINE SCORE ------------------------------------------------------------------------------------------------------------------------------%>
                    <asp:GridView ID="grdLineScore" runat="server" CssClass="cssLineScore" AutoGenerateColumns="false" ShowHeader="true">
                        <EmptyDataTemplate>No Data Available</EmptyDataTemplate>
                        <Columns>
                            <asp:BoundField DataField="Team" ItemStyle-CssClass="cssLineScoreScores" HeaderText="TEAM" HeaderStyle-CssClass="cssLineScoreHeaders" />
                            <asp:BoundField DataField="H1" ItemStyle-CssClass="cssLineScoreScores" HeaderText="H1" HeaderStyle-CssClass="cssLineScoreHeaders" />
                            <asp:BoundField DataField="H2" ItemStyle-CssClass="cssLineScoreScores" HeaderText="H2" HeaderStyle-CssClass="cssLineScoreHeaders" />
                            <asp:BoundField DataField="F" ItemStyle-CssClass="cssLineScoreScores" HeaderText ="F" HeaderStyle-CssClass="cssLineScoreHeaders" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td class="logoClass">
                    <asp:Image ID="imgTeam2" runat="server" ImageUrl="~/img/SparklineMiniLogo.png" Height="100" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
    <%----- MATCHUP HISTORY -------------------------------------------------------------------------------------------------------------------------%>
                    <asp:GridView ID="grdMatchupHistory" runat="server" CssClass="cssMatchupHistory" AutoGenerateColumns="false" ShowHeader="true">
                        <EmptyDataTemplate>No Data Available</EmptyDataTemplate>
                        <Columns>
                            <asp:BoundField DataField="GameDate" ItemStyle-CssClass="cssMatchupHistoryItems" HeaderText="DATE" HeaderStyle-CssClass="cssMatchupHistoryHeaders" />
                            <asp:BoundField DataField="Team" ItemStyle-CssClass="cssMatchupHistoryItems" HeaderText="TEAM 1" HeaderStyle-CssClass="cssMatchupHistoryHeaders" />
                            <asp:BoundField DataField="Loc" ItemStyle-CssClass="cssMatchupHistoryItems" HeaderText="LOC" HeaderStyle-CssClass="cssMatchupHistoryHeaders" />
                            <asp:BoundField DataField="Opponent" ItemStyle-CssClass="cssMatchupHistoryItems" HeaderText ="TEAM 2" HeaderStyle-CssClass="cssMatchupHistoryHeaders" />

                            <asp:BoundField DataField="TeamSUFWL" ItemStyle-CssClass="cssMatchupHistoryItems" HeaderText ="TEAM 1 W/L" HeaderStyle-CssClass="cssMatchupHistoryHeaders" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
        
        <asp:HiddenField ID="hdnTeam" runat="server" Value="Team" />
        <asp:HiddenField ID="hdnOpp" runat="server" Value="Opponent" />
        <div id="mapholder" style="margin: auto;"></div>
        
        <asp:GridView ID="grdInformation" runat="server" CssClass="gridView" AutoGenerateColumns="true" Visible="false">
            <EmptyDataTemplate>No Data Available</EmptyDataTemplate>
        </asp:GridView>
    </form>
    
    <script src="http://maps.google.com/maps/api/js?sensor=false"></script>
    <script src="http://maps.google.com/maps/api/js?sensor=false&amp;libraries=geometry"></script>
    <script src="http://www.geocodezip.com/scripts/v3_epoly.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.1/jquery.min.js"></script>
    <script src="../js/maps.js"></script>
    <script src="../js/teams.js"></script>
    <script src="../js/stadiums.js"></script>
        <script>
        function passValues() {
            var team1 = document.getElementById('hdnTeam').value;
            var team2 = document.getElementById('hdnOpp').value;
            stadium = 'kfc-yum-center';

            showPosition(team1, team2, stadium);
        }
    </script>
</body>
</html>


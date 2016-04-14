<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="QueryTest.aspx.cs" Inherits="Straub.Web.UI.QueryTest" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .gridView {
            margin: auto;
            margin-top: 10px;
        }

        .gridCell {
            font: 18px 'Agency FB' bold;
            border: 1px solid black;
        }

        .boundfield-hidden {
            display: none;
        }
    </style>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>

    <script>
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

    <div id="body">
        <br />
        <table style="margin: auto;">
            <tr>
                <td>
                    SEASON:
                </td>
                <td>
                    TEAM 1:
                </td>
                <td>
                    TEAM2:
                </td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="ddlSeason" runat="server" OnSelectedIndexChanged="grdSchedule_DataBinding" AutoPostBack="true"></asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ddlTeam1" runat="server" OnSelectedIndexChanged="grdSchedule_DataBinding" AutoPostBack="true"></asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ddlTeam2" runat="server" OnSelectedIndexChanged="grdSchedule_DataBinding" AutoPostBack="true"></asp:DropDownList>
                </td>
            </tr>
        </table>
        <br />
        <asp:GridView ID="grdSchedule" runat="server" CssClass="gridView" AutoGenerateColumns="false" OnDataBinding="grdSchedule_DataBinding" OnRowDataBound="grdSchedule_OnRowDataBound" OnSelectedIndexChanged="grdSchedule_OnSelectedIndexChanged">
            <EmptyDataTemplate>No Data Available</EmptyDataTemplate>
            <Columns>
                <asp:BoundField HeaderText="GAMEID" DataField="GameId">
                    <ItemStyle CssClass="boundfield-hidden" />
                    <HeaderStyle CssClass="boundfield-hidden" />
                </asp:BoundField>
                <asp:BoundField HeaderText="TEAMID" DataField="TeamId">
                    <ItemStyle CssClass="boundfield-hidden" />
                    <HeaderStyle CssClass="boundfield-hidden" />
                </asp:BoundField>
                <asp:BoundField ItemStyle-Width="75px" ItemStyle-CssClass="gridCell" HeaderText="SEASON" DataField ="Season"/>
                <asp:BoundField ItemStyle-Width="100px" ItemStyle-CssClass="gridCell" HeaderText="DATE" DataField ="GameDateTime" DataFormatString="{0:d}"/>
                <asp:BoundField ItemStyle-Width="80px" ItemStyle-CssClass="gridCell" HeaderText="TIME" DataField ="GameDateTime" DataFormatString="{0:t}" />
                <asp:BoundField ItemStyle-Width="250px" ItemStyle-CssClass="gridCell" HeaderText="TEAM" DataField ="Team"/>
                <asp:BoundField ItemStyle-Width="50px" ItemStyle-CssClass="gridCell" HeaderText="LOC" DataField ="Loc"/>
                <asp:BoundField ItemStyle-Width="250px" ItemStyle-CssClass="gridCell" HeaderText="OPPONENT" DataField ="Opponent"/>
                <asp:BoundField ItemStyle-Width="100px" ItemStyle-CssClass="gridCell" HeaderText="SCORE" DataField ="Score"/>
                <asp:BoundField ItemStyle-Width="100px" ItemStyle-CssClass="gridCell" HeaderText="MATCHUP" DataField="Score"/>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>

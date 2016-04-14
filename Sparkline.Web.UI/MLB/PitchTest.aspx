<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="PitchTest.aspx.cs" Inherits="Straub.Web.UI.MLB.PitchTest" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .hiddenGrid {
            display: normal;
        }
    </style>
    <div style="width: 100%; margin-left: 10px;">
        <a href="../templates/MLB_2015_PITCHES.xlsx">DOWNLOAD 2015 EXCEL FILE</a><br />
<%--        <a href="../templates/MLBPITCHES.xlsx">DOWNLOAD 2016 EXCEL FILE</a><br />--%>
        <a href="../MLB/PitchChart.aspx">Pitch Chart Test</a>
    </div>
    <br />
    <div>
        <asp:TextBox ID="txtDate" runat="server" Text="m/d/yyyy"></asp:TextBox>
        <asp:Button ID="txtGames" runat="server" Text="REFRESH" OnClick="txtGames_Click"/>
        <asp:Button ID="xlExport" runat="server" Text="EXCEL" OnClick="xlExport_Click" />
        <asp:GridView ID="grdPitches" runat="server" AutoGenerateColumns="false" CssClass="hiddenGrid" AllowPaging="true" PageSize="100">
            <EmptyDataTemplate>No Data Available</EmptyDataTemplate>
            <Columns>
                <asp:BoundField DataField="GameDate" HeaderText="Date" DataFormatString="{0:d}" />
                <asp:BoundField DataField="GameMatchup" HeaderText="Matchup" />
                <asp:BoundField DataField="pitcher_team" HeaderText="Team" />
                <asp:BoundField DataField="Pitcher" HeaderText="Pitcher" />
                <asp:BoundField DataField="p_throws" HeaderText="Throws" />
                <asp:BoundField DataField="Batter" HeaderText="Batter" />
                <asp:BoundField DataField="stand" HeaderText="Bats" />
                <asp:BoundField DataField="ab_id" HeaderText="AtBatOrder" />
                <asp:BoundField DataField="ab_count" HeaderText="AtBatPitchNum" />
                <asp:BoundField DataField="ab_total" HeaderText="AtBatPitchTot" />
                <asp:BoundField DataField="balls" HeaderText="Balls" />
                <asp:BoundField DataField="strikes" HeaderText="Strikes" />
                <asp:BoundField DataField="mlbam_pitch_name" HeaderText="Pitch" />
                <asp:BoundField DataField="start_speed" HeaderText="Speed" />
                <asp:BoundField DataField="type" HeaderText="PitchResult" />
                <asp:BoundField DataField="des" HeaderText="AtBatResult" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>

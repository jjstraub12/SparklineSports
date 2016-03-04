<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NcaamSchedule.ascx.cs" Inherits="Straub.Web.UI.NCAAM.Controls.NcaamSchedule" %>

<div>
    <asp:Label ID="lblSchedule" runat="server" Text="NCAA Men's Basketball Schedule" />
</div>
<asp:TextBox ID="txtDatePick" runat="server"></asp:TextBox>
<asp:Button ID="btnDatePick" runat="server" Text="GO" OnClick="btnDatePick_Click" />
<asp:GridView ID="grdSchedule" runat="server" AutoGenerateColumns="false" OnDataBinding="grdSchedule_DataBinding">
    <EmptyDataTemplate>No Data Available</EmptyDataTemplate>
    <Columns>
        <asp:BoundField ItemStyle-Width="100px" HeaderText="TIME" DataField ="GameDateTime" DataFormatString="{0:t}" />
        <asp:BoundField ItemStyle-Width="50px" ItemStyle-HorizontalAlign="Center" HeaderText="Rk" DataField ="AwayTeamAP" />
        <asp:BoundField ItemStyle-Width="250px" HeaderText="AWAY TEAM" DataField ="AwayTeam" />
        <asp:BoundField ItemStyle-Width="50px" ItemStyle-HorizontalAlign="Center" HeaderText="LOC" DataField ="Loc" />
        <asp:BoundField ItemStyle-Width="50px" ItemStyle-HorizontalAlign="Center" HeaderText="Rk" DataField ="HomeTeamAP" />
        <asp:BoundField ItemStyle-Width="250px" HeaderText="HOME TEAM" DataField ="HomeTeam" />
        <asp:BoundField ItemStyle-Width="50px" ItemStyle-HorizontalAlign="Center" HeaderText="O/U" DataField ="OverUnder" DataFormatString="{0:F1}" />
    </Columns>
</asp:GridView>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MapTest.aspx.cs" Inherits="Straub.Web.UI.NCAAM.MapTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body onload="passValues()">
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="ddlTeams" runat="server" Width="200px"></asp:DropDownList>
        <div id="mapholder" style="margin: auto;"></div>
    
    </div>
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
                var team = document.getElementById("ddlTeams").options[document.getElementById("ddlTeams").selectedIndex].value;
                teamLocation(team);
            }
    </script>
</body>
</html>

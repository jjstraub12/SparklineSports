using Straub.Web.UI.classes;
using System;
using System.Configuration;
using System.Data;
using System.Web.UI.WebControls;

namespace Straub.Web.UI
{
    public partial class QueryTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlSeason_NeedDataSource();
                ddlTeam1_NeedDataSource();
                ddlTeam2_NeedDataSource();
            }
            grdSchedule.DataBind();
        }

        protected void grdSchedule_OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                int index = CommonFunctions.GetColumnIndexByName(e.Row, "MATCHUP");
                e.Row.Cells[index].Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(grdSchedule, "Select$" + e.Row.RowIndex);
                e.Row.Cells[index].Attributes["style"] = "cursor:pointer";
                e.Row.Cells[index].Text = "matchup";

                index = CommonFunctions.GetColumnIndexByName(e.Row, "DATE");
                string date = e.Row.Cells[index].Text;

                index = CommonFunctions.GetColumnIndexByName(e.Row, "TEAMID");
                string team = e.Row.Cells[index].Text;
            }
        }

        protected void grdSchedule_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = grdSchedule.SelectedRow;

            int rowIdx = row.RowIndex;

            int colIdx = CommonFunctions.GetColumnIndexByName(row, "TEAMID");
            string team = row.Cells[colIdx].Text;

            colIdx = CommonFunctions.GetColumnIndexByName(row, "DATE");
            string date = (Convert.ToDateTime(row.Cells[colIdx].Text)).ToString("MM/dd/yyyy");

            string queryString = "/NCAAM/MatchupLink.aspx" + "?team=" + team + "&date=" + date;
            string newWin = "PopupCenter('" + queryString + "', '_blank', '1200', '800');";
            ClientScript.RegisterStartupScript(this.GetType(), "pop", newWin, true);
        }

        protected void grdSchedule_DataBinding(object sender, EventArgs e)
        {
            queryClass qry = new queryClass();
            DataTable tbl = new DataTable();
            string conString = ConfigurationManager.ConnectionStrings["NCAAM_DB"].ConnectionString;

            qry.Season = ddlSeason.SelectedValue;
            qry.TeamId1 = ddlTeam1.SelectedValue;
            qry.TeamId2 = ddlTeam2.SelectedValue;

            GetData getData = new GetData();
            getData.queryString = "EXEC dbo.userQueryResults '" + qry.VariableString + "'";
            grdSchedule.DataSource = getData.dt;
        }

        private void ddlSeason_NeedDataSource()
        {
            GetData getData = new GetData();
            getData.queryString = "SELECT DISTINCT Season FROM RawStats.tbl_Teams ORDER BY Season DESC";
            ddlSeason.DataSource = getData.dt;
            ddlSeason.DataTextField = "Season";
            ddlSeason.DataValueField = "Season";
            ddlSeason.DataBind();
            ddlSeason.Items.Insert(0, new ListItem("ALL", "ALL"));
            ddlSeason.SelectedIndex = 0;
            grdSchedule.DataBind();
        }

        private void ddlTeam1_NeedDataSource()
        {
            string season = ddlSeason.SelectedValue;
            if (season == "ALL")
                season = "Season";

            GetData getData = new GetData();
            getData.queryString = "SELECT DISTINCT Team, TeamId FROM RawStats.tbl_Teams WHERE Season = " + season + " ORDER BY Team";
            ddlTeam1.DataSource = getData.dt;
            ddlTeam1.DataTextField = "Team";
            ddlTeam1.DataValueField = "TeamId";
            ddlTeam1.DataBind();
            ddlTeam1.Items.Insert(0, new ListItem("ALL", "ALL"));
            ddlTeam1.SelectedIndex = 0;
            grdSchedule.DataBind();
        }

        private void ddlTeam2_NeedDataSource()
        {
            string season = ddlSeason.SelectedValue;
            if (season == "ALL")
                season = "Season";

            GetData getData = new GetData();
            getData.queryString = "SELECT DISTINCT Team, TeamId FROM RawStats.tbl_Teams WHERE Season = " + season + " ORDER BY Team";
            ddlTeam2.DataSource = getData.dt;
            ddlTeam2.DataTextField = "Team";
            ddlTeam2.DataValueField = "TeamId";
            ddlTeam2.DataBind();
            ddlTeam2.Items.Insert(0, new ListItem("ALL", "ALL"));
            ddlTeam2.SelectedIndex = 0;
            grdSchedule.DataBind();
        }
    }
}
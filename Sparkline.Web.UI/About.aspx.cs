using Straub.Web.UI.classes;
using System;
using System.Data;

namespace Straub.Web.UI.About
{
    public partial class Information : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                Session["GameDate"] = string.Format("{0:d}", DateTime.Now);
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string CreationDate = DateTime.Now.ToString("MM\\/dd\\/yyyy h\\:mm tt");
            string EmailAddress = txtEmail.Text;
            string DBTester = (chkDB.Checked == true) ? "1" : "0";

            string CasualSportsFan = (chkPersonal.Items[0].Selected == true) ? "1" : "0";
            string StatsHobbyist = (chkPersonal.Items[2].Selected == true) ? "1" : "0";
            string FantasyLeague = (chkPersonal.Items[4].Selected == true) ? "1" : "0";
            string SportsWagering = (chkPersonal.Items[1].Selected == true) ? "1" : "0";
            string DailyFantasy = (chkPersonal.Items[3].Selected == true) ? "1" : "0";
            string CoolSite = (chkPersonal.Items[5].Selected == true) ? "1" : "0";

            string GeneralSportsDatabase = (chkInterests.Items[0].Selected == true) ? "1" : "0";
            string SparklineTrends = (chkInterests.Items[1].Selected == true) ? "1" : "0";
            string ATSPredictions = (chkInterests.Items[2].Selected == true) ? "1" : "0";
            string CurrentSportsNews = (chkInterests.Items[3].Selected == true) ? "1" : "0";
            string SpecificTeamInfo = (chkInterests.Items[4].Selected == true) ? "1" : "0";
            string PlayerCareerStats = (chkInterests.Items[5].Selected == true) ? "1" : "0";
            string InjuryUpdates = (chkInterests.Items[6].Selected == true) ? "1" : "0";
            string DailyFantasyCont = (chkInterests.Items[7].Selected == true) ? "1" : "0";
            string MobileAccess = (chkInterests.Items[8].Selected == true) ? "1" : "0";
            string SiteContests = (chkInterests.Items[9].Selected == true) ? "1" : "0";
            string WeeklyBlog = (chkInterests.Items[10].Selected == true) ? "1" : "0";
            string DiscussionForum = (chkInterests.Items[11].Selected == true) ? "1" : "0";

            string Feedback = txtFeedback.Text;

            string sql = "INSERT INTO [USERS].[tblPreSurvey] " +
                         "VALUES ('" + CreationDate + "'" +
                         ",'" + EmailAddress + "'" +
                         ",'" + DBTester + "'" +
                         ",'" + CasualSportsFan + "'" +
                         ",'" + StatsHobbyist + "'" +
                         ",'" + FantasyLeague + "'" +
                         ",'" + SportsWagering + "'" +
                         ",'" + DailyFantasy + "'" +
                         ",'" + CoolSite + "'" +
                         ",'" + GeneralSportsDatabase + "'" +
                         ",'" + SparklineTrends + "'" +
                         ",'" + ATSPredictions + "'" +
                         ",'" + CurrentSportsNews + "'" +
                         ",'" + SpecificTeamInfo + "'" +
                         ",'" + PlayerCareerStats + "'" +
                         ",'" + InjuryUpdates + "'" +
                         ",'" + DailyFantasyCont + "'" +
                         ",'" + MobileAccess + "'" +
                         ",'" + SiteContests + "'" +
                         ",'" + WeeklyBlog + "'" +
                         ",'" + DiscussionForum + "'" +
                         ",'" + Feedback + "')";

            DataTable dt = new DataTable();
            GetData getData = new GetData();
            getData.queryString = sql;
            dt = getData.dt;

            //REMOVE THIS AT LAUNCH
            Response.Redirect("About/Submission.aspx");
        }
    }
}
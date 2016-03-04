using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Straub.Web.UI.NCAAM.Controls
{
    public partial class Schedule : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected override void OnPreRender(EventArgs e)
        {
            grdSchedule.DataBind();
            base.OnPreRender(e);
        }
        protected void btnDatePick_Click(object sender, EventArgs e)
        {
            Session["GameDate"] = txtDatePick.Text;
            grdSchedule.DataBind();
        }
        protected void grdSchedule_DataBinding(object sender, EventArgs e)
        {
            txtDatePick.Text = Session["GameDate"].ToString();

            string query;
            SqlConnection conn = new SqlConnection("Data Source=pine.arvixe.com;Initial Catalog=SJS_SparklineUsers;Persist Security Info=True;User ID=SAAdmin;Password=okState#123");
            SqlCommand sqlCommand;
            SqlDataReader reader;
            SqlDataAdapter adapter = new SqlDataAdapter();

            conn.Open();
            
            query = "EXEC [dbo].[NcaamScheduleCollection] '" + txtDatePick.Text + "'";
            sqlCommand = new SqlCommand(query, conn);
            adapter.SelectCommand = new SqlCommand(query, conn);
            reader = sqlCommand.ExecuteReader();
            grdSchedule.DataSource = reader;
        }
    }
}
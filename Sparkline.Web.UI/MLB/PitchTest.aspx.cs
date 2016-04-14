using Straub.Web.UI.classes;
using System;
using System.Drawing;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Straub.Web.UI.MLB
{
    public partial class PitchTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                txtDate.Text = DateTime.Now.ToString("d");
                this.BindGrid(txtDate.Text);
            }
        }
        private void BindGrid(string gameDate)
        {
            GetData getData = new GetData();
            getData.queryString = "SELECT * FROM MLB.qryGames WHERE GameDate = '" + gameDate + "' ORDER BY GameId, ab_id, ab_count";

            grdPitches.DataSource = getData.dt;
            grdPitches.DataBind();
        }
        protected void txtGames_Click(object sender, EventArgs e)
        {
            this.BindGrid(txtDate.Text);
        }
        protected void xlExport_Click(object sender, EventArgs e)
        {
            string fName = txtDate.Text.Replace("/", "_");
            grdPitches.AllowPaging = false;
            this.BindGrid(txtDate.Text);

            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment;filename=Pitches_" + fName + ".xls");
            Response.Charset = "";
            Response.ContentType = "application/vnd.ms-excel";
            using (StringWriter sw = new StringWriter())
            {
                HtmlTextWriter hw = new HtmlTextWriter(sw);


                grdPitches.HeaderRow.BackColor = Color.White;
                foreach (TableCell cell in grdPitches.HeaderRow.Cells)
                {
                    cell.BackColor = grdPitches.HeaderStyle.BackColor;
                }
                foreach (GridViewRow row in grdPitches.Rows)
                {
                    row.BackColor = Color.White;
                    foreach (TableCell cell in row.Cells)
                    {
                        if (row.RowIndex % 2 == 0)
                        {
                            cell.BackColor = grdPitches.AlternatingRowStyle.BackColor;
                        }
                        else
                        {
                            cell.BackColor = grdPitches.RowStyle.BackColor;
                        }
                        cell.CssClass = "textmode";
                    }
                }

                grdPitches.RenderControl(hw);

                //style to format numbers to string
                string style = @"<style> .textmode { } </style>";
                Response.Write(style);
                Response.Output.Write(sw.ToString());
                Response.Flush();
                Response.End();
            }
            grdPitches.AllowPaging = true;
            this.BindGrid(txtDate.Text);
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }
    }
}
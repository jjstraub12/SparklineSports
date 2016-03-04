using System;

namespace Straub.Web.UI
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Browser["IsMobileDevice"] == "true")
            {
                Response.Redirect("Mobile.aspx");
            }

            if (!IsPostBack)
                Session["GameDate"] = string.Format("{0:d}", DateTime.Now);
        }
    }
}
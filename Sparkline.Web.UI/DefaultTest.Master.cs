using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Straub.Web.UI
{
    public partial class Master1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.Title == "Sparkline - HOME")
            {
                divCarousel.Visible = true;
            }
            else
            {
                divCarousel.Visible = false;
            }
        }
    }
}
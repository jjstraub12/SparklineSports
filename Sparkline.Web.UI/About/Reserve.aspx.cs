﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Straub.Web.UI.About
{
    public partial class Reserve : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtFeedback.Attributes.Add("onfocus", "inputFocus(this)");
            txtFeedback.Attributes.Add("onblur", "inputBlur(this)");
        }
    }
}
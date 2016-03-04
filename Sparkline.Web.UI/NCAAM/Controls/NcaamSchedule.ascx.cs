using Straub.Data;
using Straub.Data.Collections;
using Straub.Presenter.NCAAM.Controls;
using Straub.Presenter.NCAAM.Presenter;
using System;
using System.Collections.Generic;
using System.Web.UI;
using Telerik.Web.UI;

namespace Straub.Web.UI.NCAAM.Controls
{
    public partial class NcaamSchedule : UserControl, INcaamScheduleView
    {
        private NcaamSchedulePresenter _presenter;
        public event NcaamScheduleEventHandler NeedDataSourceScheduleDate;
        protected void Page_Load(object sender, EventArgs e)
        {
            _presenter = new NcaamSchedulePresenter(this);
        }
        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);
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

            var _args = new NcaamScheduleEventArgs();
            _args.GameDate = Convert.ToDateTime(txtDatePick.Text);
            _args.ScheduleList = new NcaamScheduleCollection();
            if (NeedDataSourceScheduleDate != null) NeedDataSourceScheduleDate(sender, _args);
            grdSchedule.DataSource = _args.ScheduleList;
        }
        public DateTime GameDate
        {
            get;
            set;
        }
    }
}
using Straub.Presenter.NCAAM.Controls;

namespace Straub.Presenter.NCAAM.Presenter
{
    public class NcaamSchedulePresenter
    {
        private readonly INcaamScheduleView _view;

        public NcaamSchedulePresenter(INcaamScheduleView view)
        {
            _view = view;
            _view.NeedDataSourceScheduleDate += _view_NeedDataSourceScheduleDate;
        }

        private void _view_NeedDataSourceScheduleDate(object sender, NcaamScheduleEventArgs e)
        {
            e.ScheduleList.Get_ScheduleForDate(e.GameDate);
        }
    }
}

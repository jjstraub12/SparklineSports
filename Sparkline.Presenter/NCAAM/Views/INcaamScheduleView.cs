using System;

namespace Straub.Presenter.NCAAM.Controls
{
    public interface INcaamScheduleView
    {
        DateTime GameDate { get; }
        event NcaamScheduleEventHandler NeedDataSourceScheduleDate;
    }
}

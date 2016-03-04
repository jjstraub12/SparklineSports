using Straub.Data.Tables;
using System;
using System.Collections.Generic;

namespace Straub.Data.Interfaces
{
    public interface INcaamScheduleCollection : IList<NcaamSchedule>
    {
        void Get_ScheduleForDate(DateTime GameDate);
    }
}

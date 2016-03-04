using Straub.Data.Interfaces;
using System;

namespace Straub
{
    [Serializable]
    public class NcaamScheduleEventArgs : EventArgs
    {
        public DateTime GameDate { get; set; }
        public INcaamScheduleCollection ScheduleList { get; set; }
    }
}
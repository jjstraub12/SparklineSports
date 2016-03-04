using Straub.Data.Interfaces;
using System;
using System.Collections.Generic;
using System.Collections;
using Straub.Data.Tables;
using Straub.Data.Classes;

namespace Straub.Data.Collections
{
    public class NcaamScheduleCollection : INcaamScheduleCollection
    {
        private List<NcaamSchedule> _NcaamScheduleCollection;

        public NcaamScheduleCollection()
        {
            _NcaamScheduleCollection = new List<NcaamSchedule>();
        }

        #region Mandatory

        public int Count
        {
            get { return _NcaamScheduleCollection.Count; }
        }

        public bool IsReadOnly
        {
            get { return false; }
        }

        NcaamSchedule IList<NcaamSchedule>.this[int index]
        {
            get
            {
                throw new NotImplementedException();
            }

            set
            {
                throw new NotImplementedException();
            }
        }

        public void Add(NcaamSchedule item)
        {
            _NcaamScheduleCollection.Add(item);
        }

        public void Clear()
        {
            _NcaamScheduleCollection.Clear();
        }

        public bool Contains(NcaamSchedule item)
        {
            return _NcaamScheduleCollection.Contains(item);
        }

        public void CopyTo(NcaamSchedule[] array, int arrayIndex)
        {
            _NcaamScheduleCollection.CopyTo(array, arrayIndex);
        }

        public IEnumerator<NcaamSchedule> GetEnumerator()
        {
            foreach (NcaamSchedule GameDate in _NcaamScheduleCollection)
            {
                yield return GameDate;
            }
        }

        public int IndexOf(NcaamSchedule item)
        {
            return _NcaamScheduleCollection.IndexOf(item);
        }

        public void Insert(int index, NcaamSchedule item)
        {
            _NcaamScheduleCollection.Insert(index, item);
        }

        public bool Remove(NcaamSchedule item)
        {
            return _NcaamScheduleCollection.Remove(item);
        }

        public void RemoveAt(int index)
        {
            _NcaamScheduleCollection.RemoveAt(index);
        }

        IEnumerator IEnumerable.GetEnumerator()
        {
            return this.GetEnumerator();
        }
        #endregion

        #region NCAAM Schedule
        public void Get_ScheduleForDate(DateTime GameDate)
        {
            //using (var context = new ORMDataContext("Data Source=pine.arvixe.com;Initial Catalog=SJS_SparklineUsers;Persist Security Info=True;User ID=SAAdmin;Password=okState#123"))
            //{
            //    var classObject = new NcaamScheduleCollectionClass();
            //    classObject.Function = "Get_ScheduleForDate";
            //    classObject.GameDate = GameDate;
            //    var results = from a in context.NcaamScheduleCollection(classObject.VariableString).ToList()
            //                  select new NcaamSchedule(a);

            //    _NcaamScheduleCollection = results.ToList();
            //}
        }
        #endregion
    }
}

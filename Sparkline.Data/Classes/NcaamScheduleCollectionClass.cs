using System;
using System.Reflection;

namespace Straub.Data.Classes
{
    public class NcaamScheduleCollectionClass
    {
        public string Function { get; set; }
        public DateTime GameDate { get; set; }
        public string VariableString
        {
            get { return GenerateString(typeof(NcaamScheduleCollectionClass)); }
        }
        public string GenerateString(Type myType)
        {
            string VariableString = "";
            PropertyInfo[] myPropInfo = myType.GetProperties();

            foreach (PropertyInfo property in myPropInfo)
            {
                if (property.Name != "VariableString")
                {
                    if (property.GetValue(this, null) != null && property.GetValue(this, null) != "")
                    {
                        VariableString += property.Name + "|" + property.GetValue(this, null) + "||";
                    }
                    else
                    {
                        VariableString += property.Name + "|null||";
                    }
                }
                else
                {
                    break;
                }
            }

            return VariableString;
        }
    }
}

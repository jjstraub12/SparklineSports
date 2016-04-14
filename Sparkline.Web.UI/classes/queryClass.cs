using System;
using System.Reflection;

namespace Straub.Web.UI.classes
{
    public class queryClass
    {
        public string Season { get; set; }
        public string TeamId1 { get; set; }
        public string TeamId2 { get; set; }
        public string VariableString
        {
            get { return GenerateString(typeof(queryClass)); }
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
                        VariableString += property.Name + "|ALL||";
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
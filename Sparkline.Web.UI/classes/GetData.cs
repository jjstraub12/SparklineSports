using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Reflection;

namespace Straub.Web.UI.classes
{
    public class GetData
    {
        public string queryString { get; set; }
        public DataTable dt
        {
            get { return ReturnTable(typeof(GetData)); }
        }
        public DataTable ReturnTable(Type myType)
        {
            string strConnString = ConfigurationManager.ConnectionStrings["NCAAM_DB"].ConnectionString;
            DataTable dt = new DataTable();
            PropertyInfo[] myPropInfo = myType.GetProperties();

            foreach (PropertyInfo property in myPropInfo)
            {
                if(property.Name == "queryString")
                {
                    using (SqlConnection con = new SqlConnection(strConnString))
                    {
                        using (SqlCommand cmd = new SqlCommand())
                        {
                            cmd.CommandText = property.GetValue(this, null).ToString();
                            using (SqlDataAdapter sda = new SqlDataAdapter())
                            {
                                cmd.Connection = con;
                                sda.SelectCommand = cmd;
                                using (DataSet ds = new DataSet())
                                {
                                    sda.Fill(dt);
                                }
                            }
                        }
                    }
                }
            }

            return dt;
        }
    }


}
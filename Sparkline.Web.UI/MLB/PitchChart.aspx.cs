using Straub.Web.UI.classes;
using System;
using System.Data;
using System.Web.UI.DataVisualization.Charting;

namespace Straub.Web.UI.MLB
{
    public partial class PitchChart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetData getData = new GetData();
            getData.queryString = "SELECT TOP 1 * FROM MLB.Pitches WHERE play_guid = '8352f3fa-289c-4126-ae82-37341ab4c041'";

            DataRow dr = getData.dt.Rows[0];
            DataTable tracker = pitchTracker(dr);

            chtFront.DataSource = tracker;
            chtFront.Series["trajectory"].XValueMember = "x";
            chtFront.Series["trajectory"].YValueMembers = "z";
            chtFront.DataBind();

            chtSide.DataSource = tracker;
            chtSide.Series["trajectory"].XValueMember = "y";
            chtSide.Series["trajectory"].YValueMembers = "z";
            chtSide.DataBind();

            chtTop.DataSource = tracker;
            chtTop.Series["trajectory"].XValueMember = "x";
            chtTop.Series["trajectory"].YValueMembers = "y";
            chtTop.DataBind();
        }
        
        DataTable pitchTracker(DataRow dr)
        {
            DataTable dt = new DataTable();
            DataColumn column;
            DataRow row;

            // ADD COLUMNS TO DATATABLE
            column = new DataColumn();
            column.DataType = Type.GetType("System.Decimal");
            column.ColumnName = "time";
            dt.Columns.Add(column);

            column = new DataColumn();
            column.DataType = Type.GetType("System.Decimal");
            column.ColumnName = "x";
            dt.Columns.Add(column);

            column = new DataColumn();
            column.DataType = Type.GetType("System.Decimal");
            column.ColumnName = "y";
            dt.Columns.Add(column);

            column = new DataColumn();
            column.DataType = Type.GetType("System.Decimal");
            column.ColumnName = "z";
            dt.Columns.Add(column);

            //DECLARE VARIABLES
            double x0, y0, z0, yf, vx0, vy0, vz0, ax, ay, az, x, y, z;

            x0 = Convert.ToDouble(dr["x0"]);
            y0 = Convert.ToDouble(dr["y0"]);
            z0 = Convert.ToDouble(dr["z0"]);

            yf = 1.417;

            vx0 = Convert.ToDouble(dr["vx0"]);
            vy0 = Convert.ToDouble(dr["vy0"]);
            vz0 = Convert.ToDouble(dr["vz0"]);

            ax = Convert.ToDouble(dr["ax"]);
            ay = Convert.ToDouble(dr["ay"]);
            az = Convert.ToDouble(dr["az"]);

            //DO MATH
            double vyf = -1 * Math.Sqrt(vy0 * vy0 + 2 * ay * (yf - y0));
            double flt = (vyf - vy0) / ay;

            int step = 100;
            double interval = flt / step;

            //LOOP THROUGH DATA
            for(double t = 0; t <= (flt + interval/2); t+=interval)
            {
                x = x0 + vx0 * t + 0.5 * ax * t * t;
                y = y0 + vy0 * t + 0.5 * ay * t * t;
                z = z0 + vz0 * t + 0.5 * az * t * t;

                row = dt.NewRow();
                row["time"] = t;
                row["x"] = x;
                row["y"] = y;
                row["z"] = z;
                dt.Rows.Add(row);
            }
            return dt;
        }
    }
}
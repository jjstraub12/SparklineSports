using System.Collections.Generic;
using System.Configuration;

namespace Straub.Data
{
    public static class DataConnections
    {
        public static string GetDataConnection<T>(this IEnumerable<T> obj)
        {
            ConnectionStringSettings settings;
            settings = ConfigurationManager.ConnectionStrings["SparklineUsers"];
            return (settings != null) ? settings.ConnectionString : string.Empty;
        }
    }
}

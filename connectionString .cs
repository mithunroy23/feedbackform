using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

namespace feedback_vs_1._1
{
    public class Utils
    { 
    private static string connectionString = "Data Source=DESKTOP-OD7K0GP;Initial Catalog=feedback;User ID=feedback;Password=123";

    public static string ConnectionString
    {
        get
        {
                SqlConnection cnn;
                cnn = new SqlConnection(connectionString);
               return connectionString;
        }
        set
        {
            connectionString = value;
        }
    }
}
}
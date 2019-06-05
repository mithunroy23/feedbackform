using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;

namespace feedback_vs_1._1
{
    public partial class Report : System.Web.UI.Page
    {
        string connString = Utils.ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userid"] != null)
            {
                SqlConnection cnn;
                cnn = new SqlConnection(connString);
                cnn.Open();
                string result = ("SELECT [name]FROM [feedback].[dbo].[LoginTbl] where [userid]='" + Session["userid"] + "'");
                SqlCommand showresult = new SqlCommand(result, cnn);
                showresult.ExecuteNonQuery();
                string actresult = ((string)showresult.ExecuteScalar());
                lbl_nm.Text = actresult;
                cnn.Close();
            }
            else
            {
                Response.Redirect("~/login.aspx");
            }
        }
    }
}
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
    public partial class WebForm2 : System.Web.UI.Page
    {
        string connString = Utils.ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            SqlConnection cnn;
            cnn = new SqlConnection(connString);
            cnn.Open();
            SqlCommand lcmd = new SqlCommand("[dbo].[sp_Login]",cnn);
            lcmd.CommandType = CommandType.StoredProcedure;
            lcmd.Parameters.AddWithValue("@userid",name.Text);
            lcmd.Parameters.AddWithValue("@paswrd",orgn.Text);
            
            int result = Convert.ToInt32(lcmd.ExecuteScalar());
            cnn.Close();
            if (result ==1)
            {
                Session["userid"] = name.Text;
                Response.Redirect("~/profile.aspx");
            }
            else
            {
                Label1.Text = ("Incorrect User Name or Password");
            }
        }

        protected void btn_rgstr_Click(object sender, EventArgs e)
        {

        }
    }
}

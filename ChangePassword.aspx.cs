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
    public partial class ChangePassword : System.Web.UI.Page
    {
        string connString = Utils.ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            //if (Session["concat ([link],[id])"] != null)
            //{
            //    SqlConnection cnn;
            //    cnn = new SqlConnection(connString);
            //    cnn.Open();
            //    string result = ("SELECT concat ([link],[id]) FROM [dbo].[pswrd_rst] where  [id]='" + Session["id"] + "'");
            //    SqlCommand showresult = new SqlCommand(result, cnn);
            //    showresult.ExecuteNonQuery();
            //    string actresult = ((string)showresult.ExecuteScalar());
            //    cnn.Close();
            //}
            //else
            //{
            //    Response.Redirect("~/login.aspx");
            //}

        }

        protected void btn_change_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {

                SqlConnection cnn;
                cnn = new SqlConnection(connString);
                cnn.Open();
                SqlCommand cmd = new SqlCommand("[dbo].[sp_change_paswrd]", cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@userid", txt_eid.Text);
                cmd.Parameters.AddWithValue("@paswrd", txt_paswrd.Text);
                cmd.ExecuteNonQuery();
                cnn.Close();
                ClientScript.RegisterStartupScript(GetType(), "someKey", "alert('Password Changed Successfully !!');", true);
                //MessageBox.Show("Registration successfully !!");
                txt_eid.Text = "";
                txt_paswrd.Text="";
            }
            else
            {
                Label1.Text = "Data Not Saved!!";
            }
        }
    }
}
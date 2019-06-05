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
    public partial class WebForm1 : System.Web.UI.Page
       
    {
       string connString = Utils.ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void img_btn_unhpy_Click(object sender, ImageClickEventArgs e)
        {

            SqlConnection cnn;
            cnn =new SqlConnection(connString);
            cnn.Open();
            SqlCommand cmd = new SqlCommand("[dbo].[SP_insrt_unhappy]",cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@servc_id", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@ac_no", name.Text);
            cmd.Parameters.AddWithValue("@mobile_no", orgn.Text);
            cmd.ExecuteNonQuery();
            cnn.Close();
            ClientScript.RegisterStartupScript(GetType(), "someKey", "alert('Thanks for your support!!');", true);
            //MessageBox.Show("Thanks for your support!!");
            name.Text = "";
            orgn.Text = "";
        }

        protected void img_btn_happy_Click(object sender, ImageClickEventArgs e)
        {
            SqlConnection cnn;
            cnn = new SqlConnection(connString);
            cnn.Open();
            SqlCommand cmd = new SqlCommand("[dbo].[SP_insrt_happy]", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@servc_id", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@ac_no", name.Text);
            cmd.Parameters.AddWithValue("@mobile_no", orgn.Text);
            cmd.ExecuteNonQuery();
            cnn.Close();
            ClientScript.RegisterStartupScript(GetType(), "someKey", "alert('Thanks for your support!!');", true);
            //MessageBox.Show("Thanks for your support!!");
            name.Text = "";
            orgn.Text = "";
        }

        protected void img_btn_good_Click(object sender, ImageClickEventArgs e)
        {
            SqlConnection cnn;
            cnn = new SqlConnection(connString);
            cnn.Open();
            SqlCommand cmd = new SqlCommand("[dbo].[SP_insrt_good]", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@servc_id", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@ac_no", name.Text);
            cmd.Parameters.AddWithValue("@mobile_no", orgn.Text);
            cmd.ExecuteNonQuery();
            cnn.Close();
            ClientScript.RegisterStartupScript(GetType(), "someKey", "alert('Thanks for your support!!');", true);

            //MessageBox.Show("Thanks for your support!!");
            name.Text = "";
            orgn.Text = "";
        }

        protected void img_btn_average_Click(object sender, ImageClickEventArgs e)
        {
            SqlConnection cnn;
            cnn = new SqlConnection(connString);
            cnn.Open();
            SqlCommand cmd = new SqlCommand("[dbo].[SP_insrt_average]", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@servc_id", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@ac_no", name.Text);
            cmd.Parameters.AddWithValue("@mobile_no", orgn.Text);
            cmd.ExecuteNonQuery();
            cnn.Close();
            ClientScript.RegisterStartupScript(GetType(), "someKey", "alert('Thanks for your support!!');", true);

           // MessageBox.Show("Thanks for your support!!");
            name.Text = "";
            orgn.Text = "";
        }

    }
}
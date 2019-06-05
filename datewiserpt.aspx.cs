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
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;


namespace feedback_vs_1._1
{
    public partial class datewiserpt : System.Web.UI.Page
    {
        ReportDocument dwcrpt = new ReportDocument();
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

        protected void btn_shw_rpt_Click(object sender, EventArgs e)

        {
            SqlConnection cnn;
            cnn = new SqlConnection(connString);
            cnn.Open();
            SqlDataAdapter sda = new SqlDataAdapter("[dbo].[SP_dtrpt]",cnn);
            sda.SelectCommand.CommandType = CommandType.StoredProcedure;
            sda.SelectCommand.Parameters.AddWithValue("@servc_id",DropDownList1.SelectedValue);
            sda.SelectCommand.Parameters.AddWithValue("@servc_dt_frm", datepicker.Text);
            sda.SelectCommand.Parameters.AddWithValue("@servc_dt_to", datepicker1.Text);
            DataTable dtbl = new DataTable();
            sda.Fill(dtbl);
            //dwcrpt.SetDataSource(dtbl);
            dwcrpt.Load(@"F:\asp.net projects\feedback_vs_1.1\feedback_vs_1.1\CrystalReport\CRdw.rpt");
            dwcrpt.Database.Tables["SP_dtrpt"].SetDataSource(dtbl);
            CrystalReportViewer1.ReportSource =null;
            CrystalReportViewer1.ReportSource = dwcrpt;
            dwcrpt.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Report_generation");
            cnn.Close();
        }   
    }
}
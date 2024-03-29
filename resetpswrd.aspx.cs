﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;
using System.Net.Mail;
using System.Text;

namespace feedback_vs_1._1
{
    public partial class resetpswrd : System.Web.UI.Page
    {
        string connString = Utils.ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btn_pswrd_Click(object sender, EventArgs e)
        {
            SqlConnection cnn;
            cnn = new SqlConnection(connString);
            SqlCommand lcmd = new SqlCommand("[dbo].[spResetPassword]", cnn);
            lcmd.CommandType = CommandType.StoredProcedure;
            lcmd.Parameters.AddWithValue("@UserName", name.Text);
            cnn.Open();
            SqlDataReader rdr = lcmd.ExecuteReader();
            while (rdr.Read())
            {
                if (Convert.ToBoolean(rdr["ReturnCode"]))
                {
                    SendPasswordResetEmail(rdr["Email"].ToString(), name.Text, rdr["UniqueId"].ToString());
                    Label1.Text = "An email with instructions to reset your password is sent to your registered email";
                }
                else
                {
                    Label1.ForeColor = System.Drawing.Color.Red;
                    Label1.Text = "Username not found!";
                }
            }
            cnn.Close();
        }
        private void SendPasswordResetEmail(string ToEmail, string UserName, string UniqueId)
        {
            // MailMessage class is present is System.Net.Mail namespace
            MailMessage mailMessage = new MailMessage("nrbcbfeedbackform@gmail.com", ToEmail);


            // StringBuilder class is present in System.Text namespace
            StringBuilder sbEmailBody = new StringBuilder();
            sbEmailBody.Append("Dear " + UserName + ",<br/><br/>");
            sbEmailBody.Append("Please click on the following link to reset your password");
            sbEmailBody.Append("<br/>"); sbEmailBody.Append("http://localhost:49657/ChangePassword.aspx?uid=" + UniqueId);
            sbEmailBody.Append("<br/><br/>");
            sbEmailBody.Append("<b>NRB Commercial Bank Limited</b>");

            mailMessage.IsBodyHtml = true;

            mailMessage.Body = sbEmailBody.ToString();
            mailMessage.Subject = "Reset Your Password";
            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);

            smtpClient.Credentials = new System.Net.NetworkCredential()
            {
                UserName = "nrbcbfeedbackform@gmail.com",
                Password = "krishnAchurA"
            };

            smtpClient.EnableSsl = true;
            smtpClient.Send(mailMessage);
        }
    }
}
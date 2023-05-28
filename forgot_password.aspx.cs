using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection.Emit;

namespace Chandra_medical_store
{
    public partial class forgot_password : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = "";
            string password = "";
            String str = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\91932\source\repos\Chandra_medical_store\Chandra_medical_store\App_Data\Database1.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("select User_Name, Password from Admin_register_page where email=@email", con);
            cmd.Parameters.AddWithValue("email", TextBox1.Text);
            con.Open();
            using (SqlDataReader sdr = cmd.ExecuteReader())
            {

                if (sdr.Read())
                {
                    username = sdr["User_Name"].ToString();
                    password = sdr["Password"].ToString();

                }

            }
            con.Close();

            if (!string.IsNullOrEmpty(password))
            {
                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("prajapatishashiprakash@gmail.com");
                msg.To.Add(TextBox1.Text);
                msg.Subject = " Recover your Password";
                msg.Body = ("Your Username is:" + username + "<br/><br/>" + "Your Password is:" + password);
                msg.IsBodyHtml = true;
                SmtpClient smt = new SmtpClient();
                smt.Host = "smtp.gmail.com";
                System.Net.NetworkCredential ntwd = new NetworkCredential();
                ntwd.UserName = "prajapatishashiprakash@gmail.com"; //Your Email ID  
                ntwd.Password = "tdhntyvbnebbdjzp"; // Your Password  
                smt.UseDefaultCredentials =true;
                smt.Credentials = ntwd;
                smt.Port = 587;
                smt.EnableSsl =true;
                smt.Send(msg);
                Label1.Text= "Username and Password Sent Successfully";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
    }

/*MailMessage Msg = new MailMessage();
Msg.From = new MailAddress("lathag3093@gmail.com");
Msg.To.Add(txtToMail.Text);
//Msg.Subject = txtSubject.Text;
Msg.Body = txtSubject.Text;
Msg.IsBodyHtml = true;
SmtpClient smtp = new SmtpClient();
smtp.Host = "smtp.gamil.com";
System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential();
NetworkCred.UserName = "lathag3093gmail.com";
NetworkCred.Password = "";
smtp.UseDefaultCredentials = true;
smtp.Credentials = NetworkCred;
smtp.Port = 587;
smtp.EnableSsl = true;
smtp.Send(Msg);
lblMsg.Text = "Email has been successfully sent..!!";*/

using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chandra_medical_store
{
    public partial class Admin_register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String str = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\91932\source\repos\Chandra_medical_store\Chandra_medical_store\App_Data\Database1.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(str);
            String query = "insert into Admin_register_page values(@Name,@Last_Name,@Mobile_Number,@Email_Id,@User_Name,@Password)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("Name", TextBox1.Text);
            cmd.Parameters.AddWithValue("Last_Name", TextBox2.Text);
            cmd.Parameters.AddWithValue("Mobile_Number", TextBox3.Text);
            cmd.Parameters.AddWithValue("Email_Id", TextBox4.Text);
            cmd.Parameters.AddWithValue("User_Name", TextBox5.Text);
            cmd.Parameters.AddWithValue("Password", TextBox6.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "alert('Inserted Succeessfully')", true);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = " ";
            TextBox2.Text = " ";
            TextBox3.Text = " ";
            TextBox4.Text = " ";
            TextBox5.Text = " ";
            TextBox6.Text = " ";
            TextBox7.Text = " ";
        }
    }
}

using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chandra_medical_store
{
    public partial class homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\91932\source\repos\Chandra_medical_store\Chandra_medical_store\App_Data\Database1.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(str);
            String query = "select Name,Last-name,Phone_number,City,Streat from customers_details where Name=@Name,Last_name=@Last_name,Phone_number=@Phone_number,City=City@,Streat_name=@Streat_name";
            SqlCommand cmd = new SqlCommand(query,con);
            cmd.Parameters.AddWithValue("Name",TextBox1.Text);
            cmd.Parameters.AddWithValue("Last_name", TextBox2.Text);
            cmd.Parameters.AddWithValue("Phone_number", TextBox5.Text);
            cmd.Parameters.AddWithValue("City", TextBox6.Text);
            SqlConnection con1 = new SqlConnection(str);
            String query1 = "select name,rs from medicine_description where name=@name,rs=@rs";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            cmd1.Parameters.AddWithValue("name",TextBox3.Text);
            cmd1.Parameters.AddWithValue("rs", TextBox4.Text);
            con.Open();
            SqlDataReader sdr= cmd.ExecuteReader();   
            SqlDataReader sdr1 = cmd1.ExecuteReader();
            con.Close();
        }
    }
}
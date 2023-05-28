using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chandra_medical_store
{
    public partial class Customer_Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String str = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\91932\source\repos\Chandra_medical_store\Chandra_medical_store\App_Data\Database1.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(str);
            String query = "insert into customers_details values(@Name, @Last_name,@Phone_number,@Pincode,@State,@City,@Houseno,@Streat_name)";
            SqlCommand  cmd = new SqlCommand(query,con);
            cmd.Parameters.AddWithValue("Name",TextBox1.Text);
            cmd.Parameters.AddWithValue("Last_name", TextBox2.Text);
            cmd.Parameters.AddWithValue("Phone_number", TextBox7.Text);
            cmd.Parameters.AddWithValue("Pincode", TextBox3.Text);
            cmd.Parameters.AddWithValue("State", TextBox4.Text);
            cmd.Parameters.AddWithValue("City", TextBox5.Text);
            cmd.Parameters.AddWithValue("Houseno", TextBox8.Text);
            cmd.Parameters.AddWithValue("Streat_name", TextBox6.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "inserted successfully";
        }
    }
}
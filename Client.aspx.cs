using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chandra_medical_store
{
    public partial class Client : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\91932\source\repos\Chandra_medical_store\Chandra_medical_store\App_Data\Database1.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(str);
            string query = "insert into Customer_information Values(@Customer_name,@Customer_Surename,@Address,@City,@Mobile)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("Customer_name", TextBox1.Text);
            cmd.Parameters.AddWithValue("Customer_Surename", TextBox2.Text);
            cmd.Parameters.AddWithValue("Address", TextBox3.Text);
            cmd.Parameters.AddWithValue("City", TextBox4.Text);
            cmd.Parameters.AddWithValue("Mobile", TextBox5.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "alert('SuccessFully')", true);
        }
    }
}
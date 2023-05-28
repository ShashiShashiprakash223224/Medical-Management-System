using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chandra_medical_store
{
    public partial class Diiseas1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\91932\source\repos\Chandra_medical_store\Chandra_medical_store\App_Data\Database1.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(str);
            string query = "insert into Disease Values(@diseasename,@medicinename,@brand,@medicinetype,@description)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("diseasename", TextBox1.Text);
            cmd.Parameters.AddWithValue("medicinename", TextBox2.Text);
            cmd.Parameters.AddWithValue("brand", TextBox3.Text);
            cmd.Parameters.AddWithValue("medicinetype", TextBox4.Text);
            cmd.Parameters.AddWithValue("description", TextBox5.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "alert('Inserted SuccessFully')", true);
        }
    }
}
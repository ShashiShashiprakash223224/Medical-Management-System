using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chandra_medical_store
{
    public partial class Insert1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            string str = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\91932\source\repos\Chandra_medical_store\Chandra_medical_store\App_Data\Database1.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(str);
            string query1 = "select ID from insert_table where id='" + int.Parse(TextBox1.Text) + "'";
            con.Open();
            SqlCommand cmd1 = new SqlCommand(query1, con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd1);
            DataTable dt = new DataTable();

            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Label2.Text = "<span style='color:red'>Id  already exists </span>";

            }
            else
            {

                string query = "insert into insert_table Values(@Id,@MedicineName,@CompanyName,@Price,@ExpiryDate,@Type,@Quantity)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("Id", TextBox1.Text);
                cmd.Parameters.AddWithValue("MedicineName", TextBox2.Text);
                cmd.Parameters.AddWithValue("CompanyName", TextBox3.Text);
                cmd.Parameters.AddWithValue("Price", TextBox4.Text);
                cmd.Parameters.AddWithValue("ExpiryDate", TextBox5.Text);
                cmd.Parameters.AddWithValue("Type", DropDownList1.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("Quantity", TextBox6.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "alert('inserted successfully')", true); 

            }

        }
    }
}
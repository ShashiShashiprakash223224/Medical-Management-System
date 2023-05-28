using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chandra_medical_store
{
    public partial class Update1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button4_Click(object sender, EventArgs e)
        {

            String str = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\91932\source\repos\Chandra_medical_store\Chandra_medical_store\App_Data\Database1.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("select * from insert_table where ID='" + TextBox1.Text + "'", con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                TextBox2.Text = reader.GetValue(1).ToString();
                TextBox3.Text = reader.GetValue(2).ToString();
                TextBox5.Text = reader.GetValue(3).ToString();
                TextBox4.Text = reader.GetValue(4).ToString();
                TextBox6.Text = reader.GetValue(5).ToString();
                TextBox7.Text = reader.GetValue(6).ToString();

            }
            con.Close();
          
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            String contsra = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\91932\source\repos\Chandra_medical_store\Chandra_medical_store\App_Data\Database1.mdf;Integrated Security=True";
            SqlConnection conn = new SqlConnection(contsra);
            SqlCommand cmd = new SqlCommand("Delete from insert_table where MedicineName='" + TextBox2.Text + "'", conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            
            conn.Close();
            ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "alert('Your Record has been delete')", true);
            
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            String contsra = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\91932\source\repos\Chandra_medical_store\Chandra_medical_store\App_Data\Database1.mdf;Integrated Security=True";
            SqlConnection conn = new SqlConnection(contsra);
            SqlCommand cmd = new SqlCommand("Update  insert_table set MedicineName='" + TextBox2.Text + "',CompanyName='" + TextBox3.Text + "',Price='" + TextBox5.Text + "',ExpiryDate='" + TextBox4.Text + "',Type='" + TextBox6.Text + "',Quantity='" + TextBox7.Text + "' where Id='" + TextBox1.Text + "'", conn);
            conn.Open();
            cmd.ExecuteNonQuery();
           
            conn.Close();
            ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "alert('Your Record has been upadate')", true);
           
        }

       
    }
}
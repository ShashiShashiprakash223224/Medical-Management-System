using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace Chandra_medical_store
{
    public partial class Company : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\91932\source\repos\Chandra_medical_store\Chandra_medical_store\App_Data\Database1.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(str);
            string query = "insert into Information_Of_Medicine Values(@Medicine_Name,@Company_Name,@Company_Address,@Supplier_mobile_Number)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("Medicine_Name", TextBox1.Text);
            cmd.Parameters.AddWithValue("Company_Name", TextBox2.Text);
            cmd.Parameters.AddWithValue("Company_Address", TextBox3.Text);
            cmd.Parameters.AddWithValue("Supplier_mobile_Number", TextBox5.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "alert(Inserted Succeessfully)", true);
        }
    }
}
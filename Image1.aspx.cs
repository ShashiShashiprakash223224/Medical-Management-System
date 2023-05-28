using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chandra_medical_store
{
    public partial class Image1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            String str = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\91932\source\repos\Chandra_medical_store\Chandra_medical_store\App_Data\Database1.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(str);
            String query = "insert into medicine_description values(@name,@rs,@description,@quantity,@img)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("name", TextBox1.Text);
            cmd.Parameters.AddWithValue("rs", TextBox2.Text);
            cmd.Parameters.AddWithValue("description", TextBox3.Text);
            cmd.Parameters.AddWithValue("quantity", TextBox4.Text);
            cmd.Parameters.AddWithValue("img", FileUpload2.FileName);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

        }
    }
}
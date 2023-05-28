using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chandra_medical_store
{
    public partial class image : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string str = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\91932\source\repos\Chandra_medical_store\Chandra_medical_store\App_Data\Database1.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(str);
            FileUpload1.SaveAs(HttpContext.Current.Request.PhysicalApplicationPath + "Image/" + FileUpload1.FileName);
            String query = "insert into Image Values(@Image,@Name,@Price)";
            SqlCommand cmd = new SqlCommand(query,con);
            cmd.Parameters.AddWithValue("Image",FileUpload1.FileName);
            cmd.Parameters.AddWithValue("Name",TextBox1.Text); 
            cmd.Parameters.AddWithValue("Price",TextBox2.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();        

        }
    }
}
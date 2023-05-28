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
    public partial class CompanyView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String str = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\91932\source\repos\Chandra_medical_store\Chandra_medical_store\App_Data\Database1.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(str);
            string query = "select * from information_Of_Medicine where Medicine_Name like'%'+@Medicine_Name+'%'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("Medicine_Name", TextBox1.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet dt = new DataSet();
            sda.Fill(dt);
            GridView1.DataSourceID = null;
            GridView1.DataSource = dt;
            GridView1.DataBind();
            if(TextBox1.Text=="") {
                Label1.Text = "Enter values ";
            }
        }
    }
}
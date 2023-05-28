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
    public partial class Medicine_brief_view : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String str = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\91932\source\repos\Chandra_medical_store\Chandra_medical_store\App_Data\Database1.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("select * from medicine_description", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            DataList1.DataSourceID=null;
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

       
    }
}
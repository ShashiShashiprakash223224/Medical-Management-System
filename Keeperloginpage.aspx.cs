using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chandra_medical_store
{
    public partial class Keeperloginpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            

            String str = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\91932\source\repos\Chandra_medical_store\Chandra_medical_store\App_Data\Database1.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(str);
            String query = "Select * from Shopkeeper_register_page  where User_Name=@User_Name and Password=@Password";
            SqlCommand cmd = new SqlCommand(query,con);
            cmd.Parameters.AddWithValue("User_Name", TextBox1.Text);
            cmd.Parameters.AddWithValue("Password", TextBox2.Text); 
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())  
            {
               
                // Response.Redirect("Disease.aspx");
            }
            else
            {
                if (TextBox1.Text == "")
                {
                    Label2.Text = "<span style='color:pink'>Please Enter UseName</span> ";
                    Label2.Visible = true;
                }
                else if(TextBox2.Text == "")
                {
                    Label3.Text = "<span style='color:pink'>Please Enter Password<span>";
                    Label3.Visible= true;

                }
                else{ 
                    Label4.Text = "<span style='color:pink'>User name and password does not exits</span>";
                } 


                //ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "alert('User name Password does not match')", true);
            }
            con.Close();
        }
    }
}
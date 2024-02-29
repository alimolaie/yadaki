using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; 
using System.Configuration; 

namespace portal_asp
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginBtn_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
           
                string uid = usernametxt.Text;
                string pass = passwordTxt.Text;
                con.Open();
                string qry = "SELECT * FROM users WHERE user_name='" + uid + "' AND password='" + pass + "'";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    Response.Redirect("About.aspx");
                }
                else
                {
                    Response.Redirect("Contact.aspx");
                }
                con.Close();
            
           
        }
    }
}
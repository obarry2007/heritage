using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
namespace CalculPartsHeritage
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnlogin_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BD_calcPartHeriEntities"].ToString());
            con.Open();
            String query = "select count(*) from login_table where username='" + Textusername.Text+"' and password_='"+TextPassword+"'";
            SqlCommand cmd = new SqlCommand(query, con);
            String output = cmd.ExecuteScalar().ToString();
            
            if (output=="1")
            {
                //Response.Redirect("Views/Home/index.cshtml");
                Response.Write("Username et mot de passe correct");
            }
            else
            {
                Response.Write("Username ou mot de passe incorrect");
            }
        }
    }
}
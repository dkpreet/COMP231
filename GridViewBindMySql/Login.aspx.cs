using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GridViewBindMySql
{
    public partial class Login : System.Web.UI.Page
    {
        #region SqlConnection Connection
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void loginbtn_Click1(object sender, EventArgs e)
        {
            string userName = UserName.Text;
            string password = Password.Text;
            conn.Open();
            SqlCommand cmd = new SqlCommand(string.Format("select username from Users where userName like '{0}' and password like '{1}'",userName,password), conn);
            string loggedUser = Convert.ToString(cmd.ExecuteScalar());
            if (!string.IsNullOrEmpty(loggedUser))
            {
                Session["loggedIn"] = loggedUser;
                Response.Redirect("~/afterlogin.aspx");
            }
            else
            {
                Label1.Text = "Invalid Username or password";
            }
        }
    }
}
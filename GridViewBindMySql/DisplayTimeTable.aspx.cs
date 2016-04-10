using System;
using System.Web.UI;
using System.Web.UI.WebControls;

//Using namespaces 
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace GridViewBindMySql
{
    public partial class DisplayTimeTable : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        public string displayTimeTable = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                //displayTimeTable = "hello world from variable";


                if (Session["section_Id"] != null) {

                    DataSet ds = new DataSet();
                    string section_Id = Session["section_Id"].ToString();
                    section_Id = section_Id.Substring(0, section_Id.Length - 1);
                       

                    conn.Open();
                    SqlCommand cmd = new SqlCommand("SELECT a.*,b.*,c.* FROM section a, course b, timeslot c where a.section_id and a.course_id = b.course_id and a.slot_id = c.slot_id and a.section_id in ("+section_Id+")  ", conn);
                    SqlDataAdapter adp = new SqlDataAdapter(cmd);

                    adp.Fill(ds);
                    adp.Dispose();
                    cmd.Dispose();
                    conn.Close();


                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++) {


                        
                        if (ds.Tables[0].Rows[i]["day"].ToString() == "Mon") {
                            displayTimeTable += "<tr><td>" + ds.Tables[0].Rows[i]["Course_Name"] + "-" + ds.Tables[0].Rows[i]["Course_Code"] + "-" + ds.Tables[0].Rows[i]["Course_Number"] + "    " + ds.Tables[0].Rows[i]["s_time"] + "-" + ds.Tables[0].Rows[i]["e_time"] + "</td><td></td><td></td><td></td><td></td><td></td><td></td></tr>";
                        
                        }
                        else if (ds.Tables[0].Rows[i]["day"].ToString() == "Tue")
                        {
                            displayTimeTable += "<tr><td></td><td>" + ds.Tables[0].Rows[i]["Course_Name"] + "-" + ds.Tables[0].Rows[i]["Course_Code"] + "-" + ds.Tables[0].Rows[i]["Course_Number"] + "    " + ds.Tables[0].Rows[i]["s_time"] + "-" + ds.Tables[0].Rows[i]["e_time"] + "</td><td></td><td></td><td></td><td></td><td></td></tr>";
                        }
                        else if (ds.Tables[0].Rows[i]["day"].ToString() == "Wed")
                        {
                            displayTimeTable += "<tr><td></td><td></td><td>" + ds.Tables[0].Rows[i]["Course_Name"] + "-" + ds.Tables[0].Rows[i]["Course_Code"] + "-" + ds.Tables[0].Rows[i]["Course_Number"] + "    "  +ds.Tables[0].Rows[i]["s_time"] + "-" + ds.Tables[0].Rows[i]["e_time"] + "</td><td></td><td></td><td></td><td></td></tr>";
                        }
                        else if(ds.Tables[0].Rows[i]["day"].ToString() == "Thu"){
                            displayTimeTable += "<tr><td></td><td></td><td></td><td>" + ds.Tables[0].Rows[i]["Course_Name"] + "-" + ds.Tables[0].Rows[i]["Course_Code"] + "-" + ds.Tables[0].Rows[i]["Course_Number"] + "    " + ds.Tables[0].Rows[i]["s_time"] + "-" + ds.Tables[0].Rows[i]["e_time"] + "</td><td></td><td></td><td></td></tr>";
                        }
                        else if (ds.Tables[0].Rows[i]["day"].ToString() == "Fri")
                        {
                            displayTimeTable += "<tr><td></td><td></td><td></td><td></td><td>" + ds.Tables[0].Rows[i]["Course_Name"] + "-" + ds.Tables[0].Rows[i]["Course_Code"] + "-" + ds.Tables[0].Rows[i]["Course_Number"] + "    " + ds.Tables[0].Rows[i]["s_time"] + "-" + ds.Tables[0].Rows[i]["e_time"] + "</td><td></td><td></td></tr>";
                        }
                         


                        

                    }

                }
            }

        }

        protected void btnBind_Click(object sender, EventArgs e)
        {
            Response.Redirect("/");
        }
    }
}
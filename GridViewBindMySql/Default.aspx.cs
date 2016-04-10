using System;
using System.Web.UI;
using System.Web.UI.WebControls;

//Using namespaces 
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace GridViewBindMySql
{
    public partial class _Default : Page
    {
        #region SqlConnection Connection
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!Page.IsPostBack)
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("select * from course", conn);
                    SqlDataAdapter adp = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    adp.Fill(ds);
                    adp.Dispose();
                    cmd.Dispose();
                    conn.Close();
                    grvCustomers.DataSource = ds.Tables[0];
                    grvCustomers.DataBind();
                }
            }
            catch (Exception ex)
            {
                ShowMessage(ex.Message);
            }
        }
        #endregion
        #region show message
        /// <summary>
        /// This function is used for show message.
        /// </summary>
        /// <param name="msg"></param>
        void ShowMessage(string msg)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('" + msg + "');</script>");
        }
        #endregion
        #region Bind Data
        /// <summary>
        /// This display the data fetched from the table using SqlCommand,DataSet and SqlDataAdapter
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnBind_Click(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            try
            {
                foreach (GridViewRow row in grvCustomers.Rows)
                {
                    if (row.RowType == DataControlRowType.DataRow)
                    {
                        CheckBox chkRow = (row.Cells[0].FindControl("chkCtrl") as CheckBox);
                        if (chkRow.Checked)
                        {
                            string CourseCode = row.Cells[1].Text;
                            string CourseNumber = row.Cells[2].Text;

                            conn.Open();
                            SqlCommand cmd = new SqlCommand("SELECT Course_Code, Course_Number, Course_Name, Section_Number, Day, S_tIME, E_Time FROM section, course, timeslot where section.Course_ID = course.Course_ID AND section.Slot_ID = timeslot.Slot_ID AND course.Course_Code = '" + CourseCode + "' AND course.Course_Number = '" + CourseNumber + "'", conn);
                            SqlDataAdapter adp = new SqlDataAdapter(cmd);
                        
                            adp.Fill(ds);
                            adp.Dispose();
                            cmd.Dispose();

                            GridView2.DataSource = ds.Tables[0];
                            GridView2.DataBind();
                            conn.Close();
                        }
                    }
                }

            }
            catch (MySqlException ex)
            {
                ShowMessage(ex.Message);
            }
            finally
            {
                conn.Close();
               
            }
            //btnBind.Visible = false;
        }
        #endregion
    }
}
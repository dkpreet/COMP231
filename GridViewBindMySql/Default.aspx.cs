using System;
using System.Web.UI;
using System.Web.UI.WebControls;

//Using namespaces 
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;

namespace GridViewBindMySql
{
    public partial class _Default : Page
    {
        #region MySqlConnection Connection
        MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!Page.IsPostBack)
                {
                    conn.Open();
                    MySqlCommand cmd = new MySqlCommand("select * from course", conn);
                    MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
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
        /// This display the data fetched from the table using MySQLCommand,DataSet and MySqlDataAdapter
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
                            MySqlCommand cmd = new MySqlCommand("SELECT Course_Code, Course_Number, Course_Name, Section_Number, Day, S_tIME, E_Time FROM section, course, timeslot where section.Course_ID = course.Course_ID AND section.Slot_ID = timeslot.Slot_ID AND course.Course_Code = '" + CourseCode + "' AND course.Course_Number = '" + CourseNumber + "'", conn);
                            MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
                        
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
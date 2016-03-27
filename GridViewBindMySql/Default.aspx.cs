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
            try
            {
                string data = "";
                foreach (GridViewRow row in grvCustomers.Rows)
                {
                    if (row.RowType == DataControlRowType.DataRow)
                    {
                        CheckBox chkRow = (row.Cells[0].FindControl("chkCtrl") as CheckBox);
                        if (chkRow.Checked)
                        {
                            string Course_ID = row.Cells[1].Text;
                            string Course_Code = row.Cells[2].Text;
                            string Course_Name = row.Cells[3].Text;
                            string Section_ID = row.Cells[4].Text;
                            string Max_Seat = row.Cells[5].Text;

                            data = data + Course_ID + ",   " + Course_Code + ",   " + Course_Name + ",   " + Section_ID + ",   " + Max_Seat + "<br>";
                        }
                    }
                }
                lblmsg.Text = data;

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
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class Admin_Update : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(clsVariables.ConStr);
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    private void UpdateStatus(String fkRegNo, String chkStatus)
    {
        con.Open();
        SqlCommand com = new SqlCommand("update tblProfiles set Status='"+chkStatus+"' where fkRegNo='"+fkRegNo+"'",con);
        com.CommandType = CommandType.Text;
        com.ExecuteNonQuery();
        con.Close();
        lblStatus.Text = "Status Has Been Changed Successfully";
    } 

    protected void Button1_Click1(object sender, EventArgs e)
    {
        foreach (GridViewRow row in GridView1.Rows)
        {
            CheckBox status = (row.Cells[3].FindControl("chkStatus") as CheckBox);
            String fkRegNo = (row.Cells[1].Text);
            if (status.Checked)
            {
                UpdateStatus(fkRegNo, "true");
            }
            else
            {
                UpdateStatus(fkRegNo, "false");

            }



        }
    }
}
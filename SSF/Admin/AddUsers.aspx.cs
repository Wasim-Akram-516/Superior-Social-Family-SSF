using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_AddUsers : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(clsVariables.ConStr);
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void txtRegNo_TextChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(clsVariables.ConStr);
        con.Open();
        SqlCommand com = new SqlCommand("select count(*) from tblUsers where RegNo='" + txtRegNo.Text + "'", con);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        con.Close();
        if (temp >0)
        {
            Response.Write("<script>alert('Requested user already exists!');</script>");
            Clear();
        }
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        Clear();
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        String UserType = String.Empty;
        if (rdoStudent.Checked)
        {
            UserType = "Student";
        }
        else
        {
            UserType = "Teacher";
        }
        string Gender = string.Empty;
        if (rdoMale.Checked)
        {
            Gender = "Male";
        }
        else
        {
            Gender = "Female";
        }
        con.Open();
        SqlCommand com = con.CreateCommand();
        com.CommandType = CommandType.Text;
        com.CommandText = "insert into tblUsers (RegNo,Gender,UserType,FirstName,LastName,Email,Department,Class) values('" + txtRegNo.Text + "','"+Gender+"','"+UserType+"','" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtEmail.Text + "','" + dropDepartment.SelectedItem + "','" + dropClass.SelectedItem + "') ";
        int st= com.ExecuteNonQuery();
        
        if (st > 0)
        {
            Response.Write("<script>alert('Successfully added!');</script>");
        }
           con.Close();
           Clear();
    }
    private void Clear()
    {
        txtRegNo.Text= txtFirstName.Text = txtLastName.Text = txtEmail.Text ="";
    }
 
}
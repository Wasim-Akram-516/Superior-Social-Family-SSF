using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Contact : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(clsVariables.ConStr);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        Clear();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand com = con.CreateCommand();
        com.CommandType = CommandType.Text;
        com.CommandText = "insert into tblContact(Name,Email,Message,Dated) values('"+txtName.Text+"','"+txtEmail.Text+"','"+txtMessage.Text+"','"+DateTime.Now+"') ";
        int st= com.ExecuteNonQuery();
        con.Close();
        if (st>0)
        {
            Response.Write("<script>alert('Your Message has been sent Successfully!');</script>");
            Clear();
        }
    }

    private void Clear()
    {
        txtName.Text = txtEmail.Text = txtMessage.Text= "";
    }
}
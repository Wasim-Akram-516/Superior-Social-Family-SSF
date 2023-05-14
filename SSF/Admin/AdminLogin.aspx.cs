using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_AdminLogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(clsVariables.ConStr);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Cookies["Username"] != null && Request.Cookies["Password"] != null)
            {
                txtUsername.Text = Request.Cookies["Username"].Value;
                txtPassword.Text = Request.Cookies["Password"].Value;
            }
        }
    }
    protected void txtUsername_TextChanged(object sender, EventArgs e)
    {
        if (txtUsername.Text!="ADMIN")
        {
            Response.Write("<script>alert('Username Incorrect!');</script>");
        }

    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        Clear();
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (txtUsername.Text == "" && txtPassword.Text == "")
        {
            Response.Write("<script>alert('Please, Enter Username and Password!');</script>");
        }
        else if (txtUsername.Text == "")
        {
            Response.Write("<script>alert('Please, Enter Username!');</script>");
        }
        else if (txtPassword.Text == "")
        {
            Response.Write("<script>alert('Please, Enter Password!');</script>");
        }
        else
        {
            if (chkAdmin.Checked)
            {
                Response.Cookies["Username"].Value = txtUsername.Text;
                Response.Cookies["Password"].Value = txtPassword.Text;
                Response.Cookies["Username"].Expires = DateTime.Now.AddDays(1);
                Response.Cookies["Password"].Expires = DateTime.Now.AddDays(1);
            }
            else
            {
                Response.Cookies["Username"].Expires = DateTime.Now.AddMinutes(-1);
                Response.Cookies["Password"].Expires = DateTime.Now.AddMinutes(-1);
            }
            con.Open();
            SqlCommand com2 = new SqlCommand("select Password from tblProfiles where Username='Admin'", con);
            string Password = com2.ExecuteScalar().ToString();
            if (Password == txtPassword.Text)
            {
                clsUsers obj = UserDB.SelectUserbyUserID(txtUsername.Text);
                Session["User"] = obj;
                Session["Name"] = txtUsername.Text;
                Response.Redirect("~/Admin/Admin.aspx");
                Session.RemoveAll();
            }
            else
            {
                Response.Write("<script>alert('Password is incorrect')</script>");
            }
        }
    }
    private void Clear()
    {
         txtUsername.Text = txtPassword.Text = "";
    }

    
}
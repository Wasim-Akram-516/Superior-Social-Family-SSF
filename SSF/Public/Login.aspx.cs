using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
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

        con.Open();
        SqlCommand com = new SqlCommand("select count(*) from tblProfiles where Username='" + txtUsername.Text + "'", con);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        con.Close();
        if (temp == 0)
        {
            Response.Write("<script>alert('Please, Enter a valid Username');</script>");
        }
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        Clear();
    }

    protected void Login_Click(object sender, EventArgs e)
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
            con.Open();
            SqlCommand com1 = new SqlCommand("select count(*) from tblProfiles where Username='" + txtUsername.Text + "'", con);
            int temp1 = Convert.ToInt32(com1.ExecuteScalar().ToString());
            con.Close();
            if (temp1 == 1)
            {
                con.Open();
                SqlCommand com2 = new SqlCommand("select Password from tblProfiles where Username='" + txtUsername.Text + "'", con);
                string Password = com2.ExecuteScalar().ToString();
                con.Close();
                if (Password == txtPassword.Text)
                {
                    con.Open();
                    SqlCommand com3 = new SqlCommand("select Status from tblProfiles where Username='" + txtUsername.Text + "'", con);
                    string Status = com3.ExecuteScalar().ToString();
                    con.Close();
                    if (Status == "True")
                    {
                        if (chkRememberMe.Checked)
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
                        clsUsers obj = UserDB.SelectUserbyUserID(txtUsername.Text);
                        Session["User"] = obj;
                        Session["Name"] = txtUsername.Text;
                        Response.Redirect("~/Protected/SSF.aspx");
                        Session.RemoveAll();
                    }
                    else
                    {

                        Response.Write("<script>alert('Sorry, You are not an active User!')</script>");
                    }

                }
                else
                {
                    Response.Write("<script>alert('Password is incorrect')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Username is incorrect')</script>");
            }

        }



    }
    private void Clear()
    {
        txtUsername.Text = txtPassword.Text = "";
    }
}
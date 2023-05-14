using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;

public partial class SignUp : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(clsVariables.ConStr);
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void txtRegNo_TextChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand com = new SqlCommand("select count(*) from tblUsers where RegNo='"+txtRegNo.Text+"'", con);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            con.Close();
        if (temp==0)
	{
        Response.Write("<script>alert('Please, Enter a valid Registration No.');</script>");
        Clear();
	}
       
       
    }

    protected void txtUsername_TextChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand com = new SqlCommand("select count(*) from tblProfiles where Username='" + txtUsername.Text + "'", con);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        con.Close();
        if (temp==1)
        {
            Response.Write("<script>alert('Username Already Taken!');</script>");
            Clear();
        }
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        Clear();
    }

  
    protected void btnSignUp_Click1(object sender, EventArgs e)
    {
        
        if (txtUsername.Text==""&&txtPassword.Text=="")
        {
            Response.Write("<script>alert('Please, Enter Username and Password!');</script>");
        }
        else if (txtUsername.Text=="")
        {
            Response.Write("<script>alert('Please, Enter Username!');</script>");
        }
        else if (txtPassword.Text == "" && txtRePassword.Text == "")
        {
            Response.Write("<script>alert('Please, Enter Password and Confirm Password!');</script>");
        }
        else if (txtPassword.Text=="")
        {
            Response.Write("<script>alert('Please, Enter Password!');</script>");
        }
        else if (txtRePassword.Text == "")
        {
            Response.Write("<script>alert('Please, Confirm Password!');</script>");
        }
        else
        { 
            clsProfiles obj = new clsProfiles();
            obj.fkRegNo = txtRegNo.Text;
            obj.Username = txtUsername.Text;
            obj.Password = txtPassword.Text;
            obj.RePassword = txtRePassword.Text;
            int ProfileID = 0;
            if (FileUploadDP.HasFile)
            {
                obj.DP = FileUploadDP.PostedFile.FileName;
                clsProfilesDB.InsertDP(obj, out ProfileID);
                onAddDP(ProfileID, FileUploadDP.PostedFile);
                Response.Write("<script>alert('Successfully Sign Up');</script>");
            }
            else
            {
                obj.DP= "";
                clsProfilesDB.InsertDP(obj, out ProfileID);
                Response.Write("<script>alert('Unable To SignUp');</script>");
            }
        Clear(); 
        }
    }
    protected void onAddDP(int id, HttpPostedFile name)
    {
        string sSavePath;
        sSavePath = "../Profile Pics/" + id + "/";
        if (name != null)
        {
            HttpPostedFile myFile = name;
            int nFileLen = myFile.ContentLength;
            if (nFileLen == 0)
            {
                //lblStatus.Text = "There wasn't any file uploaded.";
            }
            if (Path.GetExtension(myFile.FileName).ToLower() != ".jpg"
                && Path.GetExtension(myFile.FileName).ToLower() != ".gif"
                && Path.GetExtension(myFile.FileName).ToLower() != ".png"
                && Path.GetDirectoryName(myFile.FileName).ToString() != ".bmp"
                 && Path.GetDirectoryName(myFile.FileName).ToString() != ".jpeg")
            {
                //lblCompleteStatus.Text = "The file must have an extension of JPG or GIF";
            }
            else
            {
                byte[] myData = new Byte[nFileLen];
                myFile.InputStream.Read(myData, 0, nFileLen);
                string directoryPath = Server.MapPath(sSavePath);
                string sFilename = Path.GetFileName(myFile.FileName);
                string filePathAndName = directoryPath + sFilename;
                if (!Directory.Exists(directoryPath))
                {
                    Directory.CreateDirectory(directoryPath);
                }
                FileStream newFile = new FileStream(filePathAndName, FileMode.Create);
                newFile.Write(myData, 0, myData.Length);
                newFile.Close();
            }
        }
    }
    private void Clear()
    {
        txtRegNo.Text = txtUsername.Text = txtPassword.Text = txtRePassword.Text = "";
    }
}

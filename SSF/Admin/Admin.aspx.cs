using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class Protected_Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)
            Response.Redirect("~/Admin/Admin.aspx");
        if (Session["Name"] == null)
        {
            Response.Redirect("~/Admin/Admin.aspx");
        }
    }
    protected void btnPostNotification_Click(object sender, EventArgs e)
    {
        clsUsers obj1 = (clsUsers)Session["User"];
        clsPosts obj2 = new clsPosts();
        obj2.fkRegNo = obj1.RegNo;
        obj2.FirstName = obj1.FirstName;
        obj2.LastName = obj1.LastName;
        obj2.PostText = txtNotification.Text;
        obj2.Dated = DateTime.Now;
        obj2.Privacy = "Public";
        int PostID = 0;
        if (FileUploadPost.HasFile)
        {
            obj2.PostUrl = FileUploadPost.PostedFile.FileName;
            clsPostsDB.InsertPosts(obj2, out PostID);
            onAddImage(PostID, FileUploadPost.PostedFile);
        }
        else
        {
            obj2.PostUrl = "";
            obj2.Privacy = "Public";
            clsPostsDB.InsertPosts(obj2, out PostID);
        }
        Clear();
    }
    protected void onAddImage(int id, HttpPostedFile name)
    {
        string sSavePath;
        sSavePath = "../posts/" + id + "/";
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
        txtNotification.Text = "";
    }
}
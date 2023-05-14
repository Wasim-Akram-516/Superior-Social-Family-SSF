using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for clsPostsDB
/// </summary>
public class clsPostsDB
{
    public clsPostsDB()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public static bool InsertPosts(clsPosts obj, out int PostID)
    {
        SqlConnection con = new SqlConnection(clsVariables.ConStr);
        SqlCommand com = new SqlCommand("usp_AddPost", con);
        com.Parameters.Add("@RegNo", SqlDbType.VarChar, 50).Value = obj.fkRegNo;
        com.Parameters.Add("@FName", SqlDbType.VarChar, 50).Value = obj.FirstName;
        com.Parameters.Add("@LName", SqlDbType.VarChar, 50).Value = obj.LastName;
        com.Parameters.Add("@Txt", SqlDbType.Text).Value = obj.PostText;
        com.Parameters.Add("@url", SqlDbType.VarChar, 50).Value = obj.PostUrl;
        com.Parameters.Add("@Privacy", SqlDbType.VarChar, 50).Value = obj.Privacy;
        com.Parameters.Add("@Dated", SqlDbType.DateTime).Value = obj.Dated;
        com.Parameters.Add("@PostID", SqlDbType.Int).Direction = ParameterDirection.Output;
        com.CommandType = CommandType.StoredProcedure;
        try
        {
            con.Open();
            int st = com.ExecuteNonQuery();
            PostID = (int)com.Parameters["@PostID"].Value;
            con.Close();
            if (st > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        catch (Exception x)
        {

            throw new Exception("Error Occured: " + x.Message);
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for clsFriendsDB
/// </summary>
public class clsFriendsDB
{
	public clsFriendsDB()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public static bool InsertFriends(clsFriends obj)
    {
        SqlConnection con = new SqlConnection(clsVariables.ConStr);
        SqlCommand com = new SqlCommand("insert into tblFriends(fkProfileID,Dated,fkFriendID) values(@fkProfileID,@Dated,@fkFriendID)", con);
        com.Parameters.Add("@fkProfileID", SqlDbType.Int).Value = obj.fkProfileID;
        com.Parameters.Add("@Dated", SqlDbType.DateTime).Value = obj.Dated;
        com.Parameters.Add("@fkFrindID", SqlDbType.Int).Value = obj.fkFriendID;
        com.CommandType = CommandType.Text;
        try
        {
            con.Open();
            int st = com.ExecuteNonQuery();
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
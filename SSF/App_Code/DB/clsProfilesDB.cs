using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for clsProfilesDB
/// </summary>
public class clsProfilesDB
{
	public clsProfilesDB()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public static bool InsertDP(clsProfiles obj, out int ProfileID)
    {
        SqlConnection con = new SqlConnection(clsVariables.ConStr);
        SqlCommand com = new SqlCommand("AddProfiles", con);
        com.Parameters.Add("@fkRegNo", SqlDbType.VarChar, 50).Value = obj.fkRegNo;
        com.Parameters.Add("@Username", SqlDbType.VarChar, 50).Value = obj.Username;
        com.Parameters.Add("@Password", SqlDbType.VarChar, 50).Value = obj.Password;
        com.Parameters.Add("@RePassword", SqlDbType.VarChar, 50).Value = obj.RePassword;
        com.Parameters.Add("@DP", SqlDbType.VarChar, 50).Value = obj.DP;
        com.Parameters.Add("@ProfileID", SqlDbType.Int).Direction = ParameterDirection.Output;
        com.CommandType = CommandType.StoredProcedure;
        try
        {
            con.Open();
            int st = com.ExecuteNonQuery();
            ProfileID = (int)com.Parameters["@ProfileID"].Value;
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
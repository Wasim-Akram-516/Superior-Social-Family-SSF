using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for clsUsers
/// </summary>
public class   clsUsers
{
	public clsUsers()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public string RegNo { get; set; }
    public string Usertype { get; set; }
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public string Email { get; set; }
    public string Department { get; set; }
    public string Class { get; set; }
}

public class UserDB
{
    public static clsUsers SelectUserbyUserID(string UserName)
    {
        clsUsers obj1 = new clsUsers();
        SqlConnection con = new SqlConnection(clsVariables.ConStr);
        SqlCommand com = new SqlCommand("Select * from tblUsers Inner Join tblProfiles on tblUsers.RegNo = tblProfiles.fkRegNo where UserName = @UserName", con);
        com.Parameters.Add("@UserName", SqlDbType.VarChar, 50).Value = UserName;
        com.CommandType = CommandType.Text;
        try
        {
            con.Open();
            SqlDataReader reader = com.ExecuteReader(CommandBehavior.CloseConnection);
            while (reader.Read())
            {
                obj1.RegNo = reader["RegNo"].ToString();
                obj1.Usertype = reader["UserType"].ToString();
                obj1.FirstName = reader["FirstName"].ToString();
                obj1.LastName = reader["LastName"].ToString();
                obj1.Email = reader["Email"].ToString();
                obj1.Department = reader["Department"].ToString();
                obj1.Class = reader["Class"].ToString();
            }
            reader.Close();
        }
        catch (Exception x)
        {
            throw new Exception("Error Occured: " + x.Message);
        }
        return obj1;
    }
}
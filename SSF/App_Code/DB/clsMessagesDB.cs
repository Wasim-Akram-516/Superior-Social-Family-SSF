using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for clsMessagesDB
/// </summary>
public class clsMessagesDB
{
	public clsMessagesDB()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public static bool InsertMesages(clsMessages obj)
    {
        SqlConnection con = new SqlConnection(clsVariables.ConStr);
        SqlCommand com = new SqlCommand("insert into tblMessages(fkProfileID,MsgText,fkReceiverID,Dated,Status) values(@fkProfileID,@MsgText,@fkReceiverID,@Dated,@Status)", con);
        com.Parameters.Add("@fkProfileID", SqlDbType.Int).Value = obj.fkProfileID;
        com.Parameters.Add("@MsgText", SqlDbType.VarChar, 50).Value = obj.MsgText;
        com.Parameters.Add("@fkReceiverID", SqlDbType.Int).Value = obj.fkReceiverID;
        com.Parameters.Add("@Dated", SqlDbType.DateTime).Value = obj.Dated;
        com.Parameters.Add("@Status", SqlDbType.VarChar, 50).Value = obj.Status;
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
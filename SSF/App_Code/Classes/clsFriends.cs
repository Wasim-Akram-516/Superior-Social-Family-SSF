using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for clsFriends
/// </summary>
public class clsFriends
{
	public clsFriends()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int FriendID { get; set; }
    public int fkProfileID { get; set; }
    public DateTime Dated { get; set; }
    public int fkFriendID { get; set; }
}
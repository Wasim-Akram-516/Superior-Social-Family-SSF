using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for clsProfile
/// </summary>
public class clsProfiles
{
	public clsProfiles()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int ProfileID { get; set; }
    public string fkRegNo { get; set; }
    public string Username { get; set; }
    public string Password { get; set; }
    public string RePassword { get; set; }
    public string DP { get; set; }
    public bool Status { get; set; }
}


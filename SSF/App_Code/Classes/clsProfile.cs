using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for clsProfile
/// </summary>
public class clsProfile
{
	public clsProfile()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int ProfileID { get; set; }
    public int fkUserID { get; set; }
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public string UserType { get; set; }
    public string Username { get; set; }
    public string Password { get; set; }
}
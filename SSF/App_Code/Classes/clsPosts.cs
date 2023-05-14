using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for clsPosts
/// </summary>
public class clsPosts
{
	public clsPosts()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int PostID { get; set; }
    public string fkRegNo { get; set; }
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public string PostText { get; set; }
    public string PostUrl { get; set; }
    public string Privacy { get; set; }
    public DateTime Dated { get; set; }
}
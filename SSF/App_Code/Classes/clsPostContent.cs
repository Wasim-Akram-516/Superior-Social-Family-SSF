using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for clsPostContent
/// </summary>
public class clsPostContent
{
	public clsPostContent()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int PostContentID { get; set; }
    public int fkPostContentID { get; set; }
    public string PostContentURL { get; set; }

}
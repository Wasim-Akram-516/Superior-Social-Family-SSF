using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for clsMsgContent
/// </summary>
public class clsMsgContent
{
	public clsMsgContent()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int MsgContentID { get; set; }
    public int fkMsgID { get; set; }
    public string MsgContentURL { get; set; }
}
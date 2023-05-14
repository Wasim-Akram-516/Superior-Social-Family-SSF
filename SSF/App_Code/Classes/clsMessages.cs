using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for clsMessages
/// </summary>
public class clsMessages
{
	public clsMessages()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int MsgID { get; set; }
    public int fkProfileID { get; set; }
    public string MsgText { get; set; }
    public int fkReceiverID { get; set; }
    public DateTime Dated { get; set; }
    public string Status { get; set; }
}
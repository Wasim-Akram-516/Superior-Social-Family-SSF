using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Messages : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        clsMessages obj = new clsMessages();
        obj.fkProfileID = 3;
        obj.MsgText = "Hello World!";
        obj.fkReceiverID = 2;
        obj.Dated = DateTime.Now;
        obj.Status = "read";
        clsMessagesDB.InsertMesages(obj);
    }
}
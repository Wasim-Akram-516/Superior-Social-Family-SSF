using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Friends : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        clsFriends obj = new clsFriends();
        obj.fkProfileID = 2;
        obj.Dated = DateTime.Now;
        obj.fkFriendID = 3;
        clsFriendsDB.InsertFriends(obj);
    }
}
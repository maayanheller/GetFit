﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string tName;
        if (Session["tName"] != null)
        {
            tName = (string)Session["tName"];
            authSuggestion.Visible = false;
            logout.Visible = true;
        }

        else
        {
            tName = "Guest";
            authSuggestion.Visible = true;
            logout.Visible = false;
        }


        lblName.Text = "Hello " + tName;

        
    }

    protected void Logout(Object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect(HttpContext.Current.Request.Url.AbsolutePath);
    }
}

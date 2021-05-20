using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Fullbody : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string tName;
        if (Session["tName"] != null)
        {
            tName = (string)Session["tName"];
        }

        else
        {
            tName = "Guest";
        }

        lblName.Text = "Hi " + tName;
    }
}
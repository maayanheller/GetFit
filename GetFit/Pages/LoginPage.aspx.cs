using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string tName, query;
        string username = Request.Form["txtUsername"];
        string code = Request.Form["txtPass"];

        if(Session["tName"] != null)
        {
            Response.Redirect("Homepage.aspx");
        }

        errorMessage.Visible = false;
        if (username != null && code != null)
        {            
            query = "SELECT username FROM tblLifters WHERE username='" + username + "' AND code='" + code + "'";
            tName = DBFunctions.GetName(query);

            if (tName == "")
            {
                errorMessage.Visible = true;
            }

            else
            {
                Session["tName"] = tName;
                Response.Redirect("./HomePage.aspx");
            }
        }
    }
}
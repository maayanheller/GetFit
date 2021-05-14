using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LoginPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string name, tName, code, query;

        Session["tName"] = null;

        if(Request.Form["btnLogIn"] != null)
        {
            name = Request.Form["txtName"];
            code = Request.Form["txtPass"];

            query = "SELECT name FROM tblLifters WHERE name='" + name + "' AND code='" + code + "'";

            tName = DBFunctions.GetName(query);

            Session["tName"] = tName;

            Response.Redirect("./HomePage.aspx");
        }
    }
}
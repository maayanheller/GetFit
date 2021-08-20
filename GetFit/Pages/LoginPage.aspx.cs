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
        string UserName, query;
        string username = Request.Form["txtUsername"];
        string code = Request.Form["txtPass"];

        if (Request.Cookies["siteLogin"] != null)
        {
            Session["UserName"] = Request.Cookies["siteLogin"].Value;
            Response.Redirect("Homepage.aspx");
        }

        
        if (username != null && code != null)
        {   
            // Search in DB a User with the entered username and code
            query = "SELECT username FROM tblLifters WHERE username='" + username + "' AND code='" + code + "'";
            UserName = DBFunctions.GetName(query);

            if (UserName == "")
            {
                errorMessage.Visible = true;
            }

            else
            {
                // Set the session to the found username in the database,
                // Create a cookie and save the username into it, Then redirect to homepage

                Session["UserName"] = UserName;
                HttpCookie userCookie = new HttpCookie("siteLogin");

                userCookie.Value = Session["UserName"].ToString();
                userCookie.Expires = DateTime.Now.AddDays(7);
                Response.Cookies.Add(userCookie);

                Response.Redirect("./HomePage.aspx");
            }
        }
    }
}
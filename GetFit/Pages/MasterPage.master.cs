using System;
using System.Web;


public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string UserName;
        if (Session["UserName"] != null)
        {
            UserName = (string)Session["UserName"];
            authSuggestion.Visible = false;
            logout.Visible = true;
        }

        else
        {
            UserName = "Guest";
            authSuggestion.Visible = true;
            logout.Visible = false;
        }


        lblName.Text = "Hello " + UserName;  
    }

    protected void Logout(Object sender, EventArgs e)
    {
        // Kill the session, delete the cookie and redirect to login
        Session.Abandon();
        HttpCookie userCookie = Request.Cookies["siteLogin"];
        userCookie.Expires = DateTime.Now.AddDays(-1);
        Response.Cookies.Add(userCookie);            
        Response.Redirect("LoginPage.aspx");
    }
}

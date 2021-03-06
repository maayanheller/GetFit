using System;
using System.Web;

public partial class Pages_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(IsPostBack)
        {
            Login();
        }

        else
        {
            if (Request.Cookies["siteLogin"] != null)
            {
                Session["UserName"] = Request.Cookies["siteLogin"].Value;
                Response.Redirect("Homepage.aspx");
            }
        }
    }

    protected void Login()
    {
        string query;
        string UserName = Request.Form["txtUserName"];
        string code = Request.Form["txtPass"];

        if (UserName != null && code != null)
        {
            // Search in DB a User with the entered UserName and code
            query = "SELECT UserName FROM tblLifters WHERE UserName='" + UserName.Trim() + "' AND code='" + code + "'";

            if (!DBFunctions.CheckIfValuesExist(query))
            {
                login_error_message.Visible = true;
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
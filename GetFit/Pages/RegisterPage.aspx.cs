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
        if (IsPostBack)
        {
            RegisterUser();
        }        
    }

    protected void RegisterUser()
    {
        string username = Request.Form["txtUsername"];
        string firstName = Request.Form["txtFirstName"];
        string lastName = Request.Form["txtLastName"];
        string muscleGroup = Request.Form["muscleGroup"];
        string workoutSplit = Request.Form["workoutSplits"];
        string code = Request.Form["txtPass"];
        int bigMusclesSets = 0;
        int smallMusclesSets = 0;

        if (username != null && firstName != null && lastName != null && muscleGroup != null & workoutSplit != null && code != null)
        {
            username = username.Trim();
            firstName = firstName.Trim();
            lastName = lastName.Trim();

            string nameCheckQuery = "SELECT UserName FROM tblLifters WHERE UserName='" + username + "' AND code='" + code + "'";

            if (!DBFunctions.doesUsernameExists(nameCheckQuery))
            {
                if (Request.Form["numOfSmallSets"] != null)
                {
                    smallMusclesSets = int.Parse(Request.Form["numOfSmallSets"]);
                }

                if (Request.Form["numOfBigSets"] != null)
                {
                    bigMusclesSets = int.Parse(Request.Form["numOfBigSets"]);
                }


                string query = "INSERT INTO tblLifters ([username], [firstName], [lastName], [bigMusclesSets], [smallMusclesSets], [muscleGroup], [workoutSplit], [code]) VALUES('" + username + "', '" + firstName + "', '" + lastName + "'," + bigMusclesSets + ", " + smallMusclesSets + ", '" + muscleGroup + "', '" + workoutSplit + "', '" + code + "')";

                DBFunctions.RunNonQuery(query);

                Response.Redirect("LoginPage.aspx");
            }

            else
            {
                register_error_message.Visible = true;
            }
        }
    }
}
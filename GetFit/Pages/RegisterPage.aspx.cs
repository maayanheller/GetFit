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
        string username, firstName, lastName, muscleGroup = "", workoutSplit = "", query, code;
        int bigMusclesSets = 0;
        int smallMusclesSets = 0;

        if (Request.Form["btnRegister"] != null)
        {
            username = Request.Form["txtUsername"];
            code = Request.Form["txtPass"];
            muscleGroup = Request.Form["muscleGroup"];
            firstName = Request.Form["txtFirstName"];
            lastName = Request.Form["txtLastName"];

            if (Request.Form["workoutSplits"] != null)
            {
                workoutSplit = Request.Form["workoutSplits"];
            }

            if (Request.Form["numOfSmallSets"] != null)
            {
                smallMusclesSets = int.Parse(Request.Form["numOfSmallSets"]);
            }

            if (Request.Form["numOfBigSets"] != null)
            {
                bigMusclesSets = int.Parse(Request.Form["numOfBigSets"]);
            }


            query = "INSERT INTO tblLifters ([username], [firstName], [lastName], [bigMusclesSets], [smallMusclesSets], [muscleGroup], [workoutSplit], [code]) VALUES('" + username + "', '" + firstName + "', '" + lastName + "'," + bigMusclesSets + ", " + smallMusclesSets + ", '" + muscleGroup + "', '" + workoutSplit + "', '" + code + "')";

            DBFunctions.RunNonQuery(query);

            Response.Redirect("LoginPage.aspx");
        }
    }
}
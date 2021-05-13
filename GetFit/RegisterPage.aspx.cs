using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegisterPage : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        String name, muscleGroup = "", workoutSplit = "", query, code;
        int bigMusclesSets = 0;
        int smallMusclesSets = 0;

        if (Request.Form["btnRegister"] != null)
        {
            name = Request.Form["txtName"];
            code = Request.Form["txtPass"];            
            muscleGroup = Request.Form["muscleGroup"];

            if (Request.Form["workoutSplits"] != null)
            {
                workoutSplit = Request.Form["workoutSplits"];
            }

            if(Request.Form["numOfSmallSets"] != null)
            {
                smallMusclesSets = int.Parse(Request.Form["numOfSmallSets"]);
            }

            if(Request.Form["numOfBigSets"] != null)
            {
                bigMusclesSets = int.Parse(Request.Form["numOfBigSets"]);
            }


            query = "INSERT INTO tblLifters ([name], [bigMusclesSets], [smallMusclesSets], [muscleGroup], [workoutSplit], [code]) VALUES('" + name + "', " + bigMusclesSets + ", " + smallMusclesSets + ", '" + muscleGroup + "', '" + workoutSplit + "', '" + code + "')";

            DBFunctions.RunNonQuery(query);
        }
    }
}
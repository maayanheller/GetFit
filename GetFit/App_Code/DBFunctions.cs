using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for DBFunctions
/// </summary>
public class DBFunctions
{
    public static string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Workspace\bina\GetFit\GetFit\App_Data\GetFit.mdf;Integrated Security=True";
    public static void RunNonQuery(string query)
    {
        SqlConnection conn = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand(query, conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }

    public static string GetName(string query)
    {
        string name;
        SqlConnection conn = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand(query, conn);
        conn.Open();
        object nameObj = cmd.ExecuteScalar();
        conn.Close();
        name = nameObj == null ? "" : nameObj.ToString();
        return name;
    }
}
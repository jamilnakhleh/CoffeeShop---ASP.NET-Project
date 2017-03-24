using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.OleDb;

public partial class Admin : System.Web.UI.Page
{
      OleDbConnection con;
    OleDbCommand com;
    object obj = null;

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btadmin_Click(object sender, EventArgs e)
    {
        try
        {
            string dbPath2 = HttpContext.Current.Server.MapPath("~\\App_Data\\" + "website.mdb");

            string connectionString2 = @"Data Source='" + dbPath2 + "';Provider='Microsoft.Jet.OLEDB.4.0';";
            con = new OleDbConnection(connectionString2);
            con.Open();
            com = new OleDbCommand();
            com.Connection = con;
            //com.CommandType = CommandType.Text;
            com.CommandText = "insert into CoffeeTbl values(@code,@coffeecode,@picture,@price)";
            com.Parameters.Clear();
            com.Parameters.AddWithValue("@code", T1.Text);
            com.Parameters.AddWithValue("@coffeecode", T2.Text);
            com.Parameters.AddWithValue("@picture", D1.SelectedItem.Text);
            com.Parameters.AddWithValue("@price", T4.Text);
            if (con.State == ConnectionState.Closed)
                con.Open();
            com.ExecuteNonQuery();
            con.Close();
            errorone.Visible = true;
            errorone.Text = "Your Info have been added successfully!!!";
            T1.Text = T2.Text = T4.Text = ""; // reset for another product :D ...
        }
        catch (Exception ex)
        {
            errorone.Visible = true;
            errorone.Text = "You already have the same Code Info!!!";
            T1.Text = T2.Text = T4.Text = ""; 
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void btnhome_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }
}
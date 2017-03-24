using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HomePage : System.Web.UI.Page
{
    string p = "Look";
    private int indexer;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["p"] == "P")
            btnAdmin.Visible = true;
            if (Session["true"]=="true")
            {
                ButtonLogOut.Text = ButtonLogOut.Text + " " + Session["userFullName"].ToString();
                ButtonSignIn.Visible = false;
                ButtonSignUp.Visible = false;
                ButtonLogOut.Visible = true;
                ButtonHazmanot.Visible = true;
            }
            else
            {
                ButtonSignIn.Visible = true;
                ButtonSignUp.Visible = true;
                ButtonLogOut.Visible = false;
                ButtonHazmanot.Visible = false;
            }
           
    }
    protected void LinkButtonLogOut_Click(object sender, EventArgs e)
    {
       
    }

    protected void ButtonLogOut_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.RemoveAll();
        Session.Abandon();
        Session["Look"] = p;
        ButtonSignIn.Visible = true;
        ButtonSignUp.Visible = true;
        btnAdmin.Visible = false;
        ButtonLogOut.Visible = false;
        ButtonHazmanot.Visible = false;    
    }
    protected void ButtonHomePage_Click(object sender, EventArgs e)
    {
        Server.Transfer("Admin.aspx");
    }
    protected void ButtonSignIn_Click(object sender, EventArgs e)
    {
        Server.Transfer("Default.aspx");
    }
    protected void ButtonSignUp_Click(object sender, EventArgs e)
    {
        Server.Transfer("SignUp.aspx");
    }
    protected void ButtonAbout_Click(object sender, EventArgs e)
    {
        Server.Transfer("About.aspx");
    }
    protected void ButtonContactUs_Click(object sender, EventArgs e)
    {
        
    }
    protected void ButtonHazmanot_Click(object sender, EventArgs e)
    {
        Server.Transfer("Orders.aspx");
    }
}
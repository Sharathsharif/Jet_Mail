using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jet_Mail
{
    public partial class Admin_Panel : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
                      Label1.Text = Session["Name"].ToString();
                      //string nam = Session["Name"].ToString();
                      //Label1.Text = nam;
                      string typ = Session["ty"].ToString();
                      Label2.Text = typ;
                      string Currentuser = Session["Currentuser"].ToString();
                      Label3.Text = Currentuser;
           Label4.Text=DateTime.Now.ToLongTimeString();
                       

            ////Temporory
            //Label1.Text = "Sharath.SS";
            //Label2.Text = "Admin";
            //Label3.Text = "sharath@gmail.com";
            ////Temporory ends
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
        }
    }
}
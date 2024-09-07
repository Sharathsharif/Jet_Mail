using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jet_Mail
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        Connect_Method cm = new Connect_Method();
        Disconnect_Method dm = new Disconnect_Method();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string mail = TextBox1.Text;
            string pwd = TextBox2.Text;
            if (true)
            {

            }
            string cmd = "select * from Registration where Password='" + pwd + "' and Mail='" + mail + "'and approval ='"+"Approve"+"'";
            ds = dm.disconnectmethodfn(cmd);
            if (ds.Tables[0].Rows.Count > 0)
            {
                if (ds.Tables[0].Rows[0][7].ToString()== "Uuser")
                {

                string na = ds.Tables[0].Rows[0][1].ToString();
                Session["Name"] = na;
                string type = ds.Tables[0].Rows[0][7].ToString();
                Session["ty"] = type;
                string Currentuser = ds.Tables[0].Rows[0][3].ToString();
                Session["Currentuser"] = Currentuser;

                
                Response.Redirect("~/Inbox.aspx");
                }
                if (ds.Tables[0].Rows[0][7].ToString() == "Admin")
                {

                    string na = ds.Tables[0].Rows[0][1].ToString();
                    Session["Name"] = na;
                    string type = ds.Tables[0].Rows[0][7].ToString();
                    Session["ty"] = type;
                    string Currentuser = ds.Tables[0].Rows[0][3].ToString();
                    Session["Currentuser"] = Currentuser;


                    Response.Redirect("~/Admin_AllUser.aspx");
                }

            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('not successfull')</script>");

            }
        }
    }
}
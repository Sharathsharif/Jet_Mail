using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Jet_Mail
{
    public partial class change_password : System.Web.UI.Page
    {
        Disconnect_Method dm = new Disconnect_Method();
        DataSet DS = new DataSet(); 
        protected void Page_Load(object sender, EventArgs e)
        {
            string user = Session["Currentuser"].ToString();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string user = Session["Currentuser"].ToString();

            string cmd1 = "select * from Registration where Mail='" + user + "'";
            DS=dm.disconnectmethodfn(cmd1);

            if (DS.Tables[0].Rows[0][5].ToString() == TextBox1.Text)
            {
                string update = "update Registration set Password='" + TextBox2.Text + "' where Mail='" + user + "'";
                dm.disconnectmethodfn(update);
                Response.Redirect("Inbox.aspx");
                ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('Profile Updated!!!')</script>");

            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('Old Password Incorrect!!!')</script>");

            }
        }
    }
}
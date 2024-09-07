using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jet_Mail
{
    public partial class Compose_Mail : System.Web.UI.Page

    {
        Disconnect_Method dm = new Disconnect_Method();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Currentuser ="sharath.ittech@gmail.com";

           // string Currentuser = Session["Currentuser"].ToString();
            string date = DateTime.Now.ToString("d MMMM yyyy");
            string Time= DateTime.Now.ToShortTimeString();
            string submit = "exec sentt '"+Currentuser+"','"+ TextBox1.Text+ "','" + TextBox2.Text+ "','" + TextBox3.Text+ "', '" + date + "', '" + Time + "','" + "" + "','" + "" + "','" + "" + "','" + "" + "','" + "" + "','" + "" + "' ";
            dm.disconnectmethodfn(submit);
            TextBox1.Text = TextBox2.Text = TextBox3.Text = "";
            ClientScript.RegisterStartupScript(GetType(), "", "<script>'alert(Mail Sent Successfully!!!)'</script>");

        }
    }
}
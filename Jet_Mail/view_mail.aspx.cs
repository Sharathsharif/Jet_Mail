using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Jet_Mail
{
    public partial class view_mail : System.Web.UI.Page
    {
        Disconnect_Method dm = new Disconnect_Method();
        DataSet DS = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Session["viewid"].ToString();
            string cmd = "select * from Inbox inner join Registration  on Registration.Mail=Inbox.Sent where Inbox.Sl_No='" + id + "'";
            DS=dm.disconnectmethodfn(cmd);
            if (DS.Tables[0].Rows.Count > 0)
            {
                DataList1.DataSource = DS;
                DataList1.DataBind();
            }
            }

            protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Inbox.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jet_Mail
{
    public partial class Admin_UserDetailView : System.Web.UI.Page
    {
        Disconnect_Method dm = new Disconnect_Method();
        DataSet DS = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                showgrid();
            }
        }
        public void showgrid()
        {
            string id = Request.QueryString["id"];

            //string user = "sharath@gmail.com";

            string Sent = "select * from Registration where Sl_No= '" + id + "'";
            DS = dm.disconnectmethodfn(Sent);
            if (DS.Tables[0].Rows.Count > 0)
            {
                DataList1.DataSource = DS;
                DataList1.DataBind();

                string status = DS.Tables[0].Rows[0][6].ToString();
                if (status == "Approve")
                {
                    ((Label)DataList1.Items[0].FindControl("Label8")).Visible = true;
                }
                if (status == "Pending")
                {
                    ((Label)DataList1.Items[0].FindControl("Label9")).Visible = true;


                }
                if (status == "Rejected")
                {
                     ((Label)DataList1.Items[0].FindControl("Label10")).Visible = true;


                }
            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Approve")

            {
                string id = ((Label)e.Item.FindControl("Label12")).Text;


                string cmd = "exec approve'" + id + "'";
                dm.disconnectmethodfn(cmd);
                showgrid();

            }
            if (e.CommandName == "Reject")

            {
                string id = ((Label)e.Item.FindControl("Label12")).Text;


                string cmd = "exec Reject'" + id + "'";
                dm.disconnectmethodfn(cmd);
                showgrid();

            }
            if (e.CommandName == "Pending")

            {
                string id = ((Label)e.Item.FindControl("Label12")).Text;


                string cmd = "exec Pending'" + id + "'";
                dm.disconnectmethodfn(cmd);
                showgrid();
            }

        }
    }
}
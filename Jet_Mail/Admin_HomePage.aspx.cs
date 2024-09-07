using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jet_Mail
{
    public partial class Admin_Approvedlist : System.Web.UI.Page
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
            string title = Request.QueryString["tit"];
            Label8.Text = title;
            string cmd = Request.QueryString["cmd"];
            DS = dm.disconnectmethodfn(cmd);
            if (DS.Tables[0].Rows.Count > 0)
            {
                DataList2.DataSource = DS;
                DataList2.DataBind();

                for (int i = 0; i < DataList2.Items.Count; i++)
                {
                    string status = ((Label)DataList2.Items[i].FindControl("Label7")).Text;

                    if (status == "Approve")
                    {
                        ((Label)DataList2.Items[i].FindControl("Label2")).Visible = true;
                    }
                    if (status == "Pending")
                    {
                        ((Label)DataList2.Items[i].FindControl("Label3")).Visible = true;

                    }
                    if (status == "Rejected")
                    {
                        ((Label)DataList2.Items[i].FindControl("Label4")).Visible = true;

                    }
                }
            }
            else
            {
                
            }

        }
        protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Approve")

            {
                string id = ((Label)e.Item.FindControl("Label6")).Text;


                string cmd = "exec approve'" + id + "'";
                dm.disconnectmethodfn(cmd);

            }
            if (e.CommandName == "Reject")

            {
                string id = ((Label)e.Item.FindControl("Label6")).Text;


                string cmd = "exec Reject'" + id + "'";
                dm.disconnectmethodfn(cmd);

            }
            if (e.CommandName == "Pending")

            {
                string id = ((Label)e.Item.FindControl("Label6")).Text;


                string cmd = "exec Pending'" + id + "'";
                dm.disconnectmethodfn(cmd);

            }
            showgrid();

        }
    }
}
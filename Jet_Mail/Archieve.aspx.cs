using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jet_Mail
{
    public partial class Archieve : System.Web.UI.Page
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
            string user = Session["Currentuser"].ToString();

            //string user = "sharath@gmail.com";

            string Sent = "exec Allarchieve '" + user + "'";
            DS = dm.disconnectmethodfn(Sent);
            if (DS.Tables[0].Rows.Count > 0)
            {
                DataList1.DataSource = DS;
                DataList1.DataBind();

                for (int i = 0; i < DataList1.Items.Count; i++)
                {
                    string st = ((Label)DataList1.Items[i].FindControl("Label6")).Text;
                    if (st == "")
                    {
                        ((LinkButton)DataList1.Items[i].FindControl("LinkButton3")).Visible = true;
                    }
                    if (st == user)
                    {
                        ((LinkButton)DataList1.Items[i].FindControl("LinkButton4")).Visible = true;
                    }
                }
            }

        }

        protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
        {
            string user = Session["Currentuser"].ToString();
            //string user = "sharath@gmail.com"; //Temporary

            string slno = ((Label)e.Item.FindControl("Label5")).Text;
            string cmd = "exec sentdelete '" + user + "','" + slno + "'";
            dm.disconnectmethodfn(cmd);
            showgrid();
            ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('Trashed Successfully')</script>");
        }

        protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
        {
            string user = Session["Currentuser"].ToString();
            //string user = "sharath@gmail.com"; //Temporary

            string id = ((Label)e.Item.FindControl("Label5")).Text;

            ((LinkButton)e.Item.FindControl("LinkButton3")).Visible = false;

            ((LinkButton)e.Item.FindControl("LinkButton4")).Visible = true;
            string cmd = "exec starsender '" + user + "','" + id + "'";
            dm.disconnectmethodfn(cmd);
            showgrid();
        }

        protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
        {
            string user = Session["Currentuser"].ToString();
            // string user = "sharath@gmail.com"; //Temporary

            string id = ((Label)e.Item.FindControl("Label5")).Text;

            ((LinkButton)e.Item.FindControl("LinkButton4")).Visible = false;

            ((LinkButton)e.Item.FindControl("LinkButton3")).Visible = true;
            string cmd = "exec undostarsender '" + user + "','" + id + "'";
            dm.disconnectmethodfn(cmd);
            showgrid();
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName== "undoarchieve")
            {
                string user = Session["Currentuser"].ToString();
                string id = ((Label)e.Item.FindControl("Label5")).Text;
                if (((Label)e.Item.FindControl("Label6")).Text==user)
                {
                    string cmd = "Update Inbox set AchieveBySender='' where Sl_No='"+id+"'";
                    dm.disconnectmethodfn(cmd);

                }
                if (((Label)e.Item.FindControl("Label7")).Text == user)
                {
                    string cmd = "Update Inbox set AchieveByReceiver='' where Sl_No='" + id + "'";
                    dm.disconnectmethodfn(cmd);
                }

            }
        }
    }
}
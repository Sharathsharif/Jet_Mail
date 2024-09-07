using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jet_Mail
{
    public partial class Starred_mail : System.Web.UI.Page
    {
        Disconnect_Method dm = new Disconnect_Method();
        DataSet DS = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                showgrid();
                showgrid2();
            }


        }
        public void showgrid()
        {
            string user = Session["Currentuser"].ToString();
           // string user = "sharath@gmail.com";

            DS.Clear();
            string inbox = "exec starredmailreceive '" + user + "'";
            DS = dm.disconnectmethodfn(inbox);
            if (DS.Tables[0].Rows.Count > 0)
            {
                DataList2.DataSource = DS;
                DataList2.DataBind();

               
            }

        }

        public void showgrid2()
        {
            string user = Session["Currentuser"].ToString();
           // string user = "sharath@gmail.com";

            DS.Clear();
            string inbox = "exec starredmailSent '" + user + "'";
            DS = dm.disconnectmethodfn(inbox);
            if (DS.Tables[0].Rows.Count > 0)
            {
                DataList1.DataSource = DS;
                DataList1.DataBind();


            }

        }


        protected void LinkButton2_Click(object sender, EventArgs e)

        {
            //string select= "select * from Inbox where Sl_N0='"+TextBox+"'"

            //string id = label;
            //Response.Write(id);
            //ClientScript.RegisterStartupScript(GetType(),"","<script>alert('"+id+"')</script>");

        }

        protected void DataList2_DeleteCommand(object source, DataListCommandEventArgs e)
        {
            string user = Session["Currentuser"].ToString();
            //string user = "sharath@gmail.com"; //Temporary

            string slno = ((Label)e.Item.FindControl("Label5")).Text;
            string cmd = "exec inboxdelete '" + user + "','" + slno + "'";
            dm.disconnectmethodfn(cmd);
            showgrid();
            ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('Trashed Successfully')</script>");
        }

        protected void DataList2_UpdateCommand(object source, DataListCommandEventArgs e)
        {
            string user = Session["Currentuser"].ToString();
            //string user = "sharath@gmail.com"; //Temporary
            string id = ((Label)e.Item.FindControl("Label5")).Text;

            ((LinkButton)e.Item.FindControl("LinkButton4")).Visible = false;

            ((LinkButton)e.Item.FindControl("LinkButton3")).Visible = true;
            string cmd = "exec undostarreceiver '" + user + "','" + id + "'";
            dm.disconnectmethodfn(cmd);
            showgrid();

        }


        protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
        {
            string user = Session["Currentuser"].ToString();
            //string user = "sharath@gmail.com"; //Temporary

            string slno = ((Label)e.Item.FindControl("Label5")).Text;
            string cmd = "exec inboxdelete '" + user + "','" + slno + "'";
            dm.disconnectmethodfn(cmd);
            showgrid2();
            ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('Trashed Successfully')</script>");
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
            showgrid2();

        }

    }
}
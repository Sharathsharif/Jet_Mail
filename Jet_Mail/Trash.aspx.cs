using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jet_Mail
{
    public partial class Trash : System.Web.UI.Page
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
            string Trash = "exec fetchTrash '"+ user+"' ";

           // string Trash = "exec fetchTrash 'sharath@gmail.com'";
            DS = dm.disconnectmethodfn(Trash);
            if (DS.Tables[0].Rows.Count > 0)
            {
                DataList1.DataSource = DS;
                DataList1.DataBind();
            }

        }

        protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
        {
            string user = Session["Currentuser"].ToString();
            //string user = "sharath@gmail.com"; //Temporary

            string slno = ((Label)e.Item.FindControl("Label5")).Text;
            string cmd = "exec undodelete '" + user + "','" + slno + "'";
            dm.disconnectmethodfn(cmd);
            showgrid();
            ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('Restored Successfully')</script>");
        }
    }
}
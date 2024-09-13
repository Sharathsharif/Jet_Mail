using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Jet_Mail
{
    public partial class Profile_view : System.Web.UI.Page
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

            string Sent = "select * from Registration where Mail= '" + user + "'";
            DS = dm.disconnectmethodfn(Sent);
            if (DS.Tables[0].Rows.Count > 0)
            {
                DataList1.DataSource = DS;
                DataList1.DataBind();
            }
        }

       

        protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
        {
            DataList1.EditItemIndex = e.Item.ItemIndex;
            showgrid();
        }

        protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
        {
            string user = Session["Currentuser"].ToString();
            


            string name = ((TextBox)e.Item.FindControl("TextBox1")).Text;
            string Contact = ((TextBox)e.Item.FindControl("TextBox2")).Text;
            string Address = ((TextBox)e.Item.FindControl("TextBox4")).Text;
            string oldimgpath = ((Label)e.Item.FindControl("Label7")).Text;
            string path = ((FileUpload)e.Item.FindControl("FileUpload1")).FileName;
            FileUpload file = ((FileUpload)e.Item.FindControl("FileUpload1"));
            if (file.HasFile)
            {
                File.Delete(oldimgpath);
             string Savefile = Server.MapPath("~/assets/ProfileImg/") + file.FileName;
                string cmd = "update Registration set Name='"+name+"',Contact= '"+Contact+"', Address='"+Address+"', Profile_img='"+path+"'  where Mail='"+user+"'   ";
                dm.disconnectmethodfn(cmd);
                DataList1.EditItemIndex = -1;
                showgrid();
                ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('Profile Updated!!!')</script>");
            }
            else
            {
                
                string Savefile = Server.MapPath("~/assets/ProfileImg/") + file.FileName;
                string cmd = "update Registration set Name='" + name + "',Contact= '" + Contact + "', Address='" + Address + "'  where Mail='" + user + "'   ";
                dm.disconnectmethodfn(cmd);
               
            DataList1.EditItemIndex = -1;
                showgrid();
                ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('Profile Updated!!!')</script>");

            }




        }

        protected void DataList1_CancelCommand(object source, DataListCommandEventArgs e)
        {
            DataList1.EditItemIndex =-1;
            showgrid();

        }
    }
}
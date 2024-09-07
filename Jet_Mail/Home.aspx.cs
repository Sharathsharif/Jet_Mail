using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jet_Mail
{
    public partial class Login : System.Web.UI.Page
    {
        Connect_Method cm = new Connect_Method();
        Disconnect_Method dm = new Disconnect_Method();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void Button2_Click(object sender, EventArgs e)
        {
            /*
            string name = TextBox3.Text;
            string number = TextBox4.Text;
            string mail = TextBox5.Text;
            string address = TextBox6.Text;
            string pass = TextBox7.Text;
            
            string result;
            string cmd = "insert into Registration values('"+name+ "','"+number+ "','"+mail+ "','"+address+ "','"+pass+ "')";
           result=  cm.ExecuteNonQueryfn(cmd);
            
            if (result=="True")

            {
             //  TextBox1.Text=TextBox2.Text= TextBox3.Text = TextBox4.Text = TextBox5.Text = TextBox6.Text = TextBox7.Text = TextBox8.Text = "";
            ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('inserted successfully')</script>");
            }
            else
            {
                Response.Write(result);
                //ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('Something is wrong please try again later')</script>");

            }*/

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string name = TextBox3.Text;
            string number = TextBox4.Text;
            string mail = TextBox5.Text;
            string address = TextBox6.Text;
            string pass = TextBox7.Text;
            //To locate the path
            string path= Server.MapPath("~/Assets/ProfileImg/" + FileUpload1.FileName);
            //To save the file in folder
            FileUpload1.SaveAs(path);
            string filepath = "";
            if (FileUpload1.HasFile)
            {
            //to pass the path to database
             filepath = "~/Assets/ProfileImg/" + FileUpload1.FileName;
            }
            else
            {
                 filepath = "~/Assets/ProfileImg/Default.jpg";

            }
            string result;
            string cmd = "insert into Registration values('" + name + "','" + number + "','" + mail + "','" + address + "','" + pass + "','" +"Pending" + "','" + "Uuser" + "','" + filepath + "')";
            result = cm.ExecuteNonQueryfn(cmd);

            if (result == "True")

            {
               // TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = TextBox6.Text = TextBox7.Text = TextBox8.Text = "";
                ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('inserted successfully')</script>");
            }
            else
            {
                Response.Write(result);
                //ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('Something is wrong please try again later')</script>");

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }

        
    }
}
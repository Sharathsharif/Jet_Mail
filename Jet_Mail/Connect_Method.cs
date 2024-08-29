using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Jet_Mail
{
    public class Connect_Method
    {
        SqlConnection con = new SqlConnection("server=MR_MOTO_VAMPIRE\\MS1;uid=sa;pwd=admin123; database=JetMail");
        SqlCommand cmd;
        SqlDataReader rd;// for execute reader

        public string ExecuteNonQueryfn(string a)
        {
            try
            {

            con.Close();
            cmd = new SqlCommand(a, con);
            con.Open();
            cmd.ExecuteNonQuery();
                string output = "True";
                return output;
            }
            catch (Exception er)
            {

                
                string output = er.ToString();
                return output;
            }
        }
        public string ExecuteScalarfn(string a)
        {
            string output = "";
            con.Close();
            cmd = new SqlCommand(a, con);
            con.Open();
            output = cmd.ExecuteScalar().ToString();

            return output;
        }
        public SqlDataReader ExecuteReaderfn(string a)
        {
            con.Close();
            cmd = new SqlCommand(a, con);
            con.Open();
            rd = cmd.ExecuteReader();

            return rd;
        }
    }
}
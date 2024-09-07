using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Jet_Mail
{
    public class Disconnect_Method
    {
        SqlConnection con = new SqlConnection("server=MR_MOTO_VAMPIRE\\MS1;uid=sa;pwd=admin123; database=JetMail");
       // string conn = ConfigurationManager.ConnectionStrings["db"].ToString();

        SqlDataAdapter Adp;
        DataSet DS = new DataSet();

        public DataSet disconnectmethodfn(string a)
        {
            Adp = new SqlDataAdapter(a, con);
            Adp.Fill(DS);
            return DS;
        }
    }
}
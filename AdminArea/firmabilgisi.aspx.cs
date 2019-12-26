using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Data.OleDb;

public partial class AdminArea_firmabilgi : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataReader  rea;
    protected void Page_Load(object sender, EventArgs e)
    {
        string strsql = "Select * from temelbilgi ";
        con = new OleDbConnection(DB.ConnectionString);
        cmd = new OleDbCommand();
        int i=0;
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = strsql;
        rea = cmd.ExecuteReader();
       while (rea.Read())
        {
            i = i + 1; 
           
        }

        litagent.Text = i.ToString();
    }
}

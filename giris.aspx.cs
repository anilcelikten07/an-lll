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

public partial class giris : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Login1.Focus();
    }

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        String qry = String.Format("select Count(*) from kullanicibilgi where kullaniciadi='{0}' and sifre = '{1}'", Login1.UserName, Login1.Password);
        e.Authenticated = Convert.ToInt32(DB.ExecuteScaler(qry)) > 0;  
    }
}

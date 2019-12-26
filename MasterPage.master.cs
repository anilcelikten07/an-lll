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


public partial class MasterPage2 : System.Web.UI.MasterPage
{  
    protected void Page_Load(object sender, EventArgs e)
    {
      
        litdate.Text = System.DateTime.Now.ToString("D");
        if (Page.User.Identity.Name.ToString() != "")
        {
            litbal.Text = " Umarım Firmamızdan Memnun Kalırsınız";
        }
        else {
            up12.Visible = false; 
        }

        submenu.Visible = (Page.User.Identity.Name.ToString() == "admin");
        lblCreatedBy.Text = "Sitenin Yazılımcısı: Anıl Çelikten"; 
     
    }
}

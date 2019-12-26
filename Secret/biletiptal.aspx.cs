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

public partial class Secret_biletiptall : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataReader rea;
    protected void Page_Load(object sender, EventArgs e)
    {
        txtpnr.Focus();
        if (!Page.IsPostBack)
        {
            if (Request.QueryString["q"] != null)
            {
                lblerror.Text = "Biletiniz başarıyla iptal edilmiştir.";
            }

        }
        else
        {
            lblerror.Text = "";
        }

    }       
    protected void btnshow_Click1(object sender, EventArgs e)
    {
        string strsql = "Select * from yolcubilgisi where Pnr = '" + txtpnr.Text.Trim() + "'";
            con = new OleDbConnection(DB.ConnectionString);
            cmd = new OleDbCommand();        
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = strsql;
            rea = cmd.ExecuteReader();
            if (rea.Read())
            {
                    pnl2.Visible = true;
                    pnl1.Visible = false;
                    lblerror.Text = "";
                    litpnr.Text = rea[0].ToString();
                    litname.Text = rea[1].ToString();
                    litph.Text = rea[2].ToString();
                    litto.Text = rea[3].ToString();
                    litfrom.Text = rea[4].ToString();
                    litdate.Text = rea[5].ToString();
                    littime.Text = rea[6].ToString();
                    littotalseat.Text = rea[7].ToString();
                    litseat.Text = rea[8].ToString();
                    litrent.Text = rea[9].ToString();
                    litagent.Text = rea[10].ToString();
                    litStatus.Text = rea[11].ToString();
            }
            else
            {
                lblerror.Text = "Lütfen geçerli PNR Numarası giriniz.";
                pnl1.Visible = true;
                pnl2.Visible = false;
                
            }
            con.Close();
    }
    protected void btndel_Click(object sender, EventArgs e)
    {
        if (litStatus.Text == "Cancel")
        {
            lblerror.Text = "Bu bilet zaten iptal edildi.";
            pnl1.Visible = true;
            pnl2.Visible = false;

        }
        else
        {
            DateTime tickettime = System.DateTime.Parse(littime.Text);           
            int diffofdate = System.DateTime.Today.Date.CompareTo(System.DateTime.Parse(litdate.Text.ToString()));
            if (diffofdate >= 1)
            {
                lblerror.Text = "Geri iade etmek için gereken süre dolmuştur.";
            }
           

            else if ((diffofdate == 0 && tickettime > System.DateTime.Now.AddHours(2.00)) || (diffofdate < 0))
            {
                
                
                string[] strseat = litseat.Text.Split(',');
                for (int j = 0; j < strseat.Length; j++)
                {
                    

                    string strsql = "UPDATE sondurum set " + strseat[j].ToString() + " = ''  where ((Tarih =  '" + litdate.Text
                        + "')and (Saat='" + littime.Text
                        + "')and (istasyon ='" + litto.Text + "'))";
                    DB.ExecuteNonQuery(strsql);
                    
                }
               
                string strsql1 = "Update yolcubilgisi set sondurum = 'Cancel' where pnr ='" + litpnr.Text + "' ";
                DB.ExecuteNonQuery(strsql1);
               

                OleDbConnection conbal;
                OleDbCommand cmdbal;
                OleDbDataReader reabal;
                string strsqlbal = "select * from temelbilgi where (kullaniciadi='" + User.Identity.Name.ToString() + "')";
                conbal = new OleDbConnection(DB.ConnectionString);
                cmdbal = new OleDbCommand();
                cmdbal.Connection = conbal;
                cmdbal.CommandText = strsqlbal;
                conbal.Open();
                reabal = cmdbal.ExecuteReader();
                if (reabal.Read())
                {
                    string b;
                    b = reabal[8].ToString();
                    int cbal;
                    int abal;
                    abal = int.Parse(b);
                    cbal = int.Parse(litrent.Text.ToString());
                    
                    int rbal = abal + cbal;
                    string strupdatebal = "Update kullaniciadi set Agent_current_bal = " + rbal.ToString() + "  where (kullanicadi ='" + User.Identity.Name.ToString() + "')";
                    DB.ExecuteNonQuery(strupdatebal);
                }
                conbal.Close();
                Response.Cookies["delpnr"].Value= litpnr.Text.ToString();
                Response.Redirect("biletiptal.aspx?q=1");
             
            }

        }

    }
           
}

﻿using System;
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
using System.Data.OleDb;

public partial class AdminArea_sifredegiss : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMsg.Text = "";
        FailureText.Text = "";
    }
    bool IsValidPassword(string oldPassword)
    {
        try
        {
            string qry = String.Format("select [sifre] from kullanicibilgi where kullaniciadi='{0}'", Page.User.Identity.Name);
            string OldPassword = DB.ExecuteScaler(qry).ToString();
            return (oldPassword == OldPassword);
        }
        catch (Exception)
        {
            return false;
        }
    
    }
    void UpdatePassword(string newPassword)
    {
        try
        {
            string qry = String.Format("Update kullanicibilgi set [sifre] = '{0}' where kullaniciadi='{1}'", newPassword, Page.User.Identity.Name);
            DB.ExecuteNonQuery(qry);
            lblMsg.Text = "<b>Şifreniz Başarıyla Değiştirilmiştir</b>";
        }
        catch (Exception ex)
        {
            FailureText.Text = "Hata: " + ex.ToString();   
        }
    }

    protected void ChangePasswordPushButton_Click(object sender, EventArgs e)
    {
        if (IsValidPassword(CurrentPassword.Text))
        {
            UpdatePassword(NewPassword.Text);
        }
        else
        {
            FailureText.Text = "Geçersiz Şifre!"; 
        }
    }
}

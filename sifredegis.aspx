<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="sifredegis.aspx.cs" Inherits="sifredegis" Title="Şifre Değişme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content1" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <table align="center" >
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="pnl1" runat="server">
                    <table border="0" cellpadding="1" cellspacing="0" style="border-collapse: collapse;">
                        <tr>
                            <td>
                                <table border="0" cellpadding="2">
                                    <tr>
                                        <td align="center" colspan="2" style="color:White;background-color:#5D7B9D;font-size:1.1em;font-weight:bold;height:22px;">
                                            Şifrenizi Unuttunuz mu?
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2">
                                            Yeni Şifre Almak İçin Kullanıcı Adınızı Giriniz.
                                        </td>
                                    </tr>
                                    <tr>
                                        
                                        <td colspan="2">
                                            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvname" runat="server" ControlToValidate="txtname"
                                                ErrorMessage="Kullanıcı Adı Girilmedi!" ToolTip="Kullanıcı Adı Girilmedi!" >*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2" style="color: Red;">
                                            <asp:Literal ID="literror" runat="server" EnableViewState="False"></asp:Literal>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" colspan="2">
                                            <asp:Button ID="btnque" runat="server" Text="Giriş" onclick="btnque_Click"  />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <asp:Panel ID="pnl2" runat="server" Visible="false">
                    <table border="0" cellpadding="4" cellspacing="0" style="border-collapse: collapse;">
                        <tr>
                            <td>
                                <table border="0" cellpadding="2">
                                    <tr>
                                        <td align="center" colspan="2" style="color:White;background-color:#5D7B9D;font-size:1.1em;font-weight:bold;height:22px;">
                                            Kullanıcı Onayı
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2" style="color: Black; font-style: italic;">
                                            Yeni Şifre Almak İçin Soruyu Doğru Yanıtlayınız.
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            Kullanıcı Adı:
                                        </td>
                                        <td>
                                            <asp:Literal ID="litname" runat="server"></asp:Literal>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            Soru:
                                        </td>
                                        <td>
                                            <asp:Literal ID="litque" runat="server"></asp:Literal>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <asp:Label ID="lblans" runat="server" AssociatedControlID="txtans">Cevap:</asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtans" runat="server" ></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvanswer" runat="server" ControlToValidate="txtans"
                                                ErrorMessage="Cevap Girilmedi!" ToolTip="Cevap Girilmedi!" >*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2" style="color: Red;">
                                            <asp:Literal ID="literror2" runat="server" EnableViewState="False"></asp:Literal>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" colspan="2">
                                         <asp:Button ID="btnsubmit" runat="server" Text="Giriş" onclick="btnsubmit_Click"/>
                                            
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <asp:Panel ID="pnl3" runat="server" Visible="false">
                    <table border="0" cellpadding="4" cellspacing="0" style="border-collapse: collapse;">
                        <tr>
                            <td class="style1">
                                <table border="0" cellpadding="2">
                                    <tr>
                                        <td align="center" colspan="3" style="color:White;background-color:#5D7B9D;font-size:1.1em;font-weight:bold;height:22px;">
                                            Yeni Şifreniz
                                        </td>
                                    </tr>
                                     <tr>
                                        <td align="left">
                                            Kullanıcı Adı
                                        </td><td>:</td>
                                        <td class="blacktext-ddl ">
                                            <asp:Literal ID="litname1" runat="server"></asp:Literal>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left">
                                          Şifre
                                        </td><td>:</td>
                                        <td class="redtext-normal ">
                                            <asp:Literal ID="litpass" runat="server" ></asp:Literal>
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                       <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td align="right" colspan="3">
                                              <asp:Button ID="btnnext" runat="server" Text="Geri Dön" onclick="btnnext_Click" />
                                            
                                            
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>          
           
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>

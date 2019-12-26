<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="kullaniciara.aspx.cs" Inherits="AdminArea_kullaniciara" Title="Kullanıcı Arama" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content1" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <center>
        <table>
            <tr>
                <td>
                    <asp:Panel ID="pnl" runat="server">
                        <table style="border:2px solid #F5F5F5">                            
                                <tr>
                                <td align="center" colspan="4" height="33" style="color:#FF0000; font-size: x-large; font-weight:bold; margin-bottom:15px">
                                                Kullanıcı Arama Paneli
                                            </td>   
                                </tr>
                               <tr><td colspan="4">&nbsp;</td></tr>
                                <tr valign="middle">
                                    <td align="center" height="27">
                                        Kullanıcı Nicki
                                    </td>
                                    <td>
                                        :
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtname" runat="server" />
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="rfvname" runat="server" ControlToValidate="txtname"
                                            ErrorMessage="Kullanıcı Nicki Girilmedi!" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="4" height="27">
                                        <asp:Label ID="lblerror" runat="server" ForeColor="Red" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="4">
                                        <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" Text="Giriş" />
                                    </td>
                                </tr>
                            
                        </table>
                    </asp:Panel>
                </td>
                <td>
                    <asp:Panel ID="pnl1" runat="server" Visible="false" style="border:1px solid #F5F5F5;padding:5px">
                        <table width="285px" border="0">
                            <caption>
                                <tr>
                                    
                                            <td align="center" colspan="3" style="color:#FF0000; font-size: x-large; font-weight:bold">
                                                Kullanıcı Bilgileri
                                            </td>
                                        
                                </tr>
                            </caption>
                             <tr><td style="padding-top: 15px">&nbsp;</td></tr>
                            <tr align="left">
                                <td class="arama">
                                    <b>Kullanıcı nicki </b>
                                </td>
                                <td>
                                    :
                                </td>
                                <td class="arama">
                                    <asp:Literal ID="litid" runat="server" />
                                </td>
                            </tr>
                            <tr align="left">
                                <td class="arama">
                                    <b>İsmi </b>
                                </td>
                                <td>
                                    :
                                </td>
                                <td class="arama">
                                    <asp:Literal ID="litname" runat="server" />
                                </td>
                            </tr>
                            <tr align="left">
                                <td class="arama">
                                    <b>Mesleği </b>
                                </td>
                                <td>
                                    :
                                </td>
                                <td class="arama">
                                    <asp:Literal ID="litshop" runat="server" />
                                </td>
                            </tr>
                            <tr align="left">
                                <td class="arama">
                                    <b>Dükkan Adresi </b>
                                </td>
                                <td>
                                    :
                                </td>
                                <td class="arama">
                                    <asp:Literal ID="litadd" runat="server" />
                                </td>
                            </tr>
                            <tr align="left">
                                <td class="arama">
                                    <b>Yaşadığı Şehir </b>
                                </td>
                                <td>
                                    :
                                </td>
                                <td class="arama">
                                    <asp:Literal ID="litcity" runat="server" />
                                </td>
                            </tr>
                            <tr align="left">
                                <td class="arama">
                                    <b>İş Numarası </b>
                                </td>
                                <td>
                                    :
                                </td>
                                <td class="arama">
                                    <asp:Literal ID="litph" runat="server" />
                                </td>
                            </tr>
                            <tr align="left">
                                <td class="arama">
                                    <b>Cep Telefonu Numarası </b>
                                </td>
                                <td>
                                    :
                                </td>
                                <td class="arama">
                                    <asp:Literal ID="litmobile" runat="server" />
                                </td>
                            </tr>
                            <tr align="left">
                                <td class="arama">
                                    <b>Hesabındaki Bakiye </b>
                                </td>
                                <td>
                                    :
                                </td>
                                <td class="arama">
                                    <asp:Literal ID="litbal" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" align="center" style="padding-top:15px">
                                    <asp:Button ID="btnsub" Text="Giriş " runat="server" OnClick="btnsub_Click" />
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
        </table>
    </center>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>

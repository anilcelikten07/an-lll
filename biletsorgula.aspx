<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="biletsorgula.aspx.cs" Inherits="biletsorgu" Title="Bilet Sorgula" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table align="center">
        <tr align="left">
            <td align="left" class="style1" >
               <strong> <asp:Label ID="lblheat" runat="server" Text="Bilet Sorgulama" Font-Size= "X-Large"  
                    ForeColor="#F7990D"></asp:Label>
                    </strong>
           <br /> </td>
        </tr>
    </table>
    <table style="width: 100%; height: 200px;">
        
        <tr>
            <td>
               
               
                            <table cellspacing="0" cellpadding="2" border="0" style="vertical-align:top; margin:0 auto;padding-top:25px" align="center">
                                            <tbody>                                                
                                                <tr>
                                                    <td colspan="2" height="25">
                                                        <strong>PNR Numarasını Giriniz:</strong>
                                                    </td>
                                                    
                                                </tr>
                                                <tr>
                                                    
                                                    <td >
                                                        <asp:TextBox ID="txtpnr" runat="server" />
                                                        <asp:RequiredFieldValidator ID="rfvname" runat="server" ErrorMessage="PNR Numarası Girilmedi!"  ControlToValidate="txtpnr" Display="Dynamic" />
                                                    </td><td>
                                                        <asp:Button ID="btnshow" runat="server" Text ="Giriniz" onclick="btndisplay_Click1" />    
                                                        </td>
                                                </tr>
                                                
                                                    <tr>
                                                    <td align="center" colspan="2" height="25">
                                                        <asp:Label ID="lblerror"  runat="server" ForeColor="Red" />
                                                    </td>
                                                </tr>
                                                
                                            </tbody>
                                        </table>
                                    
                             <table cellspacing="0" cellpadding="0" border="0" style="width: 100%; height: 254px;">
                    <tbody>
                        <tr>
                            
                            <td>            
                            </td>
                           
                            
                            <td valign="middle" align="center">
                            <asp:Panel ID="pnl1" runat="server">
                                <table cellspacing="0" cellpadding="0" border="0">
                                    <tbody>
                                        <tr>
                                            <td class="logo">
                                               
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                </asp:Panel>
                                <asp:Panel  ID="pnl2" runat="server" Visible="False">
                                            <div id="Div1">
                                                                             
                                                <div>
                                                    <table cellspacing="2" cellpadding="2" border="0" style="border:2px solid gray;padding:15px; ">
                                                        <tbody  align="left"  >
                                                            <tr >
                                                                <td height="25">
                                                                    <strong>PNR Numarası </strong> 
                                                                </td>
                                                                <td class="style3">
                                                                    :
                                                                </td>
                                                                <td>
                                                                    <asp:Literal ID="litpnr" runat="server" />
                                                                </td>
                                                                <td style="margin-left:15px;width:100px">
                                                                    <strong>Kullanıcı Adınız</strong></td>
                                                                <td>:</td>
                                                                <td><asp:Literal ID ="litagent" runat="server" /></td>
                                                            </tr>
                                                            <tr>
                                                                <td height="25">
                                                                    <strong>Adınız</strong>
                                                                </td>
                                                                <td class="style3">
                                                                    :
                                                                </td>
                                                                <td class="style2">
                                                                    <asp:Literal ID="litname" runat="server" />
                                                                </td>
                                                                <td>
                                                                    <strong>Telefon Numaranız</strong></td>
                                                                <td>:</td>
                                                                <td><asp:Literal ID="litph" runat="server" /></td>
                                                            </tr>
                                                            <tr>
                                                                <td height="25">
                                                                    <strong>Nereden </strong>
                                                                </td>
                                                                <td class="style3">
                                                                    :
                                                                </td>
                                                                <td class="style2">
                                                                 <asp:Literal ID="litfrom" runat="server" />   
                                                                </td>
                                                                <td>
                                                                    <strong> Nereye </strong> </td>
                                                                <td>:</td>
                                                                <td><asp:Literal ID="litto" runat="server" /></td>
                                                                </tr> 
                                                                <tr>
                                                                    <td align="left" height="25">
                                                                        <strong>Gidiş Tarihiniz </strong>
                                                                    </td>
                                                                    <td align="left" class="style3">
                                                                        :
                                                                    </td>
                                                                    <td align="left" class="style2">
                                                                        <asp:Literal ID="litdate" runat="server"></asp:Literal>
                                                                    </td>
                                                                    <td>
                                                                        <strong>Gidiş Saatiniz</strong></td>
                                                                    <td>:</td>
                                                                    <td><asp:Literal ID="littime" runat="server" /></td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="left" height="25">
                                                                        <strong> Koltuk Numaranız </strong>
                                                                    </td>
                                                                    <td align="left" class="style3">
                                                                        :
                                                                    </td>
                                                                    <td align="left" class="style2">
                                                                        <asp:Literal ID="litseat" runat="server"></asp:Literal>
                                                                    </td>
                                                                    <td>
                                                                        <strong>Toplam Koltuk Sayısı</strong> </td>
                                                                    <td>:</td>
                                                                    <td><asp:Literal ID="littotalseat" runat="server" />    </td>
                                                                </tr>
                                                                <tr><td align="left" height="25">
                                                              
                                                                <tr>
                                                                    <td class="redtext" height="25">
                                                                        <strong>Toplam Ücret</strong>
                                                                    </td>
                                                                    <td class="style3">
                                                                        :
                                                                    </td >
                                                                    <td colspan="4" class="redText">
                                                                        <strong>
                                                                        <asp:Literal ID="litrent" runat="server" />
                                                                    TL
                                                                        </strong></td>
                                                                </tr>
                                                                
                                                        </tbody>
                        </table>
                        </div></div> </asp:Panel>
                            </td>
                            
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>


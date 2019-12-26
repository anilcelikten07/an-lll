<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="yerkontrol.aspx.cs" Inherits="yerkontrol" Title="Yer Kontrolü" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content1" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
   <table align="center">
        <tr align="left">
            <td align="left" class="style1" >
               <strong> <asp:Label ID="lblheat" runat="server" Text="Otobüs'te Yer Durumu" Font-Size= "X-Large" 
                    ForeColor="#F7990D"></asp:Label>
                    </strong>
           <br /> </td>
        </tr>
    </table>
   
    <asp:UpdatePanel ID="up" runat="server">
        <ContentTemplate>
            <table>
              
                <tr>
                    <td>
                        
                        <table cellspacing="0" cellpadding="0" border="0" style="width: 95%">
                            <tbody>
                                <tr>
                                  
                                    <td align="center" class="style1">
                                        <div class="smallbox" style="margin: 0px">                                            
                                            <table style="margin-left: 20px; width: 328px;" cellspacing="0" cellpadding="0" align="center"
                                                border="0">
                                                <tbody>
                                                    <tr>
                                                        <td class="formtext" width="37%" height="27">
                                                            Nereden:
                                                        </td>
                                                        <td width="63%" align="left" height="27">
                                                            <asp:DropDownList CssClass="form" ID="Source" runat="server">
                                                                <asp:ListItem Text="--Seçiniz--" Value="--Seçiniz--"></asp:ListItem>
                                                                 <asp:ListItem Text="Diyarbakır" Value="Diyarbakır"></asp:ListItem>
                                                                 <asp:ListItem Text="İstanbul" Value="İstanbul"></asp:ListItem>
                                                                 <asp:ListItem Text="İzmir" Value="İzmir"></asp:ListItem>
                                                            <asp:ListItem Text="Ankara" Value="Ankara"></asp:ListItem>
                                                                <asp:ListItem Text="Denizli" Value="Denizli"></asp:ListItem>
                                                                <asp:ListItem Text="Giresun" Value="Giresun"></asp:ListItem>
                                                                <asp:ListItem Text="Hatay" Value="Hatay"></asp:ListItem>
                                                                <asp:ListItem Text="Adana" Value="Adana"></asp:ListItem>
                                                                <asp:ListItem Text="Mersin" Value="Mersin"></asp:ListItem>
                                                                <asp:ListItem Text="Antalya" Value="Antalya"></asp:ListItem>
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="form" width="37%" height="27">
                                                            Nereye:
                                                        </td>
                                                        <td width="63%" align="left" height="27">
                                                        <asp:UpdatePanel ID="up2" runat="server"><ContentTemplate>
                                                            <div id="txtHint">
                                                                <asp:DropDownList CssClass="form" tyle="width: 130px" ID="Destination" runat="server"
                                                                    AutoPostBack="True" OnSelectedIndexChanged="Destination_SelectedIndexChanged">
                                                                    <asp:ListItem Text="--Seçiniz--" Value="--Seçiniz--"></asp:ListItem>
                                                                           <asp:ListItem Text="Diyarbakır" Value="Diyarbakır"></asp:ListItem>
                                                                 <asp:ListItem Text="İstanbul" Value="İstanbul"></asp:ListItem>
                                                                 <asp:ListItem Text="İzmir" Value="İzmir"></asp:ListItem>
                                                            <asp:ListItem Text="Ankara" Value="Ankara"></asp:ListItem>
                                                                <asp:ListItem Text="Denizli" Value="Denizli"></asp:ListItem>
                                                                <asp:ListItem Text="Giresun" Value="Giresun"></asp:ListItem>
                                                                <asp:ListItem Text="Hatay" Value="Hatay"></asp:ListItem>
                                                                <asp:ListItem Text="Adana" Value="Adana"></asp:ListItem>
                                                                <asp:ListItem Text="Mersin" Value="Mersin"></asp:ListItem>
                                                                <asp:ListItem Text="Antalya" Value="Antalya"></asp:ListItem>
                                                                </asp:DropDownList>
                                                            </div>
                                                            </ContentTemplate></asp:UpdatePanel>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="form" width="37%" height="27">
                                                            Gideceğiniz Tarih :
                                                        </td>
                                                        <td width="63%" align="left" height="27">
                                                        <asp:UpdatePanel ID="up3" runat="server"><ContentTemplate>
                                                            <asp:DropDownList ID="departon" runat="server" OnSelectedIndexChanged="departon_SelectedIndexChanged"
                                                                AutoPostBack="True">
                                                            </asp:DropDownList>
                                                            </ContentTemplate></asp:UpdatePanel>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="form" width="37%" height="27%">
                                                            Gideceğiniz Saat :
                                                        </td>
                                                        <td width="63%" align="left" height="27">
                                                        <asp:UpdatePanel ID="up5" runat="server"><ContentTemplate>
                                                            <asp:DropDownList ID="DepartureTime" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DepartureTime_SelectedIndexChanged">
                                                            </asp:DropDownList>
                                                            </ContentTemplate></asp:UpdatePanel>
                                                    </tr>
                                                    <tr>
                                                        <td class="formtext" height="27%" width="37%">
                                                            &nbsp;
                                                        </td>
                                                        <td align="left" height="27" width="63%">
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                             
                                                </tbody>
                                            </table>
                                        </div>
                                    </td>
                                   
                                    <td width="55%" style="padding-top:15px">
                                        <asp:Panel ID="pnl1" runat="server">
                                            <asp:Table border="0" ID="seattable" runat="server">
                                                <asp:TableRow>
                                                    <asp:TableCell ID="TableCell1" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s1" ToolTip="Window Side" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />
                                                        1</asp:TableCell>
                                                    <asp:TableCell ID="TableCell2" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s6" ImageUrl="~/Images/available_seat_img.gif" runat="server" />6</asp:TableCell>
                                                    <asp:TableCell ID="TableCell3" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s7" ToolTip="Window Side" ImageUrl="~/Images/available_seat_img.gif"
                                                            runat="server" />7</asp:TableCell>
                                                    <asp:TableCell ID="TableCell4" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s12" ImageUrl="~/Images/available_seat_img.gif" runat="server" />12</asp:TableCell>
                                                    <asp:TableCell ID="TableCell5" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s13" ImageUrl="~/Images/available_seat_img.gif" runat="server" />13</asp:TableCell>
                                                    <asp:TableCell ID="TableCell6" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s18" ImageUrl="~/Images/available_seat_img.gif" runat="server" />18</asp:TableCell>
                                                    <asp:TableCell ID="TableCell7" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s19" ImageUrl="~/Images/available_seat_img.gif" runat="server" />19</asp:TableCell>
                                                    <asp:TableCell ID="TableCell8" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s24" ImageUrl="~/Images/available_seat_img.gif" runat="server" />24</asp:TableCell>
                                                    <asp:TableCell ID="TableCell9" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s25" ImageUrl="~/Images/available_seat_img.gif" runat="server" />25</asp:TableCell>
                                                    <asp:TableCell ID="TableCell10" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s31" ImageUrl="~/Images/available_seat_img.gif" runat="server" />31</asp:TableCell></asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell ID="TableCell11" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s2" ImageUrl="~/Images/available_seat_img.gif" runat="server" />2</asp:TableCell>
                                                    <asp:TableCell ID="TableCell12" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s5" ImageUrl="~/Images/available_seat_img.gif" runat="server" />5</asp:TableCell>
                                                    <asp:TableCell ID="TableCell13" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s8" ImageUrl="~/Images/available_seat_img.gif" runat="server" />8</asp:TableCell>
                                                    <asp:TableCell ID="TableCell14" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s11" ImageUrl="~/Images/available_seat_img.gif" runat="server" />11</asp:TableCell>
                                                    <asp:TableCell ID="TableCell15" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s14" ImageUrl="~/Images/available_seat_img.gif" runat="server" />14</asp:TableCell>
                                                    <asp:TableCell ID="TableCell16" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s17" ImageUrl="~/Images/available_seat_img.gif" runat="server" />17</asp:TableCell>
                                                    <asp:TableCell ID="TableCell17" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s20" ImageUrl="~/Images/available_seat_img.gif" runat="server" />20</asp:TableCell>
                                                    <asp:TableCell ID="TableCell18" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s23" ImageUrl="~/Images/available_seat_img.gif" runat="server" />23</asp:TableCell>
                                                    <asp:TableCell ID="TableCell19" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s26" ImageUrl="~/Images/available_seat_img.gif" runat="server" />26</asp:TableCell>
                                                    <asp:TableCell ID="TableCell20" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s30" ImageUrl="~/Images/available_seat_img.gif" runat="server" />30</asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell ID="TableCell21" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell22" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell23" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell24" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell25" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell26" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell27" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell28" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell29" runat="server">&nbsp; </asp:TableCell>
                                                    <asp:TableCell ID="TableCell30" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s29" ImageUrl="~/Images/available_seat_img.gif" runat="server" />29</asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell ID="TableCell31" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s3" ImageUrl="~/Images/available_seat_img.gif" runat="server" />3</asp:TableCell>
                                                    <asp:TableCell ID="TableCell32" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s4" ImageUrl="~/Images/available_seat_img.gif" runat="server" />4</asp:TableCell>
                                                    <asp:TableCell ID="TableCell33" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s9" ImageUrl="~/Images/available_seat_img.gif" runat="server" />9</asp:TableCell>
                                                    <asp:TableCell ID="TableCell34" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s10" ImageUrl="~/Images/available_seat_img.gif" runat="server" />10</asp:TableCell>
                                                    <asp:TableCell ID="TableCell35" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s15" ImageUrl="~/Images/available_seat_img.gif" runat="server" />15</asp:TableCell>
                                                    <asp:TableCell ID="TableCell36" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s16" ImageUrl="~/Images/available_seat_img.gif" runat="server" />16</asp:TableCell>
                                                    <asp:TableCell ID="TableCell37" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s21" ImageUrl="~/Images/available_seat_img.gif" runat="server" />21</asp:TableCell>
                                                    <asp:TableCell ID="TableCell38" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s22" ImageUrl="~/Images/available_seat_img.gif" runat="server" />22</asp:TableCell>
                                                    <asp:TableCell ID="TableCell39" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s27" ImageUrl="~/Images/available_seat_img.gif" runat="server" />27</asp:TableCell>
                                                    <asp:TableCell ID="TableCell40" class="seatCell" valign="middle" runat="server">
                                                        <asp:ImageButton ID="s28" ImageUrl="~/Images/available_seat_img.gif" runat="server" />28</asp:TableCell>
                                                </asp:TableRow>
                                            </asp:Table>
                                        </asp:Panel>
                                        
                                        <table id="logoIndicator" runat="server"  >
                                        <tr><td>&nbsp;</td></tr>
                                            <tr align="center"><td style="width:125px"></td>
                                                <td>
                                                    <asp:Image ID="imgbo" ImageUrl="~/Images/booked_seat_img.gif" runat="server" 
                                                        Height="23px" Width="31px" />
                                                    </td><td style="font-size:medium;color:Navy">
                                                    <asp:Literal ID ="litbooked" Text = "Dolu Koltuk" runat="server" />
                                                </td>
                                                <td>
                                                    <asp:Image ID="imgav2" ImageUrl="~/Images/available_seat_img.gif" runat="server" 
                                                        Height="23px" Width="31px" />
                                                    </td><td style="font-size:medium;color:Navy">
                                                    <asp:Literal ID ="Literal1" Text = "Boş Koltuk" runat="server" />
                                                </td>
                                                
                                            </tr>
                                        </table>
                                   
                                    </td>
                                
                                </tr>
                            </tbody>
                        </table>
                     
                    </td>
                </tr>
                <tr>
                    <td align="center">
                      
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                </tr>
            </table>
       
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>

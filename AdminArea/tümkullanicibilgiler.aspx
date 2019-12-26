<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="tümkullanicibilgiler.aspx.cs" Inherits="AdminArea_tümbilgi" Title="Tüm Kullanıcı Bilgileri" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <table align="center" style="text-align:center">
        <tr>       
            <td>
               <strong> <asp:Label ID="lblheat" runat="server" Text="KAYIT LİSTESİ" Font-Size= "X-Large"  
                    ForeColor="#FF0000"></asp:Label>
                    </strong>
           <br /> </td>
        </tr>
        <tr><td>&nbsp;</td></tr>
        </table> 
   <asp:UpdatePanel ID="up1" runat="server"><ContentTemplate>
       <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
           AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
           BorderStyle="None" BorderWidth="1px" CellPadding="3" 
           DataSourceID="AccessDataSource1" Height="136px" Width="872px">
           <FooterStyle BackColor="White" ForeColor="#000066" />
           <RowStyle ForeColor="#000066" />
           <Columns>
               <asp:BoundField DataField="kullaniciadi" HeaderText="KULLANICI ADI" 
                   SortExpression="kullaniciadi" />
               <asp:BoundField DataField="kullaniciismi" HeaderText="ADI" 
                   SortExpression="kullaniciismi" />
               <asp:BoundField DataField="Meslek" HeaderText="MESLEĞİ" 
                   SortExpression="Meslek" />
               <asp:BoundField DataField="il" HeaderText="YAŞADIĞI ŞEHİR" 
                   SortExpression="il" />
               <asp:BoundField DataField="ilce" HeaderText="DÜKKAN ADRESİ " 
                   SortExpression="ilce" />
               <asp:BoundField DataField="istelefon" HeaderText="İŞ TELEFON NUMARASI" 
                   SortExpression="istelefon" />
               <asp:BoundField DataField="telefon" 
                   HeaderText="ŞAHSİ TELEFON NUMARASI" SortExpression="telefon" />
               <asp:BoundField DataField="Agent_current_bal" HeaderText="HESABINDAKİ PARA(TL)" 
                   SortExpression="Agent_current_bal" />
           </Columns>
           <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
           <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
           <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
       </asp:GridView>
       <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
           DataFile="~/db/starbus.mdb" 
           SelectCommand="SELECT [kullaniciadi], [kkullaniciismi], [kullanicisoyad], [Meslek], [il], [ilce], [istelefon], [telefon], [Agent_current_bal] FROM [temelbilgi]">
       </asp:AccessDataSource>
    </ContentTemplate> </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>


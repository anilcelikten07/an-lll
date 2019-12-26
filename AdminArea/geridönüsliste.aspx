<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="geridönüsliste.aspx.cs" Inherits="AdminArea_geridönüs" Title="Geri Dönüş Listesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
<table align="center">
        <tr>       
            <td>
               <strong> <asp:Label ID="lblheat" runat="server" Text="Geri Dönüş Listesi" Font-Size= "X-Large"  
                    ForeColor="#F7990D"></asp:Label>
                    </strong>
           <br /> </td>
        </tr>
        <tr><td>&nbsp;</td></tr>
    </table>

<asp:UpdatePanel ID ="up1" runat="server" ><ContentTemplate>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowSorting="True"
        DataSourceID="AccessDataSource1" Height="133px" Width="784px" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="2px" 
        CellPadding="3">
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <RowStyle ForeColor="#000066" />
        <Columns>
            <asp:BoundField DataField="İsimm" HeaderText="İsim" SortExpression="isimm" />
            <asp:BoundField DataField="Email" HeaderText="Email Adresi" SortExpression="Email" />
            <asp:BoundField DataField="Telefon" HeaderText="Telefon Numarası" SortExpression="Telefon" />
            <asp:BoundField DataField="Konu" HeaderText="Konu Başlığı" 
                SortExpression="Konu" />
            <asp:BoundField DataField="Yorum" HeaderText="Yorumlar" 
                SortExpression="Yorum"  />
            <asp:BoundField DataField="Kullanicitipi" HeaderText="Kullanıcı Tipi" 
                SortExpression="Kullanicitipi" />
        </Columns>
        <PagerStyle BackColor="Black" ForeColor="#000000" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#660033" Font-Bold="True" ForeColor="Black" />
        <HeaderStyle BackColor="#006633" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/db/starbus.mdb" 
        SelectCommand="SELECT [İsimm], [Email], [Telefon], [Konu], [Yorum], [Kullanicitipi] FROM [geridönüs]">
    </asp:AccessDataSource>
        </ContentTemplate> </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>


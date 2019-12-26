<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="seferliste.aspx.cs" Inherits="AdminArea_seferliste" Title="Sefer Listesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
 <table align="center">
        <tr>       
            <td>
               <strong> <asp:Label ID="lblheat" runat="server" Text="Sefer Bilgilerimiz" Font-Size= "X-Large"  
                    ForeColor="#FF0000"></asp:Label>
                    </strong>
           <br /> </td>
        </tr>
        <tr><td>&nbsp;</td></tr>
    </table>
 
 
 
 <asp:UpdatePanel ID="up1" runat="server"><ContentTemplate> 
 
 <center>
 
     <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
         AutoGenerateColumns="False" BackColor="Black" BorderColor="#FFFFFF" 
         BorderStyle="None" BorderWidth="1px" CellPadding="3" 
         DataSourceID="AccessDataSource1" Height="143px" Width="560px">
         <FooterStyle BackColor="White" ForeColor="#FF0000" />
         <RowStyle ForeColor="#FF0000" />
         <Columns>
             <asp:BoundField DataField="Sno" HeaderText="Sıra Numarası" SortExpression="Sno" />
             <asp:BoundField DataField="nereden" HeaderText="Hareket Yeri" 
                 SortExpression="nereden" />
             <asp:BoundField DataField="ücret" HeaderText="Koltuk Başına Ücret" 
                 SortExpression="ücret" />
             <asp:BoundField DataField="Saat" HeaderText="Hareket Saati" SortExpression="Saat" />
             <asp:BoundField DataField="ulasmasaat" HeaderText="Tahmini Varış Saati" 
                 SortExpression="ulasmasaat" />
             <asp:BoundField DataField="aracplaka" HeaderText="Otobüs" 
                 SortExpression="aracplaka" />
         </Columns>
         <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
         <SelectedRowStyle BackColor="#FF0000" Font-Bold="True" ForeColor="White" />
         <HeaderStyle BackColor="#FF0000" Font-Bold="True" ForeColor="Black" />
     </asp:GridView>


     <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
         DataFile="~/db/starbus.mdb" 
         SelectCommand="SELECT [Sno], [nereden], [ücret], [Saat], [ulasmasaat], [aracplaka] FROM [saatlistesi]">
     </asp:AccessDataSource>

</center>
</ContentTemplate></asp:UpdatePanel> 
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>


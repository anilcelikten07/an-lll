<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="sifredegis.aspx.cs" Inherits="AdminArea_sifredegiss" Title="�ifre De�i�me" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
 <table align="center" style="text-align:center">
        <tr>       
            <td>
               <strong> <asp:Label ID="lblheat" runat="server" Text="�ifre De�i�tirme" Font-Size= "X-Large"  
                    ForeColor="#F7990D"></asp:Label>
                    </strong>
           <br /> </td>
        </tr>
        <tr><td><asp:Label ID="lblMsg" runat="server"></asp:Label> </td>
        </tr>
        <tr><td>
          <table border="0" cellpadding="1" cellspacing="2" 
                       style="border-collapse:collapse;">
                       <tr>
                           <td>
                               <table border="0" cellpadding="2" >
                                   
                                   <tr>
                                       <td align="right">
                                           <asp:Label ID="CurrentPasswordLabel" runat="server" 
                                               AssociatedControlID="CurrentPassword">�imdiki Parolan�z� Giriniz:</asp:Label>
                                       </td>
                                       <td>
                                           <asp:TextBox ID="CurrentPassword" runat="server" TextMode="Password"></asp:TextBox>
                                           <asp:RequiredFieldValidator ID="CurrentPasswordRequired" runat="server" 
                                               ControlToValidate="CurrentPassword" ErrorMessage="Ge�ersiz �ifre!" 
                                               ToolTip="Ge�ersiz �ifre!" ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
                                       </td>
                                   </tr>
                                   <tr>
                                       <td align="right">
                                           <asp:Label ID="NewPasswordLabel" runat="server" 
                                               AssociatedControlID="NewPassword">Yeni Parolan�z� Giriniz:</asp:Label>
                                       </td>
                                       <td>
                                           <asp:TextBox ID="NewPassword" runat="server" TextMode="Password"></asp:TextBox>
                                           <asp:RequiredFieldValidator ID="NewPasswordRequired" runat="server" 
                                               ControlToValidate="NewPassword" ErrorMessage="Yeni parola hatal�d�r" 
                                               ToolTip="Yeni parola hatal�d�r  " ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
                                       </td>
                                   </tr>
                                   <tr>
                                       <td align="right">
                                           <asp:Label ID="ConfirmNewPasswordLabel" runat="server" 
                                               AssociatedControlID="ConfirmNewPassword">Yeni Parolan�z� Tekrar Giriniz:</asp:Label>
                                       </td>
                                       <td>
                                           <asp:TextBox ID="ConfirmNewPassword" runat="server" TextMode="Password"></asp:TextBox>
                                           <asp:RequiredFieldValidator ID="ConfirmNewPasswordRequired" runat="server" 
                                               ControlToValidate="ConfirmNewPassword" 
                                               ErrorMessage="Yeni �ifreyi do�rulaman gerekli." 
                                               ToolTip="Yeni �ifreyi do�rulaman gerekli." ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
                                       </td>
                                   </tr>
                                   <tr>
                                       <td align="center" colspan="2">
                                           <asp:CompareValidator ID="NewPasswordCompare" runat="server" 
                                               ControlToCompare="NewPassword" ControlToValidate="ConfirmNewPassword" 
                                               Display="Dynamic" 
                                               ErrorMessage="Yeni parola e�le�miyor" 
                                               ValidationGroup="ChangePassword1"></asp:CompareValidator>
                                       </td>
                                   </tr>
                                   <tr>
                                       <td align="center" colspan="2" style="color:Red;">
                                           <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                       </td>
                                   </tr>
                                   <tr>
                                       <td align="right">
                                           <asp:Button ID="ChangePasswordPushButton" runat="server" 
                                               CommandName="ChangePassword" onclick="ChangePasswordPushButton_Click" 
                                               Text="Giri�" ValidationGroup="ChangePassword1" />
                                       </td>
                                       <td align="left">
                                           <asp:Button ID="CancelPushButton" runat="server" CausesValidation="False" 
                                               CommandName="Cancel" Text="�ptal" />
                                       </td>
                                   </tr>
                               </table>
                           </td>
                       </tr>
                   </table>
        </td></tr>
    </table>
 
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>


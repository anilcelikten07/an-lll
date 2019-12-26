<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="sorulansorular.aspx.cs" Inherits="soru" Title="Sık Sorulan Sorular" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content1" runat="Server">
  
<div id="innertitle">
    <table align="center" >
        <tr align="left">
            <td align="left" class="style1" >
                <strong><asp:Label ID="lblheat" runat="server" Text="Sık Sorulan Sorular" Font-Size="X-Large"  
                    ForeColor="#FF0000"></asp:Label></strong>
           <br /> </td>
        </tr>
    </table>
    </div>
    <div id="rightContent">
        <div class="mainText" id="maintextBox">
         
            <div id="fromtitle">
                <h3 id="top">
                    Sık Sorulan Sorular</h3>
            </div>
            <div id="formBody">
                <div id="contentBox" style="margin: 0px 0px 20px 0px">
                    <ul>
                        <li><a href="#q1">Geleneksel yoldan bilet satın alma ile karşılaştırıldığında fazladan 
                            ödemek zorunda mıyım?</a> </li>
                        <li><a href="#q3">Biletimi kaybettiğimde neler yapmalıyım?</a> </li>
                        <li><a href="#q4">Biletimi iptal edebilir miyim? </a></li>
                        <li><a href="#q5">Kredi kartım yok hala sizden bilet alabilir miyim? </a>
                        </li>
                        <li><a href="#q6">Otobüsü kaçırdım para iadesi alabilir miyim? </a></li>
                        <li><a href="#q7">Hangi kredi/banka kartını kullanmalıyım? </a></li>
                        <li><a href="#q8">Ödeme seçeneklerinden hangilerine sahibim? </a></li>
                        <li><a href="#q9">Bilet Rezervasyonu yapma seçenekleri nelerdir? </a></li>
                    </ul>
                </div>
                <ul>
                    <li><a id="q1" name="q1"></a><span class="orange11"><b>Geleneksel yoldan bilet satın alma ile karşılaştırıldığında fazladan 
                            ödemek zorunda mıyım?</b></span><br />
                        Geleneksel yöntemle karşılaştırıldığında ilave bir ücret talep etmez. 
                        Biletler kesinlikle aynı ücret karşılığında.</li>
                    <li><a id="q3" name="q3"></a><span class="orange11"><b>Biletimi kaybettiğimde neler yapmalıyım?
                        </b></span><br />Biletinizin PIN kodunu istedik. Bu şekilde size yeni bir bilet vereceğiz. 
                        Yakın zamanda bu sorunu, adınızı ve gideceğiniz yeri bildirerek ve bu konuda size gideceğiniz yere yeni bir bilet vereceğiz.</li>
                    <li><a id="q4" name="q4"></a><span class="orange11"><b>Biletimi iptal edebilir miyim?</b></span><br />Evet. Sitemiz üzerinden rezerve edilen biletler iptal edilebilir. Para yolcuya geri aktarılır. İptal edildiğinde ücrette kesinti
                        olmayacağını ve iptal işleminin yalnızca bir gün önce yapılabileceğini lütfen unutmayın.</li>
                    <li><a id="q5" name="q5"></a><span class="orange11"><b>Kredi kartım yok hala sizden bilet alabilir miyim?</b></span>
                        <br />Tabiki de kredi kartına sahip olmasanız bile nakit ödeme seçeneği ile acentalarımızdan bilet alabilirsiniz.Şubelerimizi aşağıda belirtiyorum.</li>
                    <ul id="faqStyle2">
                        <li>Kadıköy Şubesi </li>
                        <li>Beşiktaş Şubesi </li>
                    </ul>
                    <li><a id="q6" name="q6"></a><span class="orange11"><b>Otobüsü kaçırdım para iadesi alabilir miyim?</b></span><br />
                       Eğer otobüsü kaçırma probleminizde bizden kaynaklıysa paranızın %100 iadesini sağlıyoruz.Problem sizden kaynaklıysa maalesef iade sağlamıyoruz. </li>
                    <li><a id="q7" name="q7"></a><span class="orange11"><b>Hangi kredi/banka kartını kullanmalıyım?</b></span><br />
                        Maalesef şu anda sadece nakit ödeme seçeneğini destekliyoruz. </li>
                    <li><a id="q8" name="q8"></a><span class="orange11"><b>Ödeme seçeneklerinden hangilerine sahibim?</b></span><br />
                        İnternet sitemizden şu anda sadece nakit ödeme seçeneğine sahipsiniz , ancak şubelerimizden kredi kartı kullanarak işlem ödeme yapabilirsiniz.</li>
                    <li><a id="q9" name="q9"></a><span class="orange11"><b>Bilet rezervasyonu yapma seçenekleri nelerdir?</b></span>
                        <br />
                        Acentalarımıza giderek ya da telefonla arayarak bilet rezervasyonu işlemini gerçekleştirebilirsiniz.
                    </li>
                </ul>
                <p style="float: right">
                    <a href="#top">Üste Çık</a></p>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>

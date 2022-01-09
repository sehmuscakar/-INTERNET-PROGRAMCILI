<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ANASAYFA.aspx.cs" Inherits="İNTERNET_PROGRAMCILIĞI_FİNAL_ÖDEVİ.ANASAYFA" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>SAĞLIK</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 196px;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="ANASAYFA.aspx">SAĞLIKLI YAŞAM </a>
    </div>
    <ul class="nav navbar-nav" >
      <li ><a href="beslenme.aspx">BESLENME</a></li>
      <li><a href="spor.aspx">SPOR</a></li>
      <li><a href="uyku.aspx">UYKU</a></li>
      <li><a href="zamanyünetimi.aspx">ZAMAN YÖNETİMİ</a></li>
    </ul>
  </div>
</nav>
  
<div >
  
   
</div>
        

                   <div style="text-align:center"><h1>SAĞLIKLI YAŞAMAYA NE DERSİN </h1></div>  
        <br /> <h3> Bizimle Sende Sağlıklı Yaşamaya İlerlemek İstiyorsan Kayıt Ol</h3>




    <table style="width:300px; border="1";>

        <tr>
            <td>ADINIZ:</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox3" runat="server" Height="41px"></asp:TextBox>
                <br />
            </td>
            
        </tr>
        <br />
        <br />
        <tr>
            <td>SOYADINIZ:<br />
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox4" runat="server" Height="33px" Width="115px"></asp:TextBox>
            </td>
            
        </tr>
    </table>
        <asp:Label ID="Label2" runat="server" Text="       YAŞINIZ  :                               "></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" Height="30px" Width="163px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="KİLONUZ:"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server" Height="32px" Width="167px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="YAŞADIĞINIZ ŞEHİR:"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server" Height="41px" Width="158px"></asp:TextBox>
        <br />
        <br />











        <asp:Button ID="Button1" runat="server" Height="37px" OnClick="Button1_Click" Text=" Yeni Kayıt Oluştur " Width="167px" />
        <br />
      
                


        <asp:Label ID="Label1" runat="server" Text="KAYIT İŞLEM BİLGİSİ" BackColor="#CCFF99" height="60px" Width="80px" ></asp:Label>




















        <h5>SENDE KAYIT OLDUKTAN SONRA KENDİNİ BU EKİBİN İÇİNDE GÖREBİLİRSİN SADECE SİTEYE TEKRAR GİR VE ARAMIZDA OLDUĞUNU GÖR  </h5>
        <h6></h6>
        <br />
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="kimlik" DataSourceID="SqlDataSource7" ForeColor="#333333" GridLines="None" Height="206px" Width="1046px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="kimlik" HeaderText="kimlik" InsertVisible="False" ReadOnly="True" SortExpression="kimlik" />
                <asp:BoundField DataField="adı" HeaderText="adı" SortExpression="adı" /> 
                <asp:BoundField DataField="soyadı" HeaderText="soyadı" SortExpression="soyadı" />
                <asp:BoundField DataField="yas" HeaderText="yas" SortExpression="yas" />
                <asp:BoundField DataField="kilo" HeaderText="kilo" SortExpression="kilo" />
                <asp:BoundField DataField="şehir" HeaderText="şehir" SortExpression="şehir" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:wepfinalConnectionString9 %>" SelectCommand="SELECT * FROM [MUSTERİ]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:wepfinalConnectionString8 %>" SelectCommand="SELECT * FROM [MUSTERİ]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:wepfinalConnectionString7 %>" SelectCommand="SELECT * FROM [muşteri]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:wepfinalConnectionString6 %>" SelectCommand="SELECT * FROM [muşteri]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:wepfinalConnectionString5 %>" SelectCommand="SELECT * FROM [muşteri]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:wepfinalConnectionString2 %>" SelectCommand="SELECT * FROM [vatandaş]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:wepfinalConnectionString %>" SelectCommand="SELECT * FROM [perbilgi]"></asp:SqlDataSource>











     </form>
  
  
    

    
   

     </body>
</html>

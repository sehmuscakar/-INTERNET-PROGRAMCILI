using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.Sql;
namespace İNTERNET_PROGRAMCILIĞI_FİNAL_ÖDEVİ
{
    public partial class ANASAYFA : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-O9RRR03;Initial Catalog=wepfinal;Integrated Security=True");

       
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand gonder = new SqlCommand("insert into MUSTERİ (adı,soyadı,yas,kilo,şehir) values ('" + TextBox3.Text+"','"+ TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "')", baglanti);
            gonder.ExecuteNonQuery();
            baglanti.Dispose();
            baglanti.Close();
            Label1.Text = "İşleminiz Gerçekleşti";


        }

       
    }
}
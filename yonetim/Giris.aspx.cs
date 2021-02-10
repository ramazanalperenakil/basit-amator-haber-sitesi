using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class yonetim_Giris : System.Web.UI.Page
{
    rehber kod = new rehber();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["kullanici"] != null)
        {
            Response.Redirect("Default.aspx");

        }
    }



    protected void ButtonGiris_Click(object sender, EventArgs e)
    {
        string kullanici = TextBoxEposta.Text, sifre = TextBoxSifre.Text;
        DataTable dt = kod.GetDataTable("Select * from kullanici where (kullaniciAdi='" + kullanici + "' AND sifre='" + sifre + "' )"); /*AND uyeTuru='admin'*/

        if (dt.Rows.Count == 0)
        {
            lblHata.Visible = true;
        }
        else
        {
            Session["kullanici"] = kullanici;
            Response.Redirect("Default.aspx");
        }
    }
}
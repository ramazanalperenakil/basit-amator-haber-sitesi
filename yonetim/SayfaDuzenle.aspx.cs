using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class yonetim_SayfaDuzenle : System.Web.UI.Page
{
    rehber kod = new rehber();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {
            DataRow dr = kod.GetDataRow("Select * from sayfalar WHERE [sayfa_id]=" + Request.QueryString["id"].ToString());
            txtSayfaAdi.Text = dr[4].ToString();
            txtSayfaİcerik.Text = dr[2].ToString();
            RepeaterSayfaResim.DataSource = kod.GetDataTable("SELECT [SayfaResim] FROM [sayfalar] WHERE [sayfa_id]=" + Request.QueryString["id"].ToString());
            RepeaterSayfaResim.DataBind();



        }


    }

    protected void btnHaberEkle_Click(object sender, EventArgs e)
    {
        string ad = txtSayfaAdi.Text;
        string donuştur = ad;

        string url = kod.KodOlustur(donuştur);

        if (fuDosya.HasFile)
        {
            string sayfaResim = kod.SliderKaydet(fuDosya, 600, 320, "/img/sayfa/", url);

            kod.komut("UPDATE sayfalar SET SayfaResim= '"+sayfaResim+ "', SayfaMetin = '"+txtSayfaİcerik.Text+ "', SayfaUrl ='"+ donuştur + "' , SayfaAdi =  '"+ad+ "' WHERE  sayfa_id=" + Request.QueryString["id"].ToString());
            PanelBasarılı.Visible = true;
            RepeaterSayfaResim.DataSource = kod.GetDataTable("SELECT [SayfaResim] FROM [sayfalar] WHERE [sayfa_id]=" + Request.QueryString["id"].ToString());
            RepeaterSayfaResim.DataBind();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class yonetim_SayfaEkle : System.Web.UI.Page
{
    rehber kod = new rehber();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnHaberEkle_Click(object sender, EventArgs e)
    {
        string resimAdi = txtSayfaAdi.Text;
        string donuştur = resimAdi;
        if (fuDosya.HasFile)
        {
            string url = kod.KodOlustur(donuştur);
            string haberResim = kod.SliderKaydet(fuDosya, 600, 320, "/img/sayfa/", url);
            kod.komut("Insert Into sayfalar (SayfaResim , SayfaMetin , SayfaUrl , SayfaAdi) VALUES('"+ haberResim + "' , '"+txtSayfaİcerik.Text+"' , '"+url+"' , '"+txtSayfaAdi.Text+"') ");
            PanelBasarılı.Visible = true;
        }

    }
}
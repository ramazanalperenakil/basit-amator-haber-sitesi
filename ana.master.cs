using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ana : System.Web.UI.MasterPage
{
    rehber kod = new rehber();
    protected void Page_Load(object sender, EventArgs e)
    {
        //Page.Title = kod.getDataCell("Select [SiteAdi] from [ayar]");

        RepeaterLogo.DataSource = kod.GetDataTable("Select [LogoUrl] from [ayar]");
        RepeaterLogo.DataBind();

        RepeaterSonDakika.DataSource = kod.GetDataTable("SELECT TOP 5  *  FROM [Haberler]  Order BY Haberİd DESC  ");
        RepeaterSonDakika.DataBind();

        RepeaterKategori.DataSource = kod.GetDataTable("SELECT  *  FROM [Menu]  WHERE kosul='1'   ");
        RepeaterKategori.DataBind();

        RepeaterMenu.DataSource = kod.GetDataTable("SELECT  *  FROM [sayfalar]    ");
        RepeaterMenu.DataBind();

        // string SiteAdi = kod.getDataCell("Select [Firma_Adi] from footer");
        SiteAdi.InnerHtml= kod.getDataCell("Select [SiteAdi] from [ayar]");

        SiteKisaBilgi.InnerHtml = kod.getDataCell("Select [Kisa_Aciklama] from [footer]");
        p2.InnerHtml = kod.getDataCell("Select [misyon] from [footer]");
        p3.InnerHtml = kod.getDataCell("Select [vizyon] from [footer]");

        //RepeaterHizliMenu.DataSource = kod.GetDataTable("SELECT TOP 5  *  FROM [Menu]   WHERE kosul='1'  ");
        //RepeaterHizliMenu.DataBind();

        adres.InnerHtml = "  "+ kod.getDataCell("Select [Adres] from [footer]");
        mail.InnerHtml = "  " + kod.getDataCell("Select [e_Posta] from [footer]");
        tel.InnerHtml = "  " + kod.getDataCell("Select [Telefon] from [footer]");
        fax.InnerHtml = "  " + kod.getDataCell("Select [Fax] from [footer]");

        RepeaterFooterAlt.DataSource = kod.GetDataTable("SELECT *  FROM [ayar]   ");
        RepeaterFooterAlt.DataBind();

        
        RepeaterUstReklam.DataSource = kod.GetDataTable("SELECT *  FROM reklamlar  WHERE Reklam_Alani = 1 AND [Yayin_Durumu]=1");
        RepeaterUstReklam.DataBind();

    }
}

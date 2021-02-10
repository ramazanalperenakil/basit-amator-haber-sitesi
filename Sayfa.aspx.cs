using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sayfa : System.Web.UI.Page
{
    rehber kod = new rehber();
    protected void Page_Load(object sender, EventArgs e)
    {
        RepeaterSayfa.DataSource = kod.GetDataTable("SELECT   *  FROM [sayfalar]  WHERE [SayfaUrl] = '" + Request.QueryString[""] + "' ") ;
        RepeaterSayfa.DataBind();


        RepeaterYazilar.DataSource = kod.GetDataTable("SELECT TOP 2  *  FROM [Haberler] Order BY [Haberİd] DESC   ");
        RepeaterYazilar.DataBind();

        RepeaterEnCokOkunanlar.DataSource = kod.GetDataTable("SELECT TOP 6  *  FROM [Haberler] Order BY [OkumaSayisi] DESC   ");
        RepeaterEnCokOkunanlar.DataBind();
        RepeaterFacebook.DataSource = kod.GetDataTable("SELECT facebook FROM ayar");
        RepeaterFacebook.DataBind();
        RepeaterTwitter.DataSource = kod.GetDataTable("SELECT twitter FROM ayar");
        RepeaterTwitter.DataBind();

    }
}
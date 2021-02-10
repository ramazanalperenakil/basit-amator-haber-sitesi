using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Haber : System.Web.UI.Page
{
    rehber kod = new rehber();
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Form.Target = "_blank";
        string sssurl = kod.getDataCell("SELECT [SiteUrl] from ayar");

        Page.Title = kod.getDataCell("SELECT HaberBaslik  FROM [Haberler] WHERE [url] = '" + Request.QueryString[""] + "' ") +" "+ sssurl;

        RepeaterHaber.DataSource = kod.GetDataTable("SELECT *  FROM [Haberler] WHERE [url] = '" + Request.QueryString[""] + "' ");
        RepeaterHaber.DataBind();

        //Menü İsmi Düzgün Çekme

        string MenüİsmiUrl = kod.getDataCell("SELECT [Menu] FROM [Haberler] WHERE [MenuUrl]= '" + Request.QueryString[""] + "' ");

        string Menüİsim = kod.getDataCell("SELECT [MenuAdi] FROM [Menu] WHERE [url] = '" + MenüİsmiUrl + "' ");

        RepeaterFacebook.DataSource = kod.GetDataTable("SELECT facebook FROM ayar");
        RepeaterFacebook.DataBind();
        RepeaterTwitter.DataSource = kod.GetDataTable("SELECT twitter FROM ayar");
        RepeaterTwitter.DataBind();



        RepeaterYazilar.DataSource = kod.GetDataTable("SELECT TOP 2  *  FROM [Haberler] Order BY [Haberİd] DESC   ");
        RepeaterYazilar.DataBind();

        RepeaterEnCokOkunanlar.DataSource = kod.GetDataTable("SELECT TOP 6  *  FROM [Haberler] Order BY [OkumaSayisi] DESC   ");
        RepeaterEnCokOkunanlar.DataBind();

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        
        string site= kod.getDataCell("SELECT [SiteUrl] from ayar");
        string ShareUrl = "https://www.facebook.com/sharer/sharer.php?u=https://www." +  site + "/Haber.aspx?=" + Request.QueryString[""];

        Response.Redirect(ShareUrl);
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {

        string site = kod.getDataCell("SELECT [SiteUrl] from ayar");
        string ShareUrl = "https://twitter.com/intent/tweet?url=https://www." + site + "/Haber.aspx?=" + Request.QueryString[""];
        Response.Redirect(ShareUrl);

    }
}
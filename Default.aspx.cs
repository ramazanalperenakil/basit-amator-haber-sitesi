using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
public partial class _Default : System.Web.UI.Page
{
    rehber kod = new rehber();
    string urldoviz = "https://www.doviz.com";
    string euroaliskod = "//*[@id='narrow-table-with-flag']/tbody/tr[2]/td[2]";
    string dolaraliskod = "//*[@id='narrow-table-with-flag']/tbody/tr[1]/td[2]";
    string altincek = "//*[@id='narrow-table-with-flag']/tbody/tr[2]/td[2]";
    string bist = "//*[@id='_last_19155']";
    string bisturl = "https://tr.investing.com/indices/ise-100";

    protected void Page_Load(object sender, EventArgs e)
    {
        //////////LabelBist.Text = kod.vericek(bisturl, bist);

       
        



        string strUserAgent = Request.UserAgent.ToString().ToLower();
        if (strUserAgent != null)
        {
            if (Request.Browser.IsMobileDevice == true || strUserAgent.Contains("iphone") || strUserAgent.Contains("blackberry") || strUserAgent.Contains("mobile") || strUserAgent.Contains("windows ce") || strUserAgent.Contains("opera mini") || strUserAgent.Contains("palm"))
            {
                Response.Redirect("mobil.aspx");
            }
        }


        //RepeaterSayilar.DataSource = kod.GetDataTable("SELECT *  FROM [Haberler] ");
        //RepeaterSayilar.DataBind();

        //RepeaterResim.DataSource = kod.GetDataTable("SELECT  *  FROM [HaberGorselUrl] Order BY haber_id DESC  ");
        //RepeaterResim.DataBind();

        Page.Title = kod.getDataCell("SELECT [SiteAdi]  FROM [ayar]");

        RepeaterLink.DataSource = kod.GetDataTable("SELECT   *  FROM [Haberler] Order BY [Haberİd] DESC   ");
        RepeaterLink.DataBind();


        RepeaterFacebook.DataSource = kod.GetDataTable("SELECT facebook FROM ayar");
        RepeaterFacebook.DataBind();
        RepeaterTwitter.DataSource = kod.GetDataTable("SELECT twitter FROM ayar");
        RepeaterTwitter.DataBind();


        DataTable url = kod.GetDataTable("SELECT   *  FROM [Haberler] Order BY Haberİd DESC ");
        int ogeSayisi = 23;
        string ekle = "";

        for (int i = 1; i <= ogeSayisi; i++)
        {
            ekle += " <li><a /*href=''  target='_blank'*/ title='Habere Gitmek İçin Resme Tıklayın'>" + i + "</a></li>";



        }
        sa.InnerHtml = ekle;


        RepeaterYerel.DataSource = kod.GetDataTable("SELECT TOP 4  *  FROM [Haberler]  Order BY [Haberİd] DESC   ");
        RepeaterYerel.DataBind();

        RepeaterYazilar.DataSource = kod.GetDataTable("SELECT TOP 2  *  FROM [Haberler] Order BY [Haberİd] DESC   ");
        RepeaterYazilar.DataBind();

        RepeaterAsayis.DataSource = kod.GetDataTable("SELECT TOP 3  *  FROM [Haberler] Order BY [Haberİd] DESC   ");
        RepeaterAsayis.DataBind();


        //RepeaterEnCokOkunanlar.DataSource = kod.GetDataTable("SELECT TOP 6  *  FROM [Haberler] Order BY [OkumaSayisi] DESC   ");
        //RepeaterEnCokOkunanlar.DataBind();

        RepeaterSiyaset.DataSource = kod.GetDataTable("SELECT TOP 3 *  FROM [Haberler] Order BY [OkumaSayisi] DESC   ");
        RepeaterSiyaset.DataBind();


        RepeaterEkenomi.DataSource = kod.GetDataTable("SELECT TOP 3 *  FROM [Haberler] Order BY [OkumaSayisi] DESC   ");
        RepeaterEkenomi.DataBind();

        RepeaterSliderYanReklam.DataSource = kod.GetDataTable("SELECT *  FROM [reklamlar]  WHERE [Reklam_Alani] = 2  ");
        RepeaterSliderYanReklam.DataBind();

        RepeaterSliderAltReklam.DataSource = kod.GetDataTable("SELECT *  FROM [reklamlar]  WHERE [Reklam_Alani] = 3  ");
        RepeaterSliderAltReklam.DataBind();

        RepeaterReklamEnCokOkunanALt.DataSource = kod.GetDataTable("SELECT *  FROM [reklamlar]  WHERE [Reklam_Alani] = 4  ");
        RepeaterReklamEnCokOkunanALt.DataBind();

        RepeaterNamzaAlt.DataSource = kod.GetDataTable("SELECT *  FROM [reklamlar]  WHERE [Reklam_Alani] = 5  ");
        RepeaterNamzaAlt.DataBind();




    }






}
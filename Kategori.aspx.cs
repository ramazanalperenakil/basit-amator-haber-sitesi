using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Kategori : System.Web.UI.Page
{
    rehber kod = new rehber();
    protected void Page_Load(object sender, EventArgs e)
    {
        RepeaterKategorisel.DataSource = kod.GetDataTable("SELECT *  FROM [Haberler] Order BY Haberİd DESC   ");
        RepeaterKategorisel.DataBind();

        RepeaterYazilar.DataSource = kod.GetDataTable("SELECT TOP 2  *  FROM [Haberler] Order BY [Haberİd] DESC   ");
        RepeaterYazilar.DataBind();

        RepeaterEnCokOkunanlar.DataSource = kod.GetDataTable("SELECT TOP 6  *  FROM [Haberler] Order BY [OkumaSayisi] DESC   ");
        RepeaterEnCokOkunanlar.DataBind();

        RepeaterFacebook.DataSource = kod.GetDataTable("SELECT facebook FROM ayar");
        RepeaterFacebook.DataBind();
        RepeaterTwitter.DataSource = kod.GetDataTable("SELECT twitter FROM ayar");
        RepeaterTwitter.DataBind();

        if (Request.QueryString["tur"] != null)
        {
            RepeaterKategorisel.DataSource = kod.GetDataTable("SELECT *  FROM [Haberler]    WHERE [Menu] = '" + Request.QueryString["tur"] + "'    Order BY Haberİd DESC");
            RepeaterKategorisel.DataBind();

            baslik.InnerText = kod.getDataCell("select [MenuAdi] from Menu WHERE MenuUrl = '" + Request.QueryString["tur"] + "' ");


        }


        //RepeaterKategorisel.DataSource = kod.GetDataTable("SELECT *  FROM [Haberler] WHERE [url] = '" + Request.QueryString[""] + "' ");
        //RepeaterKategorisel.DataBind();
    }
}
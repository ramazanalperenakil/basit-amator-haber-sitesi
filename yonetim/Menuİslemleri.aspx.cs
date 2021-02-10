using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class yonetim_Menuİslemleri : System.Web.UI.Page
{
    rehber kod = new rehber();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Request.QueryString["id"] != null && Request.QueryString["islem"] == "sil")
            {
                kod.komut("delete from [Menu] where [menuİd]=" + Request.QueryString["id"].ToString());
                Response.Redirect("Menuİslemleri.aspx");

            }

            RepeaterKategorilerListele.DataSource = kod.GetDataTable("SELECT   *  FROM [Menu]  WHERE kosul = 0  ");
            RepeaterKategorilerListele.DataBind();

            if (Request.QueryString["id"] != null && Request.QueryString["islem"] == "duzenle")
            {
                PanelDuzenle.Visible = true;
                PanelEkle.Visible = false;
                DataRow dr = kod.GetDataRow("Select * from Menu WHERE [menuİd]=" + Request.QueryString["id"].ToString());
                txtGuncelle.Text = dr[1].ToString();
            }
        }
    }
    protected void btnHaberEkle_Click(object sender, EventArgs e)
    {
        try
        {
            string KategoriURL = txtKategoriAdi.Text;
            string url = kod.KodOlustur(KategoriURL);

            kod.komut("Insert Into Menu  (MenuAdi, MenuUrl, kosul) VALUES ('" + txtKategoriAdi.Text + "', '" + url + "' , 0 ) ");
            PanelBasarılı.Visible = true;
            RepeaterKategorilerListele.DataSource = kod.GetDataTable("SELECT   *  FROM [Menu]  WHERE kosul = 0  ");
            RepeaterKategorilerListele.DataBind();
            PanelBasarılı.Visible = true;
        }
        catch
        {

            PanelHata.Visible = true;
        }


    }

    protected void ButtonGuncelle_Click(object sender, EventArgs e)
    {
        string KategoriURL = txtGuncelle.Text;
        string url = kod.KodOlustur(KategoriURL);
        kod.komut("UPDATE Menu SET [MenuAdi] = '" + txtGuncelle.Text + "', MenuUrl = '" + url + "' WHERE [menuİd] =" + Request.QueryString["id"].ToString());
        PanelBasarılı.Visible = true;
        RepeaterKategorilerListele.DataSource = kod.GetDataTable("SELECT   *  FROM [Menu]  WHERE kosul = 0  ");
        RepeaterKategorilerListele.DataBind();
        PanelDuzenle.Visible = false;
        PanelEkle.Visible = true;

    }

    protected void Buttonİptal_Click(object sender, EventArgs e)
    {
        Response.Redirect("Menuİslemleri.aspx");

    }
}
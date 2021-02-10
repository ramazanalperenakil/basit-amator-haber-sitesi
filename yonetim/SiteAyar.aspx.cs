using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class yonetim_SiteAyar : System.Web.UI.Page
{
    rehber kod = new rehber();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        RepeaterLogo.DataSource = kod.GetDataTable("SELECT *  FROM ayar");
        RepeaterLogo.DataBind();
        if (!Page.IsPostBack)
        {

            DataRow dr = kod.GetDataRow("Select * from ayar");
            txtBAslik.Text = dr[1].ToString();
            txtURL.Text = dr[3].ToString();
        }

    }

    protected void ButtonLogoGuncelle_Click(object sender, EventArgs e)
    {
        PanelLogoAlan.Visible = false;
        PanelLogoGuncelle.Visible = true;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        PanelLogoAlan.Visible = true;
        PanelLogoGuncelle.Visible = false;
    }

    protected void ButtonGuncelle_Click(object sender, EventArgs e)
    {
        if (fuDosya.HasFile)
        {
            string url= "logo";
            string logo = kod.SliderKaydet(fuDosya, 341, 86, "/img/", url);
            kod.komut("UPDATE ayar SET SiteAdi = '"+txtBAslik.Text+ "' , LogoUrl = '"+ logo + "', SiteUrl='"+txtURL.Text+"'");
            PanelBasarılı.Visible = true;
        }
        else if(!fuDosya.HasFile)
        {
            kod.komut("UPDATE ayar SET SiteAdi = '" + txtBAslik.Text + "' ,  SiteUrl='" + txtURL.Text + "'");
            PanelBasarılı.Visible = true;
        }
        else
        {
            PanelHata.Visible = true;
        }

        if (PanelLogoGuncelle.Visible == true)
        {
            PanelLogoGuncelle.Visible = false;
            PanelLogoAlan.Visible = true;
            RepeaterLogo.DataSource = kod.GetDataTable("SELECT *  FROM ayar");
            RepeaterLogo.DataBind();
        }
    }
}
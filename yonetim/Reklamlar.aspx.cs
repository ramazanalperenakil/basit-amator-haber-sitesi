using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class yonetim_Reklamlar : System.Web.UI.Page
{
    rehber kod = new rehber();
    protected void Page_Load(object sender, EventArgs e)
    {
       
        
            RepeaterReklamlar.DataSource = kod.GetDataTable("SELECT *  FROM reklamlar");
            RepeaterReklamlar.DataBind();

        
      



        if (Request.QueryString["id"] != null && Request.QueryString["islem"] == "duzenle")
        {
            PanelReklamListele.Visible = false;
            PanelReklamDuzenle.Visible = true;
            RepeaterMevcutReklam.DataSource = kod.GetDataTable("Select * from [reklamlar] WHERE [reklam_id]=" + Request.QueryString["id"].ToString());
            RepeaterMevcutReklam.DataBind();
            if (!Page.IsPostBack)
            {
                DataRow dr = kod.GetDataRow("Select * from [reklamlar] WHERE [reklam_id]=" + Request.QueryString["id"].ToString());
                txtReklamUrl.Text = dr[2].ToString();
                RepeaterMevcutReklam.DataSource = kod.GetDataTable("Select * from [reklamlar] WHERE [reklam_id]=" + Request.QueryString["id"].ToString());
                RepeaterMevcutReklam.DataBind();

            }

        }



    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string url = txtReklamUrl.Text;
        string resimURL = "sa";
        if (Request.QueryString["id"] == "1")
        {
            if (fuDosya.HasFile)
            {
                resimURL = kod.SliderKaydet(fuDosya, 640, 90, "/img/reklam/", url);
                kod.komut("UPDATE [reklamlar] SET [Reklam_Resim_Url]='" + resimURL + "', [Reklam_Hedef_Url] = '" + txtReklamUrl.Text + "' , [Yayin_Durumu] = '" + ddlDurum.SelectedValue + "' WHERE [reklam_id]=" + Request.QueryString["id"].ToString());
                RepeaterMevcutReklam.DataSource = kod.GetDataTable("Select * from [reklamlar] WHERE [reklam_id]=" + Request.QueryString["id"].ToString());
                RepeaterMevcutReklam.DataBind();

                PanelBasarılı.Visible = true;
            }
            else
            {
                kod.komut("UPDATE [reklamlar] SET [Yayin_Durumu] = '" + ddlDurum.SelectedValue + "' WHERE [reklam_id]=" + Request.QueryString["id"].ToString());
                RepeaterMevcutReklam.DataSource = kod.GetDataTable("Select * from [reklamlar] WHERE [reklam_id]=" + Request.QueryString["id"].ToString());
                RepeaterMevcutReklam.DataBind();

                PanelBasarılı.Visible = true;
            }
            
            

        }
        else if (Request.QueryString["id"] == "2")
        {
            resimURL = kod.SliderKaydet(fuDosya, 295, 365, "/img/reklam/", url);
            kod.komut("UPDATE [reklamlar] SET [Reklam_Resim_Url]='" + resimURL + "', [Reklam_Hedef_Url] = '" + txtReklamUrl.Text + "' , [Yayin_Durumu] = '" + ddlDurum.SelectedValue + "' WHERE [reklam_id]=" + Request.QueryString["id"].ToString());
            RepeaterMevcutReklam.DataSource = kod.GetDataTable("Select * from [reklamlar] WHERE [reklam_id]=" + Request.QueryString["id"].ToString());
            RepeaterMevcutReklam.DataBind();

            PanelBasarılı.Visible = true;
        }
        else if (Request.QueryString["id"] == "3")
        {
            resimURL = kod.SliderKaydet(fuDosya, 1100, 90, "/img/reklam/", url);
            kod.komut("UPDATE [reklamlar] SET [Reklam_Resim_Url]='" + resimURL + "', [Reklam_Hedef_Url] = '" + txtReklamUrl.Text + "' WHERE [reklam_id]=" + Request.QueryString["id"].ToString());
            RepeaterMevcutReklam.DataSource = kod.GetDataTable("Select * from [reklamlar] WHERE [reklam_id]=" + Request.QueryString["id"].ToString());
            RepeaterMevcutReklam.DataBind();


            PanelBasarılı.Visible = true;
        }
        else if (Request.QueryString["id"] == "4")
        {
            resimURL = kod.SliderKaydet(fuDosya, 360, 250, "/img/reklam/", url);
            kod.komut("UPDATE [reklamlar] SET [Reklam_Resim_Url]='" + resimURL + "', [Reklam_Hedef_Url] = '" + txtReklamUrl.Text + "' WHERE [reklam_id]=" + Request.QueryString["id"].ToString());
            RepeaterMevcutReklam.DataSource = kod.GetDataTable("Select * from [reklamlar] WHERE [reklam_id]=" + Request.QueryString["id"].ToString());
            RepeaterMevcutReklam.DataBind();

            PanelBasarılı.Visible = true;
        }
        else if (Request.QueryString["id"] == "5")
        {
            resimURL = kod.SliderKaydet(fuDosya, 360, 250, "/img/reklam/", url);
            kod.komut("UPDATE [reklamlar] SET [Reklam_Resim_Url]='" + resimURL + "', [Reklam_Hedef_Url] = '" + txtReklamUrl.Text + "' WHERE [reklam_id]=" + Request.QueryString["id"].ToString());

            PanelBasarılı.Visible = true;
            RepeaterMevcutReklam.DataSource = kod.GetDataTable("Select * from [reklamlar] WHERE [reklam_id]=" + Request.QueryString["id"].ToString());
            RepeaterMevcutReklam.DataBind();
        }



    }

}
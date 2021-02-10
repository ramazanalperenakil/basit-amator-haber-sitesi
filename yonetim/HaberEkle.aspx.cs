using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class yonetim_HaberEkle : System.Web.UI.Page
{
    rehber kod = new rehber();
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!Page.IsPostBack)
        //{
        //    DataTable dt = kod.GetDataTable("Select * from Menu WHERE kosul= 1");
        //    DropDownListMenu.DataSource = dt;
        //    DropDownListMenu.DataValueField = "MenuUrl";
        //    DropDownListMenu.DataTextField = "MenuAdi";
        //    DropDownListMenu.DataBind();

           
        //}
        //else
        //{
        //    PanelHata.Visible = false;
        //}
    }

    protected void btnHaberEkle_Click(object sender, EventArgs e)
    {
      
   //         string resimAdi = txtHaberBaslik.Text;
   //         string donuştur = resimAdi;
			//string kontrolanametin = kod.Tirnak(txtHaberİcerik.Text);
			//string kontrolozet = kod.Tirnak(txtHaberOzet.Text);
   //         if (fuDosya.HasFile)
   //         {
   //             string url = kod.KodOlustur(donuştur);
   //             string haberResim = kod.SliderKaydet(fuDosya, 800, 350, "/img/HaberResim/slider/", url);
   //             kod.komut("Insert Into Haberler (HaberBaslik , HaberOnu , Haberİcerik , YayinlanmaTarihi , Menu , Yazar , HaberDurum , OkumaSayisi , url , HaberGorselUrl , Kategori ) VALUES ('" + txtHaberBaslik.Text + "' , '" + kontrolozet + "' , '" + kontrolanametin + "' , '" + DateTime.Now.ToString("MM / dd / yyyy").ToString() + "' , '" + DropDownListMenu.SelectedValue + "' , 'ramazan' , '" + ddlDurum.SelectedValue + "' , '10' , '" + url + "' , '" + haberResim + "' , '" + DropDownListMenu.SelectedItem.Text + "') ");
   //             PanelBasarılı.Visible = true;


   //         }
   //         else
   //         {
   //             PanelHata.Visible = true;
   //         }
        
        
        
    }

   
}
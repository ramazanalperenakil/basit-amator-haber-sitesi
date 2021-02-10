using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class yonetim_HaberDuzenle : System.Web.UI.Page
{
    rehber kod = new rehber();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            string kategorisi = kod.getDataCell("Select [Menu] from Haberler WHERE [Haberİd]=" + Request.QueryString["id"].ToString());

            DataTable dt = kod.GetDataTable("Select * from Menu WHERE kosul= 1 AND MenuUrl != '"+ kategorisi + "'");
            DropDownListMenu.DataSource = dt;
            DropDownListMenu.DataValueField = "MenuUrl";
            DropDownListMenu.DataTextField = "MenuAdi";

            DropDownListMenu.DataBind();
       


        DataRow dr = kod.GetDataRow("Select * from Haberler WHERE [Haberİd]=" + Request.QueryString["id"].ToString());
            txtHaberBaslik.Text = dr[1].ToString();
            txtHaberOzet.Text = dr[2].ToString();
            txtHaberİcerik.Text = dr[3].ToString();
            //DropDownListMenu.Items.Add(dr[11].ToString() );
            DropDownListMenu.SelectedItem.Text= dr[11].ToString();

            ddlDurum.SelectedValue = dr[7].ToString();

            Repeater1.DataSource = kod.GetDataTable("SELECT [HaberGorselUrl]  FROM [Haberler] WHERE [Haberİd]=" + Request.QueryString["id"].ToString());
            Repeater1.DataBind();
        }


    }

    protected void btnHaberEkle_Click(object sender, EventArgs e)
    {
        string resimAdi = txtHaberBaslik.Text;
        string donuştur = resimAdi;

        string url = kod.KodOlustur(donuştur);
       
        if (fuDosya.HasFile)
        {
            string haberResim = kod.SliderKaydet(fuDosya, 800, 350, "/img/HaberResim/slider/", url);

            kod.komut("UPDATE Haberler set HaberBaslik ='"+txtHaberBaslik.Text+ "' ,  HaberOnu = '"+txtHaberOzet.Text+ "' , Haberİcerik = '"+txtHaberİcerik.Text+ "' , Menu = '"+ DropDownListMenu.SelectedValue + "' , HaberDurum = '"+ ddlDurum.SelectedValue + "' , HaberGorselUrl = '"+ haberResim + "' , Kategori = '"+ DropDownListMenu.SelectedItem.Text + "'WHERE Haberİd=" + Request.QueryString["id"].ToString());
            PanelBasarılı.Visible = true;

        }
        else
        {
            kod.komut("UPDATE Haberler set HaberBaslik ='" + txtHaberBaslik.Text + "' ,  HaberOnu = '" + txtHaberOzet.Text + "' , Haberİcerik = '" + txtHaberİcerik.Text + "' , Menu = '" + DropDownListMenu.SelectedValue + "' , HaberDurum = '" + ddlDurum.SelectedValue + "' ,  Kategori = '" + DropDownListMenu.SelectedItem.Text + "'WHERE Haberİd=" + Request.QueryString["id"].ToString());
            PanelBasarılı.Visible = true;
        }
    }
}
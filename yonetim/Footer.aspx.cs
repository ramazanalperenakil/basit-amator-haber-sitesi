using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class yonetim_Footer : System.Web.UI.Page
{
    rehber kod = new rehber();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            DataRow dr = kod.GetDataRow("Select * from [footer]");
            txtHakkimizdaKisa.Text = dr[1].ToString();
            txtMisyon.Text = dr[8].ToString();
            txtVizyon.Text = dr[7].ToString();
            txtAdres.Text = dr[2].ToString();
            txtEposta.Text = dr[3].ToString();
            txtFax.Text = dr[5].ToString();
            txtTel.Text=dr[4].ToString();

        }

    }

    protected void btnHaberEkle_Click(object sender, EventArgs e)
    {
        kod.getDataCell("UPDATE [footer] SET [Kisa_Aciklama]='"+txtHakkimizdaKisa.Text+ "', [Adres]='"+txtAdres.Text+ "' , [e_Posta]='"+txtEposta.Text+ "', [Telefon]='"+txtTel.Text+ "' , [Fax]='"+txtFax.Text+ "', [vizyon]= '"+txtVizyon.Text+ "', [misyon]='"+txtMisyon.Text+"'");
        PanelBasarılı.Visible = true;
    }
}
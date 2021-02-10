using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class yonetim_SosyalMedyaBilgileri : System.Web.UI.Page
{
    rehber kod = new rehber();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {

            DataRow dr = kod.GetDataRow("Select * from ayar");
            txtfacebook.Text = dr[4].ToString();
            txttwitter.Text = dr[5].ToString();
        }

    }

    protected void ButtonSosyalMedya_Click(object sender, EventArgs e)
    {
        kod.komut("UPDATE [ayar] SET [facebook] = '"+txtfacebook.Text+ "' , [twitter]='"+txttwitter.Text+"'");
        PanelBasarılı.Visible=true;
    }
}
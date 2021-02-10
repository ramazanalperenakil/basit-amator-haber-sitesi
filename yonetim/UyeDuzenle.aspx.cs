using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class yonetim_UyeDuzenle : System.Web.UI.Page
{
    rehber kod = new rehber();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            DataRow dr = kod.GetDataRow("Select * from [kullanici] WHERE [kullanici_id]=" + Request.QueryString["id"].ToString());
            txtad.Text = dr[1].ToString();
            txteposta.Text = dr[2].ToString();

            //RepeaterSayfaResim.DataSource = kod.GetDataTable("SELECT [SayfaResim] FROM [sayfalar] WHERE [sayfa_id]=" + Request.QueryString["id"].ToString());
            //RepeaterSayfaResim.DataBind();



        }
    }
}
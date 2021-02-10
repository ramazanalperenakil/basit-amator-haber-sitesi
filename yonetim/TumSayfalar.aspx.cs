using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class yonetim_TumSayfalar : System.Web.UI.Page
{
    rehber kod = new rehber();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null && Request.QueryString["islem"] == "sil")
        {
            kod.komut("delete from [sayfalar] where [sayfa_id]=" + Request.QueryString["id"].ToString());
            Response.Redirect("TumSayfalar.aspx");

        }
        RepeaterTumSayfalarListele.DataSource = kod.GetDataTable("SELECT   *  FROM [sayfalar]    ");
        RepeaterTumSayfalarListele.DataBind();
    }
}
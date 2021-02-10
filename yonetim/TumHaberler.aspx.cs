using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class yonetim_TumHaberler : System.Web.UI.Page
{
    rehber kod = new rehber();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null && Request.QueryString["islem"] == "sil")
        {
            kod.komut("delete from [Haberler] where [Haberİd]=" + Request.QueryString["id"].ToString());
            Response.Redirect("TumHaberler.aspx");

        }

        RepeaterTumHaberlerListele.DataSource = kod.GetDataTable("SELECT   *  FROM [Haberler]  Order BY Haberİd DESC  ");
        RepeaterTumHaberlerListele.DataBind();
    }
}
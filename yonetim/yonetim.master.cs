using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class yonetim_yonetim : System.Web.UI.MasterPage
{
    rehber kod = new rehber();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["kullanici"] == null)
        {
            Response.Redirect("Giris.aspx");
        }

        RepeaterUserLogo.DataSource = kod.GetDataTable("SELECT *  FROM kullanici ");
        RepeaterUserLogo.DataBind();
    }
}

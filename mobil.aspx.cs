using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mobil : System.Web.UI.Page
{
    rehber kod = new rehber();
    protected void Page_Load(object sender, EventArgs e)
    {

        RepeaterMobil.DataSource = kod.GetDataTable("SELECT   *  FROM [Haberler] Order BY [Haberİd] DESC   ");
        RepeaterMobil.DataBind();
    }
}
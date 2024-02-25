using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AffiliateProgram : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.MetaKeywords = "Affiliate Program,Affiliate Program website,Affiliate Program information,Affiliate Program online,mf power Affiliate Program,join Affiliate Program,register Affiliate Program,Affiliate marketing,369 Affiliate Program";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }
}
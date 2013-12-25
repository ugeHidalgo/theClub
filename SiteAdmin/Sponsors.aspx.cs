using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TheClubBDModel;

public partial class SiteAdmin_Sponsors : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (TheClubBDEntities myEnt = new TheClubBDEntities())
        {
            var allSponsors = from sp in myEnt.Sponsors
                              orderby sp.FechaAlta
                              select sp;
            GridView1.DataSource = allSponsors;
            GridView1.DataBind();
        }
    }
}
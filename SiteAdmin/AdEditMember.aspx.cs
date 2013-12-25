using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SiteAdmin_AdEditMember : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString.Get("MemberID") != null)
        {
            DetailsView1.DefaultMode = DetailsViewMode.Edit;
        }
    }
 
    protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        if (e.Exception == null)
        {
            EnEditing();        
        }
    }

    protected void DetailsView1_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        if (e.Exception == null)
        {
            EnEditing();
        }
    }

    private void EnEditing()
    {
        Response.Redirect("Members.aspx");
    }
    protected void DetailsView1_ModeChanged(object sender, EventArgs e)
    {
        EnEditing();
    }
}
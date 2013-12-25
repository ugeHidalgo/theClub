using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TheClubBDModel;

public partial class SiteAdmin_Members : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void MemberDetailsView_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        MembersGridView.DataBind();     
    }
    protected void MemberDetailsView_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
    {
        MembersGridView.DataBind(); 
    }
    protected void MemberDetailsView_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        MembersGridView.DataBind(); 
    }
}
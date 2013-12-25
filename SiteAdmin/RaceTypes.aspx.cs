using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TheClubBDModel;

public partial class SiteAdmin_RaceTypes : System.Web.UI.Page
{
    static Int32 _Id;
    static Int32 LastPos;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        using (TheClubBDEntities myEnt = new TheClubBDEntities())
        {
            if (!Page.IsPostBack)
            {
                var aRaceType = (from rt in myEnt.RaceTypes
                                 select rt).FirstOrDefault();

                if (aRaceType == null)
                {
                    _Id = -1;
                    LastPos = -1;
                }
                else
                {
                    _Id = aRaceType.Id;
                    LastPos = _Id;
                    txbxNombre.Text = aRaceType.Name;
                    txbxPuntos.Text = aRaceType.PuntosPart.ToString();
                    txbxMemo.Text = aRaceType.Memo;
                }
            }
        }
    }
    protected void imgBtnNew_Click(object sender, ImageClickEventArgs e)
    {
        _Id = -1;
        txbxMemo.Text = "";
        txbxNombre.Text = "";
        txbxPuntos.Text = "";
        SetEditMode();
    }
    protected void imgBtnEdit_Click(object sender, ImageClickEventArgs e)
    {
        SetEditMode();
    }
    protected void imgBtnSave_Click(object sender, ImageClickEventArgs e)
    {
        using (TheClubBDEntities myEntities = new TheClubBDEntities())
        {
            RaceType aRaceType;
            if (_Id == -1) //Save new
            {
                aRaceType = new RaceType();
                myEntities.RaceTypes.AddObject(aRaceType);
            }
            else
            {
                aRaceType = (from r in myEntities.RaceTypes
                             where r.Id == _Id
                             select r).Single();               
            }
            aRaceType.Name = txbxNombre.Text;
            aRaceType.PuntosPart = Int32.Parse(txbxPuntos.Text);
            aRaceType.Memo = txbxMemo.Text;
            LastPos = _Id;
            myEntities.SaveChanges();

            GridView1.DataBind();

            setNormalMode();
        }
    }
    protected void imgBtnCancel_Click(object sender, ImageClickEventArgs e)
    {
        using (TheClubBDEntities myEnt = new TheClubBDEntities())
        {
            var aRaceType = (from rt in myEnt.RaceTypes
                             orderby rt.Name ascending
                             where rt.Id == LastPos
                             select rt).SingleOrDefault();

            if (aRaceType == null)
            {
                _Id = -1;
                LastPos = -1;
            }
            else
            {
                _Id = aRaceType.Id;
                txbxNombre.Text = aRaceType.Name;
                txbxPuntos.Text = aRaceType.PuntosPart.ToString();
                txbxMemo.Text = aRaceType.Memo;
            }
            setNormalMode();
        }
    }
    protected void imgBtnDelete_Click(object sender, ImageClickEventArgs e)
    {
        using (TheClubBDEntities myEntities = new TheClubBDEntities())
        {
            var aRaceType = (from r in myEntities.RaceTypes
                             where r.Id == _Id
                             select r).Single();


            myEntities.RaceTypes.DeleteObject(aRaceType);
            myEntities.SaveChanges();
        }
        GridView1.DataBind();
        setNormalMode();
    }
    protected void imgBtnFirst_Click(object sender, ImageClickEventArgs e)
    {
        using (TheClubBDEntities myEnt = new TheClubBDEntities())
        {

            var aRaceType = (from rt in myEnt.RaceTypes
                             orderby rt.Name ascending
                             select rt).FirstOrDefault();

            if (aRaceType == null)
                _Id = -1;
            else
            {                
                _Id = aRaceType.Id;
                LastPos = _Id;
                txbxNombre.Text = aRaceType.Name;
                txbxPuntos.Text = aRaceType.PuntosPart.ToString();
                txbxMemo.Text = aRaceType.Memo;
            }
        }
    }
    protected void imgBtnPrevious_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void imgBtnNext_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void imgBtnLast_Click(object sender, ImageClickEventArgs e)
    {
        using (TheClubBDEntities myEnt = new TheClubBDEntities())
        {

            var aRaceType = (from rt in myEnt.RaceTypes
                             orderby rt.Name descending
                             select rt).FirstOrDefault();

            if (aRaceType == null)
                _Id = -1;
            else
            {
                _Id = aRaceType.Id;
                LastPos = _Id;
                txbxNombre.Text = aRaceType.Name;
                txbxPuntos.Text = aRaceType.PuntosPart.ToString();
                txbxMemo.Text = aRaceType.Memo;
            }
        }
    }

    public void SetEditMode()
    {
        imgBtnNew.Enabled = false;
        imgBtnEdit.Enabled = false;
        imgBtnSave.Enabled = true;
        imgBtnCancel.Enabled = true;
        imgBtnDelete.Enabled = false;
    }
    public void setNormalMode()
    {
        imgBtnNew.Enabled = true;
        imgBtnEdit.Enabled = true;
        imgBtnSave.Enabled = false;
        imgBtnCancel.Enabled = false;
        imgBtnDelete.Enabled = true;
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        _Id = Int32.Parse(GridView1.SelectedRow.Cells[1].Text);
        LastPos = _Id;
        txbxNombre.Text = GridView1.SelectedRow.Cells[2].Text;
        txbxPuntos.Text = GridView1.SelectedRow.Cells[3].Text;
        txbxMemo.Text = GridView1.SelectedRow.Cells[4].Text;
        setNormalMode();
    }
}
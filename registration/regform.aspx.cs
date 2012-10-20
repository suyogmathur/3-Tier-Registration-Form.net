using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using ProjectBLL;
using ProjectDAL;

public partial class regform : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        panregform.Visible = false;
        panusergrid.Visible = true;
        getuserinfo();
    }


    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        regformbll objbll = new regformbll();
        objbll._first_name = txtfname.Text;
        objbll._last_name = txtlname.Text;
        objbll._address = txtaddress.Text;
        objbll._bank_account = txtbankaccountno.Text;
        objbll._email = txtemail.Text;
        objbll._location = txtcurrlocation.Text;
        objbll._mobile = txtmobile.Text;
        objbll._nationality = txtnation.Text;
        objbll._pan_no = txtpan.Text;
        objbll._phone = txtphone.Text;

        objbll._gender = int.Parse(radiosex.SelectedValue.ToString());
        regformdal2 objdal = new regformdal2();
        int Output = objdal.settask(objbll);
        lblerror.Text = "Add New User Successfully";
        getuserinfo();
        panusergrid.Visible = true;
        panregform.Visible = false;
    }

    public void getuserinfo()
    {
        regformdal2 objbdal = new regformdal2();
        DataTable dt = objbdal.GetUsercInfo();
        griduserinfor.DataSource = dt;
        griduserinfor.DataBind();
    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
        txtfname.Text = string.Empty;
        txtlname.Text = string.Empty;
        txtaddress.Text = string.Empty;
        txtphone.Text = string.Empty;
        txtpan.Text = string.Empty;
        txtnation.Text = string.Empty;
        txtmobile.Text = string.Empty;
        txtcurrlocation.Text = string.Empty;
        txtbankaccountno.Text = string.Empty;
        txtcurrlocation.Text = string.Empty;
        txtemail.Text = string.Empty;
        radiosex.SelectedIndex = -1;
    }



    protected void griduserinfor_RowCancelingEdit1(object sender, GridViewCancelEditEventArgs e)
    {
        griduserinfor.EditIndex = -1;
        getuserinfo();
       
    }

    protected void griduserinfor_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
    }

    protected void griduserinfor_RowEditing(object sender, GridViewEditEventArgs e)
    {
        griduserinfor.EditIndex = e.NewEditIndex;
        getuserinfo();
      
    }

    protected void griduserinfor_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

    }
    protected void griduserinfor_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        griduserinfor.PageIndex = e.NewPageIndex;
        getuserinfo();
       
    }
   
    protected void addnewuser_Click(object sender, EventArgs e)
    {
        panregform.Visible = true;
        panusergrid.Visible = false;
        txtfname.Text = string.Empty;
        txtlname.Text = string.Empty;
        txtaddress.Text = string.Empty;
        txtphone.Text = string.Empty;
        txtpan.Text = string.Empty;
        txtnation.Text = string.Empty;
        txtmobile.Text = string.Empty;
        txtcurrlocation.Text = string.Empty;
        txtbankaccountno.Text = string.Empty;
        txtcurrlocation.Text = string.Empty;
        txtemail.Text = string.Empty;
        radiosex.SelectedIndex = -1;
    }
}
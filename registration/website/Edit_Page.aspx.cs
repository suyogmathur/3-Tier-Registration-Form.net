using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DAL;

/// <summary>
/// contains all events and methods related to this page
/// </summary>
public partial class Edit_Page : System.Web.UI.Page
{
    /// <summary>
    /// method for fill the form of selected user id
    /// </summary>
    /// <param name="id">id of selected user</param>
    public void Setvalue(int id)
    {
        Methods_BLL obj = new Methods_BLL();
        DataSet ds = obj.GetUserDetailsForEdit(id);
        TxtFirstName.Text = ds.Tables[0].Rows[0]["first_name"].ToString();
        TxtLastname.Text = ds.Tables[0].Rows[0]["last_name"].ToString();
        TxtAddress.Text = ds.Tables[0].Rows[0]["address"].ToString();
        TxtDate.Text = ds.Tables[0].Rows[0]["date"].ToString();
        TxtBankAccountNo.Text = ds.Tables[0].Rows[0]["bank_account"].ToString();
        TxtCurrentLocation.Text = ds.Tables[0].Rows[0]["location"].ToString();
        TxtEmailId.Text = ds.Tables[0].Rows[0]["email"].ToString();
        TxtMobileNo.Text = ds.Tables[0].Rows[0]["mobile"].ToString();
        TxtNationality.Text = ds.Tables[0].Rows[0]["nationality"].ToString();
        TxtPanNo.Text = ds.Tables[0].Rows[0]["pan_no"].ToString();
        TxtPhoneNo.Text = ds.Tables[0].Rows[0]["phone"].ToString();
        this.ViewState["Ïd"] = this.Session["id"];
        this.EnableViewState = false;
    }

    /// <summary>
    /// display the content when page is refresh
    /// </summary>
    /// <param name="sender">sender</param>
    /// <param name="e">EventArgs e</param>
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            this.Setvalue(int.Parse(Session["id"].ToString()));
        }
    }

    /// <summary>
    /// reset all the fields of form
    /// </summary>
    /// <param name="sender">reset the form</param>
    /// <param name="e"> EventArgs e</param>
    protected void BtnReset_Click(object sender, EventArgs e)
    {
        TxtFirstName.Text = string.Empty;
        TxtLastname.Text = string.Empty;
        TxtAddress.Text = string.Empty;
        TxtDate.Text = string.Empty;
        TxtPhoneNo.Text = string.Empty;
        TxtPanNo.Text = string.Empty;
        TxtNationality.Text = string.Empty;
        TxtMobileNo.Text = string.Empty;
        TxtCurrentLocation.Text = string.Empty;
        TxtBankAccountNo.Text = string.Empty;
        TxtEmailId.Text = string.Empty;
        RadioGender.SelectedIndex = -1;
    }

    /// <summary>
    /// click event of submit button which update user information
    /// </summary>
    /// <param name="sender">update the form</param>
    /// <param name="e"> EventArgs e</param>
    protected void BtnUpdate_Click(object sender, EventArgs e)
    {
        regformbll objbll = new regformbll();
        objbll.Id = Convert.ToInt32(this.Session["id"]);
        objbll.First_Name = TxtFirstName.Text;
        objbll.Last_Name = TxtLastname.Text;
        objbll.Address = TxtAddress.Text;
        objbll.Date = DateTime.Parse(TxtDate.Text.Substring(6, 4) + "/" + TxtDate.Text.Substring(3, 2) + "/" + TxtDate.Text.Substring(0, 2));
        objbll.Bank_Account = TxtBankAccountNo.Text;
        objbll.Email = TxtEmailId.Text;
        objbll.Current_Location = TxtCurrentLocation.Text;
        objbll.Mobile = TxtMobileNo.Text;
        objbll.Nationality = TxtNationality.Text;
        objbll.Pan_No = TxtPanNo.Text;
        objbll.Phone = TxtPhoneNo.Text;
        objbll.Gender = int.Parse(RadioGender.SelectedValue.ToString());
        Methods_BLL objdal = new Methods_BLL();
        int output = objdal.UpdateUserinfo(objbll);
        this.Session["id"] = null;
        Response.Redirect("regform.aspx");
    }
}
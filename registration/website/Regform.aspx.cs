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
/// initialize partial class 
/// </summary>
public partial class regform : System.Web.UI.Page
{
    /// <summary>
    /// GridView bind function
    /// </summary>
    public void GetUserInfo()
    {
        Methods_BLL obj = new Methods_BLL();
        DataTable dt = obj.GetUserDetails();
        GridUserInfo.DataSource = dt;
        GridUserInfo.DataBind();
    }

    /// <summary>
    /// code for paging in GridView
    /// </summary>
    /// <param name="sender">use of Paging </param>
    /// <param name="e"> GridViewPageEventArgs e</param>
    protected void GridUserInfo_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridUserInfo.PageIndex = e.NewPageIndex;
        this.GetUserInfo();
    }

    /// <summary>
    /// code for cancel link in GridView
    /// </summary>
    /// <param name="sender">Cancel Edit Function </param>
    /// <param name="e"> GridViewCancelEditEventArgs e </param>
    protected void GridUserInfo_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridUserInfo.EditIndex = -1;
        this.GetUserInfo();
    }

    /// <summary>
    /// detect the particular LinkButton was clicked
    /// </summary>
    /// <param name="sender">sends clue about clicked LinkButton</param>
    /// <param name="e">GridViewCommandEventArgs e</param>
    protected void GridUserInfo_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "FirstName")
        {
            this.Session["id"] = e.CommandArgument.ToString();
            Response.Redirect("Edit_Page.aspx");
        }
    }

    /// <summary>
    /// code for delete link in GridView
    /// </summary>
    /// <param name="sender">Delete a Row </param>
    /// <param name="e">GridViewDeleteEventArgs e </param>
    protected void GridUserInfo_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label lblid = (Label)GridUserInfo.Rows[e.RowIndex].FindControl("LblId");
        int id = Convert.ToInt32(lblid.Text);
        Methods_BLL obj = new Methods_BLL();
        int output = obj.DeleteUserinfo(id);
        this.GetUserInfo();
    }

    /// <summary>
    /// insert registration form in database
    /// </summary>
    /// <param name="sender"> Submit the registration form in database</param>
    /// <param name="e">EventArgs e</param>
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        regformbll objbll = new regformbll();
        objbll.First_Name = TxtFirst_Name.Text;
        objbll.Last_Name = TxtLast_Name.Text;
        objbll.Address = Txt_Address.Text;
        objbll.Date = DateTime.Parse(Txt_Date.Text.Substring(6, 4) + "/" + Txt_Date.Text.Substring(3, 2) + "/" + Txt_Date.Text.Substring(0, 2));
        objbll.Bank_Account = Txt_BankAccountNo.Text;
        objbll.Email = Txt_Email.Text;
        objbll.Current_Location = Txt_CurrentLocation.Text;
        objbll.Mobile = Txt_Mobile.Text;
        objbll.Nationality = Txt_Nationality.Text;
        objbll.Pan_No = Txt_PanNo.Text;
        objbll.Phone = Txt_Phone.Text;
        objbll.Gender = int.Parse(Radio_Gender.SelectedValue.ToString());
        Methods_BLL objdal = new Methods_BLL();
        int output = objdal.Settask(objbll);
        lblerror.Text = "Add New User Successfully";
        this.GetUserInfo();
        panusergrid.Visible = true;
        panregform.Visible = false;
    }

    /// <summary>
    /// reset button for registration form
    /// </summary>
    /// <param name="sender">Reset all fields in form</param>
    /// <param name="e"> EventArgs e</param>
    protected void BtnReset_Click(object sender, EventArgs e)
    {
        TxtFirst_Name.Text = string.Empty;
        TxtLast_Name.Text = string.Empty;
        Txt_Address.Text = string.Empty;
        Txt_Date.Text = string.Empty;
        Txt_Phone.Text = string.Empty;
        Txt_PanNo.Text = string.Empty;
        Txt_Nationality.Text = string.Empty;
        Txt_Mobile.Text = string.Empty;
        Txt_CurrentLocation.Text = string.Empty;
        Txt_BankAccountNo.Text = string.Empty;
        Txt_Email.Text = string.Empty;
        Radio_Gender.SelectedIndex = -1;
        panregform.Visible = true;
        panusergrid.Visible = false;
    }

    /// <summary>
    /// Redirect to Registration Page 
    /// </summary>
    /// <param name="sender">Add New User Button </param>
    /// <param name="e"> EventArgs e</param>
    protected void AddNewUser_Click(object sender, EventArgs e)
    {
        panregform.Visible = true;
        panusergrid.Visible = false;
        TxtFirst_Name.Text = string.Empty;
        TxtLast_Name.Text = string.Empty;
        Txt_Address.Text = string.Empty;
        Txt_Date.Text = string.Empty;
        Txt_Phone.Text = string.Empty;
        Txt_PanNo.Text = string.Empty;
        Txt_Nationality.Text = string.Empty;
        Txt_Mobile.Text = string.Empty;
        Txt_CurrentLocation.Text = string.Empty;
        Txt_BankAccountNo.Text = string.Empty;
        Txt_Email.Text = string.Empty;
        Radio_Gender.SelectedIndex = -1;
    }

    /// <summary>
    /// show user details in GridView on page load
    /// </summary>
    /// <param name="sender">Initialize Page Load Event</param>
    /// <param name="e">EventArgs e</param>
    protected void Page_Load(object sender, EventArgs e)
    {
        panregform.Visible = false;
        panusergrid.Visible = true;
        if (!this.IsPostBack)
        {
            this.GetUserInfo();
        }
    }
}
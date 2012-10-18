<%@ Page Language="C#" AutoEventWireup="true" CodeFile="regform.aspx.cs" Inherits="regform" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Detail_Input</title>
    <link href="Styles/Style.css" rel="stylesheet" type="text/css" />
    <script language="javascript" type="text/javascript">

        function checkfield() {
            var star = "";
            var check = 0;

            if (document.getElementById("txtfname").value == "") {
                star += "Enter First Name \n";
                check = 1;
            }
            if (document.getElementById("txtlname").value == "") {
                star += "Enter Last Name \n";
                check = 1;
            }
            if (document.getElementById("txtaddress").value == "") {
                star += "Enter your address \n";
                check = 1;
            }
            if (document.getElementById("txtphone").value == "") {
                star += "Enter Phone No. \n";
                check = 1;
            }
            if (document.getElementById("txtmobile").value == "") {
                star += "Enter Mobile No. \n";
                check = 1;
            }
            if (document.getElementById("txtaccount").value == "") {
                star += "Enter your Account No. id \n";
                check = 1;
            }
            if (document.getElementById("txtpan").value == "") {
                star += "Enter your PAN No. \n";
                check = 1;
            }
            if (document.getElementById("txtemail").value == "") {
                star += "Select your Email ID \n";
                check = 1;
            }
            if (document.getElementById("txtlocation").value == "") {
                star += "Select your Current Location \n";
                check = 1;
            }
            if (document.getElementById("txtnational").value == "") {
                star += "Select your Nation \n";
                check = 1;
            }

            if (check == 1) {
                alert(star);
                return false;
            }
            else {
                return true;
            }
        }

        function cancel() {
            document.getElementById("txtfname").value = "";
            document.getElementById("txtlname").value = "";
            document.getElementById("txtaddress").value = "";
            document.getElementById("txtphone").value = "";
            document.getElementById("txtmobile").value = "";
            document.getElementById("txtaccount").value = "";
            document.getElementById("txtpan").value = "";
            document.getElementById("txtemail").value = "";
            document.getElementById("txtlocation").value = "";
            document.getElementById("txtnational").value = "";
        }

        function changetoyellow(id) {
            document.getElementById(id).className = "forminput2";
        }

        function backtoorig(id) {
            document.getElementById(id).className = "forminput1";
        }

 
    </script>
    <style type="text/css">
        .GridviewDiv
        {
            font-size: 100%;
            font-family: 'Lucida Grande' , 'Lucida Sans Unicode' , Verdana, Arial, Helevetica, sans-serif;
            color: #303933;
        }
        Table.Gridview
        {
            border: solid 1px #df5015;
        }
        .GridviewTable
        {
            border: none;
        }
        .GridviewTable td
        {
            margin-top: 0;
            padding: 0;
            vertical-align: middle;
        }
        .GridviewTable tr
        {
            color: White;
            background-color: #df5015;
            height: 30px;
            text-align: center;
        }
        .Gridview th
        {
            color: Red;
            border-right-color: #abb079;
            border-bottom-color: #abb079;
            padding: 0.5em 0.5em 0.5em 0.5em;
            text-align: center;
        }
        .Gridview td
        {
            border-bottom-color: #f0f2da;
            border-right-color: #f0f2da;
            padding: 0.5em 0.5em 0.5em 0.5em;
        }
        .Gridview tr
        {
            color: Black;
            background-color: White;
            text-align: left;
        }
        :link, :visited
        {
            color: #DF4F13;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Panel ID="panregform" Visible="true" runat="server">
        <div class="page">
            <div class="detailSection">
                <h3>
                    <b>PERSONAL DETAILS</b></h3>
            </div>
            <div class="detail">
                <div class="details">
                    <div class="info">
                        First Name :</div>
                    <div class="info_input">
                        <%-- <input type="text" id="txtfname" class="forminput1" value="" onfocus="changetoyellow(this.id);"
                        onblur="backtoorig(this.id);" />--%>
                        <asp:TextBox ID="txtfname" CssClass="forminput1" runat="server"></asp:TextBox>
                       
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                            ControlToValidate="txtfname" ErrorMessage="RequiredFieldValidator" 
                            ondatabinding="btnsubmit_Click"></asp:RequiredFieldValidator>
                    </div>
                    <div class="info">
                        Last Name :</div>
                    <div class="info_input">
                        <asp:TextBox ID="txtlname" CssClass="forminput1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" EnableClientScript="true"
                            SetFocusOnError="true" runat="server" ControlToValidate="txtlname" Text="*" ErrorMessage="Enter Your Last Name"></asp:RequiredFieldValidator>
                    </div>
                    <div class="info">
                        Address :</div>
                    <div class="info_input">
                        <asp:TextBox ID="txtaddress" CssClass="forminput1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" EnableClientScript="true"
                            SetFocusOnError="true" runat="server" ControlToValidate="txtaddress" Text="*"
                            ErrorMessage="Enter Your Address"></asp:RequiredFieldValidator>
                    </div>
                    <div class="info">
                        Phone No. :</div>
                    <div class="info_input">
                        <asp:TextBox ID="txtphone" CssClass="forminput1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" EnableClientScript="true"
                            SetFocusOnError="true" runat="server" ControlToValidate="txtphone" Text="*" ErrorMessage="Enter Your Phone No."></asp:RequiredFieldValidator>
                    </div>
                    <div class="info">
                        Mobile No. :</div>
                    <div class="info_input">
                        <asp:TextBox ID="txtmobile" CssClass="forminput1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" EnableClientScript="true"
                            SetFocusOnError="true" runat="server" ControlToValidate="txtmobile" Text="*"
                            ErrorMessage="Enter Your  Mobile No."></asp:RequiredFieldValidator>
                    </div>
                    <div class="info">
                        Bank Account No. :</div>
                    <div class="info_input">
                        <asp:TextBox ID="txtbankaccountno" CssClass="forminput1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" EnableClientScript="true"
                            SetFocusOnError="true" runat="server" ControlToValidate="txtbankaccountno" Text="*"
                            ErrorMessage="Enter Your Bank Account No."></asp:RequiredFieldValidator>
                    </div>
                    <div class="info">
                        PAN No. :</div>
                    <div class="info_input">
                        <asp:TextBox ID="txtpan" CssClass="forminput1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" EnableClientScript="true"
                            SetFocusOnError="true" runat="server" ControlToValidate="txtpan" Text="*" ErrorMessage="Enter Your  PAN No."></asp:RequiredFieldValidator>
                    </div>
                    <div class="info">
                        Email ID :</div>
                    <div class="info_input">
                        <asp:TextBox ID="txtemail" CssClass="forminput1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" EnableClientScript="true"
                            SetFocusOnError="true" runat="server" ControlToValidate="txtemail" Text="*" ErrorMessage="Enter Your Email Id"></asp:RequiredFieldValidator>
                    </div>
                    <div class="info">
                        Gender :</div>
                    <div class="radio_input">
                        <asp:RadioButtonList ID="radiosex" runat="server">
                            <asp:ListItem Text="MALE" Value="1"></asp:ListItem>
                            <asp:ListItem Text="FEMALE" Value="2"></asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9"  ValidationGroup="a" EnableClientScript="true"
                            SetFocusOnError="true" runat="server" ControlToValidate="radiosex" Text="*" ErrorMessage="Select Your Gender"></asp:RequiredFieldValidator>
                    </div>
                    <div class="info">
                        Current Location :</div>
                    <div class="info_input">
                        <asp:TextBox ID="txtcurrlocation" CssClass="forminput1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" EnableClientScript="true"
                            SetFocusOnError="true"  ValidationGroup="a" runat="server" ControlToValidate="txtcurrlocation" Text="*"
                            ErrorMessage="Enter Your Current Location"></asp:RequiredFieldValidator>
                    </div>
                    <div class="info">
                        Nationality :</div>
                    <div class="info_input">
                        <asp:TextBox ID="txtnation" CssClass="forminput1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" EnableClientScript="true"
                            SetFocusOnError="true"  ValidationGroup="a" runat="server" ControlToValidate="txtnation" Text="*"
                            ErrorMessage="Enter Your Nation"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="buttons1">
                    <div class="btn_sub1">
                        <asp:Button ID="btnsubmit" runat="server" OnClientClick="return checkfield();" Text="Submit"
                            OnClick="btnsubmit_Click" />
                    </div>
                    <div class="btn_can">
                        <asp:Button ID="btnreset" runat="server" Text="Reset" OnClientClick="return cancel();"
                            OnClick="btnreset_Click" />
                    </div>
                   <%-- <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="a" ShowMessageBox="true" EnableClientScript="true"
                        ShowSummary="false" runat="server" />--%>
                </div>
            </div>
        </div>
    </asp:Panel>
    <br />
    <asp:Label ID="lblerror" runat="server" Visible="False" Font-Bold="true" ForeColor="#FF3300"></asp:Label>
    <asp:Panel ID="panusergrid" runat="server" Visible="false">
        <asp:GridView ID="griduserinfor" CssClass="Gridview" AllowPaging="true" PageSize="10"
            AutoGenerateEditButton="true" DataKeyNames="id" AutoGenerateColumns="false" runat="server"
            OnRowCancelingEdit="griduserinfor_RowCancelingEdit1" OnRowDeleting="griduserinfor_RowDeleting"
            OnRowEditing="griduserinfor_RowEditing" OnRowUpdating="griduserinfor_RowUpdating"
            OnPageIndexChanging="griduserinfor_PageIndexChanging">
            <Columns>
                <asp:TemplateField HeaderText="First Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtfiname" Text='<%#Eval("first_name") %>' runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <%#Eval("first_name")%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Last Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtlaname" Text='<%#Eval("last_name") %>' runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <%#Eval("last_name")%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Address">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtadd" Text='<%#Eval("address") %>' runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <%#Eval("address")%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Phone">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtph" Text='<%#Eval("phone") %>' runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <%#Eval("phone")%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Mobile">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtmo" Text='<%#Eval("mobile") %>' runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <%#Eval("mobile")%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Bank Account">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtba" Text='<%#Eval("bank_account") %>' runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <%#Eval("bank_account")%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Pan No">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtpn" Text='<%#Eval("pan_no") %>' runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <%#Eval("pan_no")%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtem" Text='<%#Eval("email") %>' runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <%#Eval("email")%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Gender">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtge" Text='<%#Eval("gender") %>' runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <%#Eval("gender")%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Location">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtlo" Text='<%#Eval("location") %>' runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <%#Eval("location")%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Nationality">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtnat" Text='<%#Eval("nationality") %>' runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <%#Eval("nationality")%>
                    </ItemTemplate>
                </asp:TemplateField>
                <%-- <asp:CommandField ShowCancelButton="true" HeaderText="Action" ShowDeleteButton="true"
                    ShowEditButton="true" />--%>
            </Columns>
        </asp:GridView>
        <br />
        <div class="btn_can">
            <asp:Button ID="addnewuser" runat="server" Text="Add New User" OnClientClick="return cancel();"
                OnClick="addnewuser_Click" />
        </div>
    </asp:Panel>
    </form>
</body>
</html>

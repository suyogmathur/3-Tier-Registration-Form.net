﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Regform.aspx.cs" Inherits="regform" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="Ajax" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:Panel ID="panregform" Visible="true" runat="server">
        <div class="page">
            <div class="detailSection">
                <h3>
                    <b>PERSONAL DETAILS</b></h3>
            </div>
            <br />
            <div id="div1" style="text-align: center">
                * Mandatory Fields
            </div>
            <div class="detail">
                <div class="details">
                    <div class="info">
                        First Name :</div>
                    <div class="info_input">
                        <%-- <input type="text" id="txtfname" class="forminput1" value="" onfocus="changetoyellow(this.id);"
                        onblur="backtoorig(this.id);" />--%>
                        <asp:TextBox ID="TxtFirst_Name" CssClass="forminput1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TxtFirst_Name"
                            Text="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="TxtFirst_Name"
                            runat="server" Text="*" ValidationExpression="[a-zA-Z]+"></asp:RegularExpressionValidator>
                    </div>
                    <div class="info">
                        Last Name :</div>
                    <div class="info_input">
                        <asp:TextBox ID="TxtLast_Name" CssClass="forminput1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" EnableClientScript="true"
                            SetFocusOnError="true" runat="server" ControlToValidate="TxtLast_Name" Text="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" Text="*"
                            ValidationExpression="[a-zA-Z]+" ControlToValidate="TxtLast_Name"></asp:RegularExpressionValidator>
                    </div>
                    <div class="info">
                        Address :</div>
                    <div class="info_input">
                        <asp:TextBox ID="Txt_Address" CssClass="forminput1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" EnableClientScript="true"
                            SetFocusOnError="true" runat="server" ControlToValidate="Txt_Address" Text="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" Text="*"
                            ValidationExpression="[a-zA-Z]+" ControlToValidate="Txt_Address"></asp:RegularExpressionValidator>
                    </div>
                    <div class="info">
                        Date :</div>
                    <div class="info_input">
                        <asp:TextBox ID="Txt_Date" CssClass="forminput1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" EnableClientScript="true"
                            SetFocusOnError="true" runat="server" ControlToValidate="Txt_Date" Text="*"></asp:RequiredFieldValidator>
                        <%-- <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" Text="*"
                            ValidationExpression="[a-zA-Z]+" ControlToValidate="txtaddress"></asp:RegularExpressionValidator>--%>
                        <Ajax:CalendarExtender ID="datecalender" runat="server" TargetControlID="Txt_Date"
                            PopupButtonID="ImgBtn_Date" Format="dd/MM/yyyy">
                        </Ajax:CalendarExtender>
                        <asp:ImageButton ID="ImgBtn_Date" ImageAlign="Middle" runat="server" TabIndex="20"
                            ImageUrl="~/images/calendar-button.gif" CausesValidation="False" />
                    </div>
                    <div class="info">
                        Phone No. :</div>
                    <div class="info_input">
                        <asp:TextBox ID="Txt_Phone" CssClass="forminput1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" EnableClientScript="true"
                            SetFocusOnError="true" runat="server" ControlToValidate="Txt_Phone" Text="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" Text="*"
                            ValidationExpression="^[0-9]\d{2,4}-\d{6,8}$" ControlToValidate="Txt_Phone"></asp:RegularExpressionValidator>
                    </div>
                    <div class="info">
                        Mobile No. :</div>
                    <div class="info_input">
                        <asp:TextBox ID="Txt_Mobile" CssClass="forminput1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" EnableClientScript="true"
                            SetFocusOnError="true" runat="server" ControlToValidate="Txt_Mobile" Text="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" Text="*"
                            ValidationExpression="^9\d{9}$" ControlToValidate="Txt_Mobile"></asp:RegularExpressionValidator>
                    </div>
                    <div class="info">
                        Bank Account No. :</div>
                    <div class="info_input">
                        <asp:TextBox ID="Txt_BankAccountNo" CssClass="forminput1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" EnableClientScript="true"
                            SetFocusOnError="true" runat="server" ControlToValidate="Txt_BankAccountNo" Text="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator9" ControlToValidate="Txt_BankAccountNo"
                            runat="server" Text="*" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                    </div>
                    <div class="info">
                        PAN No. :</div>
                    <div class="info_input">
                        <asp:TextBox ID="Txt_PanNo" CssClass="forminput1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" EnableClientScript="true"
                            SetFocusOnError="true" runat="server" ControlToValidate="Txt_PanNo" Text="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator8" ControlToValidate="Txt_PanNo"
                            runat="server" Text="*" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                    </div>
                    <div class="info">
                        Email ID :</div>
                    <div class="info_input">
                        <asp:TextBox ID="Txt_Email" CssClass="forminput1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" EnableClientScript="true"
                            SetFocusOnError="true" runat="server" ControlToValidate="Txt_Email" Text="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                            ControlToValidate="Txt_Email" Text="*"></asp:RegularExpressionValidator>
                    </div>
                    <div class="info">
                        Gender :</div>
                    <div class="radio_input">
                        <asp:RadioButtonList ID="Radio_Gender" runat="server">
                            <asp:ListItem Text="MALE" Value="1"></asp:ListItem>
                            <asp:ListItem Text="FEMALE" Value="2"></asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" EnableClientScript="true"
                            SetFocusOnError="true" runat="server" ControlToValidate="Radio_Gender" Text="*"></asp:RequiredFieldValidator>
                    </div>
                    <div class="info">
                        Current Location :</div>
                    <div class="info_input">
                        <asp:TextBox ID="Txt_CurrentLocation" CssClass="forminput1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" EnableClientScript="true"
                            SetFocusOnError="true" runat="server" ControlToValidate="Txt_CurrentLocation"
                            Text="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" Text="*"
                            ValidationExpression="[a-zA-Z]+" ControlToValidate="Txt_CurrentLocation"></asp:RegularExpressionValidator>
                    </div>
                    <div class="info">
                        Nationality :</div>
                    <div class="info_input">
                        <asp:TextBox ID="Txt_Nationality" CssClass="forminput1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" EnableClientScript="true"
                            SetFocusOnError="true" runat="server" ControlToValidate="Txt_Nationality" Text="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" Text="*"
                            ValidationExpression="[a-zA-Z]+" ControlToValidate="Txt_Nationality"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="buttons1">
                    <div class="btn_sub1">
                        <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click" />
                    </div>
                    <div class="btn_can">
                        <asp:Button ID="BtnReset" runat="server" Text="Reset" OnClientClick="return cancel();"
                            OnClick="BtnReset_Click" />
                    </div>
                    <%-- <asp:ValidationSummary ID="ValidationSummary1" ShowMessageBox="true" EnableClientScript="true"
                        ShowSummary="false" runat="server" />--%>
                </div>
            </div>
        </div>
    </asp:Panel>
    <br />
    <asp:Label ID="lblerror" runat="server" Visible="False" Font-Bold="true" ForeColor="#FF3300"></asp:Label>
    <div id="panelgrid" style="text-align: center">
        <asp:Panel ID="panusergrid" runat="server" Visible="false">
            <asp:GridView ID="GridUserInfo" CssClass="Gridview" AllowPaging="true" PageSize="3"
                DataKeyNames="id" AutoGenerateColumns="false" runat="server" OnPageIndexChanging="GridUserInfo_PageIndexChanging"
                OnRowCancelingEdit="GridUserInfo_RowCancelingEdit" OnRowCommand="GridUserInfo_RowCommand"
                OnRowDeleting="GridUserInfo_RowDeleting">
                <Columns>
                    <asp:TemplateField HeaderText="S.No">
                        <ItemTemplate>
                            <%# Container.DataItemIndex+1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="First Name">
                        <ItemTemplate>
                            <asp:Label ID="LblId" runat="server" Visible="false" Text='<%#Eval("id") %>'></asp:Label>
                            <asp:LinkButton ID="LnkFirstName" CommandArgument='<%#Eval("id") %>' CommandName="FirstName"
                                ForeColor="Red" Text='<%#Eval("first_name") %>' runat="server"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Last Name">
                        <ItemTemplate>
                            <%#Eval("last_name")%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Address">
                        <ItemTemplate>
                            <%#Eval("address")%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Phone">
                        <ItemTemplate>
                            <%#Eval("phone")%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Mobile">
                        <ItemTemplate>
                            <%#Eval("mobile")%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Bank Account">
                        <ItemTemplate>
                            <%#Eval("bank_account")%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Pan No">
                        <ItemTemplate>
                            <%#Eval("pan_no")%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email">
                        <ItemTemplate>
                            <%#Eval("email")%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Gender">
                        <ItemTemplate>
                            <%#Eval("gender")%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Location">
                        <ItemTemplate>
                            <%#Eval("location")%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Nationality">
                        <ItemTemplate>
                            <%#Eval("nationality")%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Date">
                        <ItemTemplate>
                            <%#Eval("date")%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField HeaderText="Action" ShowDeleteButton="true" />
                </Columns>
            </asp:GridView>
            <br />
            <div class="btn_can">
                <asp:Button ID="AddNewUser" runat="server" Text="Add New User" OnClientClick="return cancel();"
                    OnClick="AddNewUser_Click" />
            </div>
        </asp:Panel>
    </div>
    </form>
</body>
</html>

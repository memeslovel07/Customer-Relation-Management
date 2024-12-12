<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="CRM.Regidtration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 414px;
            height: 50px;
            border-style: solid,;
            border-width: 2px;
        }

        .button {
            width: 100%;
            padding: 10px;
            background-color: #004080;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 1em;
            cursor: pointer;
        }

        table {
            border-collapse: separate;
            border: solid black 1px;
            border-radius: 6px;
        }

        .auto-style2 {
            width: 798px;
            height: 547px;
            border-style: solid;
            border-width: 2px;
        }

        .auto-style3 {
            width: 414px;
        }

        .auto-style4 {
            height: 48px;
            width: 382px;
        }

        .auto-style5 {
            width: 414px;
            height: 48px;
        }

        .auto-style6 {
            height: 42px;
            width: 382px;
        }

        .auto-style7 {
            width: 414px;
            height: 42px;
        }

        .auto-style8 {
            height: 48px;
            width: 202px;
        }

        .auto-style9 {
            width: 202px;
        }

        .auto-style10 {
            height: 42px;
            width: 202px;
        }

        .auto-style11 {
            height: 52px;
        }

        .auto-style12 {
            width: 382px;
        }

        .auto-style13 {
            width: 788px;
        }

        .auto-style14 {
            height: 27px;
        }

        .auto-style15 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            padding: 10px;
            background-color: #004080;
            color: white;
            border-radius: 4px;
            font-size: 1em;
            cursor: pointer;
        }

        header {
            background-color: #004080;
            color: white;
            padding: 20px;
            text-align: center;
        }

            header h1 {
                margin: 0;
                font-size: 2.5em;
            }

            header p {
                margin: 5px 0;
                font-size: 1.2em;
            }


        footer {
            text-align: center;
            padding: 10px 0;
            background-color: #004080;
            color: white;
        }

        .content {
            display: flex;
            justify-content: space-between;
            padding: 20px;
        }

            .content .updates,
            .content .quick-links {
                width: 30%;
                background-color: #f9f9f9;
                padding: 15px;
                border: 1px solid #ddd;
            }

                .content .updates h3,
                .content .quick-links h3 {
                    color: #004080;
                }

            .content .main {
                width: 65%;
            }

                .content .main h3 {
                    color: #004080;
                }
    </style>
</head>
<body>
    <header>
        <h1>Customer Relationship Management System</h1>
        <p>Everything you need to get up and running with CRM</p>
    </header>

    <center>
        <form id="form1" runat="server">
            <div>

                <table cellspacing="0" class="auto-style1" border="1">
                    <tr>
                        <td>
                            <center>
                                <h2 class="auto-style13">Registration </h2>
                            </center>
                        </td>

                    </tr>
                </table>
                <table cellspacing="0" class="auto-style2">
                    <tr>
                        <td class="auto-style8">
                            <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
                        </td>
                        <td class="auto-style4" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtusername" runat="server" Width="261px" OnTextChanged="txtusername_TextChanged" AutoPostBack="true"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label12" runat="server"></asp:Label>
                        </td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                        </td>
                        <td class="auto-style12" colspan="2">&nbsp;&nbsp;
                        <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="261px"></asp:TextBox>
                        </td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label3" runat="server" Text="Confirm Password"></asp:Label>
                        </td>
                        <td class="auto-style12" colspan="2">&nbsp;&nbsp;
                        <asp:TextBox ID="txtconfirmpassword" runat="server" TextMode="Password" Width="261px"></asp:TextBox>
                        </td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label5" runat="server" Text="Phone Number"></asp:Label>
                        </td>
                        <td class="auto-style12" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtphone" runat="server" Width="261px"></asp:TextBox>
                        </td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style10">
                            <asp:Label ID="Label6" runat="server" Text="Email"></asp:Label>
                        </td>
                        <td class="auto-style6" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtemail" runat="server" Width="261px"></asp:TextBox>
                        </td>
                        <td class="auto-style7"></td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label7" runat="server" Text="Gender"></asp:Label>
                        </td>
                        <td class="auto-style12">
                            <asp:RadioButton ID="rbtnmale" runat="server" Text="Male" />
                        </td>
                        <td class="auto-style12">
                            <asp:RadioButton ID="rbtnfemale" runat="server" Text="Female" />
                        </td>
                        <td class="auto-style3">
                            <asp:RadioButton ID="rbntother" runat="server" Text="other" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label8" runat="server" Text="Date Of Birth"></asp:Label>
                        </td>
                        <td class="auto-style12" colspan="2">DD<asp:DropDownList ID="ddldate" runat="server" Width="63px">
                        </asp:DropDownList>
                            &nbsp;MM<asp:DropDownList ID="ddlmonth" runat="server" Width="63px">
                            </asp:DropDownList>
                            &nbsp;YYYY<asp:DropDownList ID="ddlyear" runat="server" Width="98px">
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label9" runat="server" Text="Country"></asp:Label>
                        </td>
                        <td class="auto-style12" colspan="2">
                            <asp:DropDownList ID="ddlcountry" runat="server" Width="262px" AutoPostBack="True" OnSelectedIndexChanged="ddlcountry_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label10" runat="server" Text="State"></asp:Label>
                        </td>
                        <td class="auto-style12" colspan="2">
                            <asp:DropDownList ID="ddlstate" runat="server" Width="262px" AutoPostBack="true" OnSelectedIndexChanged="ddlstate_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label11" runat="server" Text="City"></asp:Label>
                        </td>
                        <td class="auto-style12" colspan="2">
                            <asp:DropDownList ID="ddlcity" runat="server" Width="262px" AutoPostBack="true">
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label13" runat="server" Text="Pin Code"></asp:Label>
                        </td>
                        <td class="auto-style12" colspan="2">
                            <asp:TextBox ID="txtpincode" runat="server" Width="261px"></asp:TextBox>
                        </td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <center>
                                <asp:Label ID="labcaptcha" runat="server" Text="Captcha" Font-Bold="True" Font-Italic="True" Font-Overline="False" Font-Strikeout="True" ForeColor="#3399FF"></asp:Label>
                            </center>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label14" runat="server" Text="Enter Captcha"></asp:Label>
                        </td>
                        <td class="auto-style12" colspan="2">
                            <asp:TextBox ID="txtcaptcha" runat="server" Width="261px"></asp:TextBox>
                        </td>
                        <td class="auto-style3"></td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:CheckBox ID="CheckBox1" runat="server" Text="I declared that given information is correct" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4" class="auto-style11">
                            <center>
                                <asp:Button ID="btnregister" runat="server" Text="Register" Width="137px" CssClass="auto-style15" OnClick="btnregister_Click" Height="48px" />
                            </center>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4" class="auto-style14" style="background-color: #FFFFFF"></td>
                    </tr>
                </table>
            </div>

        </form>
    </center>
    <div class="content">
        <div class="updates">
            <h3>Updates</h3>
            <p>Get up and running with CRM!!</p>
        </div>
        <div class="main">
            <h3>CRM Software</h3>
            <p>
                CRM software has an elegant and powerful design that makes it easy for our clients to set up their business and subsequently evolve and extend it.
             The whole software pivots around two main structures, the Subscriptions (Contracts) and the Rewards. Each customer owns a subscription that in turn
             entitles it to a dynamic assignment of pricing, business rules, promotional offers, commercial policies, and billing definitions.
            </p>
        </div>
        <div class="quick-links">
            <h3>Quick Links</h3>
            <ul>
                <li><a href="#">Facebook</a></li>
                <li><a href="#">Twitter</a></li>
                <li><a href="#">LinkedIn</a></li>
            </ul>
        </div>
    </div>
    <footer>
        <p>&copy; 2024 CRM Portal</p>
    </footer>

</body>
</html>

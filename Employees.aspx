<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employees.aspx.cs" Inherits="CRM.Employees" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Employee</title>
    <style type="text/css">
        .auto-style1 {
            width: 600px;
            height: 300px;
            border-style: solid;
            border-width: 2px;
        }

        .auto-style2 {
            width: 600px;
            height: 50px;
            border-style: solid;
            border-width: 2px;
        }

        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
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

        nav {
            background-color: #f2f2f2;
            display: flex;
            justify-content: center;
            padding: 10px 0;
        }

            nav a {
                text-decoration: none;
                color: #004080;
                margin: 0 15px;
                font-weight: bold;
            }

                nav a:hover {
                    color: #0073e6;
                }

        footer {
            text-align: center;
            padding: 10px 0;
            background-color: #004080;
            color: white;
        }

        .button {
            width: 20%;
            padding: 10px;
            background-color: #004080;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 1em;
            cursor: pointer;
        }

            .button:hover {
                background-color: #003366;
            }
    </style>
</head>

<body>
    <header>
        <h1>Customer Relationship Management System</h1>
        <p>Everything you need to get up and running with CRM</p>
    </header>
    <center>
        <nav>
            <a href="Homepage.aspx">Homepage</a>

        </nav>
        <center>
            <form id="form1" runat="server">

                <div>
                    <table cellspacing="0" class="auto-style1">
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="EmployeeId"></asp:Label>
                            </td>
                            <td>&nbsp;&nbsp;
                        <asp:TextBox ID="txtemployeedid" runat="server" Width="209px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                            </td>
                            <td>&nbsp;&nbsp;
                        <asp:TextBox ID="txtname" runat="server" Width="209px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="Phone Number"></asp:Label>
                            </td>
                            <td>&nbsp;
                        <asp:TextBox ID="txtphone" runat="server" Width="209px"></asp:TextBox>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
                            </td>
                            <td>&nbsp;
                        <asp:TextBox ID="txtemail" runat="server" Width="209px"></asp:TextBox>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label5" runat="server" Text="Address"></asp:Label>
                            </td>
                            <td>&nbsp;&nbsp;
                        <asp:TextBox ID="txtaddress" runat="server" Width="209px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text="Designation"></asp:Label>
                            </td>
                            <td>&nbsp;
                        <asp:TextBox ID="txtdesig" runat="server" Width="209px"></asp:TextBox>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label7" runat="server" Text="Salary"></asp:Label>
                            </td>
                            <td>&nbsp;
                        <asp:TextBox ID="txtsalary" runat="server" Width="209px"></asp:TextBox>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <center>
                                    <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" CssClass="button" Text="Submit" />
                                </center>
                            </td>
                        </tr>
                    </table>
                </div>

            </form>
        </center>
        <footer>
            <p>&copy; 2024 CRM Portal</p>
        </footer>
</body>

</html>

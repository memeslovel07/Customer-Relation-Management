<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Complain_register.aspx.cs" Inherits="CRM.Complain_register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 723px;
            height: 300px;
            border-style: solid;
            border-width: 2px;
        }

        .auto-style2 {
            width: 564px;
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
        <form id="form1" runat="server">
            <nav>
                <a href="Homepage.aspx">Homepage</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="labmessage" runat="server"></asp:Label>

            </nav>
            <div>
                <table cellspacing="0" class="auto-style1">
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <asp:Label ID="labusername" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Problem Type"></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <asp:DropDownList ID="ddlproblemtype" runat="server" AutoPostBack="True" Width="207px">
                                <asp:ListItem>Add New Employee</asp:ListItem>
                                <asp:ListItem>Update Employee Record</asp:ListItem>
                                <asp:ListItem>Login</asp:ListItem>
                                <asp:ListItem>Admin Panel</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Discription"></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <asp:TextBox ID="txtdiscription" runat="server" Height="82px" TextMode="MultiLine" Width="359px" placeholder="Type your problem"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <center>
                                <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" CssClass="button" />
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

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View Status.aspx.cs" Inherits="CRM.View_Status" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Status</title>
    <style type="text/css">
        .auto-style1 {
            width: 1440px;
            height: 507px;
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
        <form id="form1" runat="server">
            <div>
                <table cellspacing="0" class="auto-style1">
                    <tr>
                        <td>
                            <center>
                                <asp:Label ID="Label7" runat="server" Text="Status"></asp:Label></center>
                        </td>
                        <td>
                            <center>
                                <asp:DropDownList ID="ddlstatus" runat="server" AutoPostBack="True" Width="160px">
                                </asp:DropDownList></center>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:GridView ID="GridView1" runat="server" Height="394px" Width="1417px">
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <center>
                                <asp:Button ID="txtview" runat="server" Text="View" CssClass="button" OnClick="txtview_Click" />
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

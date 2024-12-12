<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="CRM.Feedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Feedback</title>
    <style type="text/css">
        .auto-style1 {
            width: 38%;
            height: 457px;
        }

        .auto-style2 {
            height: 31px;
        }

        .auto-style3 {
            height: 310px;
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
            align-content: center;
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
    </center>
    <center>
        <form id="form1" runat="server">
            <div>
                <table class="auto-style1" border="1">
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <asp:Label ID="labusername" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3" colspan="2">
                            <asp:TextBox ID="txtfeedback" runat="server" Height="207px" TextMode="MultiLine" Width="450px" placeholder="Feedback"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" CssClass="button" Text="Submit" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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

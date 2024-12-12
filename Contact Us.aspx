<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact Us.aspx.cs" Inherits="CRM.Contact_Us" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
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

        .contact-container {
            max-width: 800px;
            margin: 20px auto;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

            .contact-container h2 {
                color: #004080;
                margin-bottom: 20px;
            }

        .label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
        }

        .input,
        .textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        .button {
            background-color: #004080;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

            .button:hover {
                background-color: #0073e6;
            }

        footer {
            text-align: center;
            padding: 10px 0;
            background-color: #004080;
            color: white;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <header>
        <h1>Customer Relationship Management System</h1>
        <p>Everything you need to get up and running with CRM</p>
    </header>
    <nav>

        <a href="Hoheadge.aspx">Homepage</a>

    </nav>
    <div class="contact-container">
        <form id="form1" runat="server">
            <label for="name" class="label">Name:</label>
            <asp:TextBox ID="txtusername" runat="server" Width="261px" CssClass="input"></asp:TextBox>

            <label for="email" class="label">Email:</label>
            <asp:TextBox ID="txtemail" runat="server" Width="261px" CssClass="input"></asp:TextBox>

            <label for="message" class="label">Message:</label>
            <asp:TextBox ID="txtmessage" runat="server" Width="349px" TextMode="MultiLine" CssClass="auto-style1" Height="157px"></asp:TextBox>

            <asp:Button ID="btnsubmit" runat="server" Text="Submit" CssClass="button" OnClick="btnsubmit_Click" />
        </form>
    </div>
    <footer>
        <p>&copy; 2024 CRM Portal</p>
    </footer>
</body>
</html>

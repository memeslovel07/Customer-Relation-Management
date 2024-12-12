<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="CRM.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CRM Login</title>
    <style>
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

        .login-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 70vh;
            background-color: #f9f9f9;
        }

        .login-form {
            background-color: white;
            padding: 30px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 300px;
        }

        .h2 {
            margin-top: 0;
            color: #004080;
            text-align: center;
        }

        .label {
            display: block;
            margin: 15px 0 5px;
            font-weight: bold;
        }

        .input {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 4px;
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

            .button:hover {
                background-color: #003366;
            }

        footer {
            text-align: center;
            padding: 10px 0;
            background-color: #004080;
            color: white;
        }
    </style>
</head>

<body>
    <header>
        <h1>Customer Relationship Management System</h1>
        <p>Everything you need to get up and running with CRM</p>
    </header>
    <div class="login-container">
        <form class="login-form" id="form1" runat="server">
            <h2 cssclass="h2">Login</h2>
            <label for="username" cssclass="label">Username</label>
            <asp:TextBox ID="txtusername" runat="server" Width="261px" placeholder="Enter your username" CssClass="input"></asp:TextBox>


            <label for="password" class="label">Password</label>
            <asp:TextBox ID="txtpassword" runat="server" Width="261px" placeholder="Enter Password" TextMode="Password" CssClass="input"></asp:TextBox>

            <asp:Button ID="btnlogin" runat="server" Text="login" CssClass="button" OnClick="btnlogin_Click" />
        </form>
    </div>
    <footer>
        <p>&copy; 2024 CRM Portal</p>
    </footer>

</body>
</html>

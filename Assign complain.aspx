<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Assign complain.aspx.cs" Inherits="CRM.Assign_complain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Assign Complain</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .form-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 400px;
            box-sizing: border-box;
        }

        .button {
            background-color: #004080;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
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

                <a href="Homepage.aspx">Homepage</a>

            </nav>
            <div class="form-container">
                <h2>Assign Complaint</h2>


                <asp:Label ID="Label1" runat="server" Text="Complain No."></asp:Label>

                &nbsp;&nbsp;
           <asp:DropDownList ID="ddlcomplainno" runat="server" AutoPostBack="True" Width="161px" OnSelectedIndexChanged="ddlcomplainno_SelectedIndexChanged">
           </asp:DropDownList>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Status"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:TextBox ID="txtstatus" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="Employee"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:DropDownList ID="ddlemployee" runat="server" AutoPostBack="True" Width="161px">
           </asp:DropDownList>
                <br />
                <br />
                &nbsp;&nbsp;
           <asp:TextBox ID="txtdiscription" runat="server" Height="142px" TextMode="MultiLine" Width="337px" placeholder="Discription"></asp:TextBox>
                <br />
                <br />
                <br />
                <asp:Button ID="btnassign" runat="server" Text="Assign" CssClass="button" OnClick="btnassign_Click" />
            </div>
        </form>
    </center>

    <footer>
        <p>&copy; 2024 CRM Portal</p>
    </footer>

</body>
</html>

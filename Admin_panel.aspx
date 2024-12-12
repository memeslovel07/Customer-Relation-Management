<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_panel.aspx.cs" Inherits="CRM.Admin_panel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Panel</title>
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

        .banner {
            background-image: url('~/Pictures/crm.jpg');
            background-size: cover;
            background-position: center;
            height: 300px;
            position: relative;
            text-align: center;
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
    <form id="form1" runat="server">
        <nav>
            <a href="Employees.aspx">Add Employee</a>
            <a href="Employee_.aspx">Update Employee</a>
            <a href="Assign complain.aspx">Assign Complain</a>
            <a href="View Complain.aspx">View Complain</a>
            <a href="Homepage.aspx">Logout</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="labcome" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large"></asp:Label>

        </nav>
        <div class="banner">
        </div>
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
    </form>
</body>
</html>

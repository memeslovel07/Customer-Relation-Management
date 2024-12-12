<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About Us.aspx.cs" Inherits="CRM.About_Us" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
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

        .about-container {
            max-width: 800px;
            margin: 20px auto;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

            .about-container h2 {
                color: #004080;
                margin-bottom: 20px;
            }

            .about-container p {
                line-height: 1.6;
                color: #333;
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
        <h1>About Us</h1>
    </header>

    <nav>
        <a href="#">Home</a>

    </nav>
    <form id="form1" runat="server">

        <div class="about-container">
            <h2>Our Story</h2>
            <p>
                Welcome to our Customer Relationship Management (CRM) system. Our mission is to provide businesses with the tools they need to manage their customer relationships effectively and efficiently. 
            Our CRM software is designed to be user-friendly, powerful, and adaptable to the unique needs of each business.
            </p>
            <p>
                Founded in 2024, we have quickly grown to become a trusted partner for businesses of all sizes. Our team is dedicated to continuous improvement and innovation, ensuring that our clients always have access to the latest features and best practices in CRM.
            </p>
            <p>
                We believe in the power of strong customer relationships and are committed to helping our clients build and maintain these relationships through our comprehensive CRM solutions.
            </p>
        </div>
    </form>
    <footer>
        <p>&copy; 2024 CRM Portal</p>
    </footer>
</body>
</html>

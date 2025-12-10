<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentSuccess.aspx.cs" Inherits="asp_demo.PaymentSuccess" %>

<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head runat="server">
    <meta charset="UTF-8" />
    <title>نجاح الدفع - MR TECH</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #E0F0FF;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .success-box {
            background-color: #fff;
            padding: 30px 40px;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.2);
            text-align: center;
            width: 400px;
        }

        .success-box h2 {
            color: #003b65;
            margin-bottom: 20px;
        }

        .success-box p {
            font-size: 16px;
            color: green;
            margin-bottom: 20px;
        }

        .home-btn {
            display: inline-block;
            padding: 10px 20px;
            background-color: #f6b800;
            color: #003b65;
            text-decoration: none;
            border-radius: 8px;
            font-weight: bold;
            transition: 0.3s;
        }

        .home-btn:hover {
            background-color: #ffd54a;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="success-box">
            <h2>تم الدفع بنجاح!</h2>
            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
            <br /><br />
            <a href="defult.aspx" class="home-btn">العودة للصفحة الرئيسية</a>
        </div>
    </form>
</body>
</html>

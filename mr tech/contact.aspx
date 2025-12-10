<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="asp_demo.Contact" %>

<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head runat="server">
    <meta charset="UTF-8" />
    <title>اتصل بنا - MR TECH</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #E0F0FF;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .contact-box {
            background: #fff;
            padding: 30px 40px;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.2);
            width: 400px;
        }

        .contact-box h2 {
            text-align: center;
            color: #003b65;
            margin-bottom: 20px;
        }

        .contact-box input, .contact-box textarea {
            width: 100%;
            padding: 10px 12px;
            margin-bottom: 15px;
            border-radius: 6px;
            border: 1px solid #ccc;
            font-size: 14px;
        }

        .contact-box input[type="submit"] {
            background-color: #f6b800;
            color: #003b65;
            border: none;
            font-weight: bold;
            cursor: pointer;
            transition: 0.3s;
        }

        .contact-box input[type="submit"]:hover {
            background-color: #ffd54a;
        }

        .success-msg {
            color: green;
            text-align: center;
            margin-bottom: 10px;
        }

        .error-msg {
            color: red;
            text-align: center;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="contact-box">
            <h2>اتصل بنا</h2>

            <asp:Label ID="lblMessage" runat="server" CssClass="success-msg"></asp:Label>

            <asp:TextBox ID="txtName" runat="server" placeholder="الاسم"></asp:TextBox>
            <asp:TextBox ID="txtEmail" runat="server" placeholder="البريد الإلكتروني"></asp:TextBox>
            <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Rows="5" placeholder="رسالتك"></asp:TextBox>

            <asp:Button ID="btnSend" runat="server" Text="إرسال" OnClick="btnSend_Click" />
        </div>
    </form>
</body>
</html>

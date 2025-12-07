<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="asp_demo.Contact" %>

<!DOCTYPE html>
<html lang="ar">
<head runat="server">
    <meta charset="UTF-8" />
    <title>اتصل بنا - MR TECH</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #1a1a1a; color: #fff; margin: 0; padding: 0; }

        header {
            background: linear-gradient(270deg, #ADD8E6, #BFE0FF);
            padding: 20px 40px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            color: #1a1a1a;
        }
        header h1 { margin: 0; font-size: 28px; font-weight: bold; }

        .nav-btn {
            background: #6a85b6;
            color: #fff;
            border: none;
            padding: 8px 16px;
            border-radius: 8px;
            cursor: pointer;
            font-weight: bold;
            font-size: 14px;
            transition: transform 0.3s ease, box-shadow 0.3s ease, background 0.3s ease;
            text-decoration: none;
            margin-left: 8px;
        }
        .nav-btn:hover {
            background: #627bb0;
            transform: scale(1.05);
            box-shadow: 0 4px 15px rgba(0,0,0,0.3);
        }

        .cart-btn {
            position: relative;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            font-size: 20px;
            background: #6a85b6;
            width: 44px;
            height: 44px;
            border-radius: 50%;
            padding: 0;
            transition: all 0.3s ease;
            color:#fff;
            text-decoration:none;
            border:none;
        }
        .cart-btn:hover { background:#627bb0; }

        .cart-badge { 
            background: #ff4500; 
            color: #fff; 
            border-radius: 50%; 
            padding: 2px 6px; 
            font-size: 12px; 
            font-weight: bold;
            position: absolute; 
            top: -6px; 
            right: -6px;
        }

        .page-container {
            max-width: 900px;
            margin: 40px auto;
            display: flex;
            gap: 20px;
            flex-wrap: wrap;
        }

        .contact-form, .contact-info {
            flex: 1 1 300px;
            background-color: #222;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.4);
        }

        .contact-form h2, .contact-info h2 {
            margin-top: 0;
            margin-bottom: 15px;
            text-align:right;
        }

        label { display:block; margin:10px 0 5px 0; text-align:right; }

        .input-text, .input-area {
            width:100%;
            padding:10px;
            border-radius:8px;
            border:1px solid #555;
            background:#111;
            color:#fff;
        }

        .input-area { height:120px; resize:vertical; }

        .send-btn {
            margin-top:15px;
            width:100%;
            padding:10px;
            border:none;
            border-radius:8px;
            background:#00c3ff;
            color:#000;
            font-weight:bold;
            cursor:pointer;
            font-size:16px;
        }
        .send-btn:hover { background:#00a0d1; }

        .contact-info p { margin:8px 0; font-size:16px; }
        .contact-info a { color:#00eaff; text-decoration:none; }
        .contact-info a:hover { text-decoration:underline; }

        .result-message {
            margin-top:10px;
            font-size:14px;
            text-align:center;
        }
        .success { color:#4caf50; }
        .error { color:#ff4444; }

        footer {
            background-color: #111; 
            color: white; 
            text-align: center; 
            padding: 15px 0; 
            margin-top: 30px; 
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <h1>MR TECH</h1>
            <nav>
                <asp:HyperLink ID="hlHome" runat="server" NavigateUrl="defult.aspx" CssClass="nav-btn">الرئيسية</asp:HyperLink>
                <asp:HyperLink ID="hlProducts" runat="server" NavigateUrl="Products.aspx" CssClass="nav-btn">منتجات</asp:HyperLink>
                <asp:HyperLink ID="hlOffers" runat="server" NavigateUrl="Offers.aspx" CssClass="nav-btn">عروض</asp:HyperLink>
                <asp:HyperLink ID="hlContact" runat="server" NavigateUrl="Contact.aspx" CssClass="nav-btn">اتصل بنا</asp:HyperLink>

                <asp:HyperLink ID="hlCart" runat="server" NavigateUrl="Cart.aspx" CssClass="cart-btn">
                    🛒
                    <asp:Label ID="lblCartCount" runat="server" CssClass="cart-badge" Text="0"></asp:Label>
                </asp:HyperLink>
            </nav>
        </header>

        <div class="page-container">
            <!-- نموذج تواصل -->
            <div class="contact-form">
                <h2>أرسل رسالة</h2>

                <label for="txtName">الاسم</label>
                <asp:TextBox ID="txtName" runat="server" CssClass="input-text"></asp:TextBox>

                <label for="txtEmail">البريد الإلكتروني</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="input-text"></asp:TextBox>

                <label for="txtMessage">الرسالة</label>
                <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" CssClass="input-area"></asp:TextBox>

                <asp:Button ID="btnSend" runat="server" Text="إرسال" CssClass="send-btn" OnClick="btnSend_Click" />

                <asp:Label ID="lblResult" runat="server" CssClass="result-message"></asp:Label>
            </div>

            <!-- بيانات التواصل -->
            <div class="contact-info">
                <h2>معلومات التواصل</h2>
                <p>رقم الهاتف: 50505050</p>
                <p>البريد الإلكتروني: <a href="mailto:mr@gmail.com">mr@gmail.com</a></p>
                <p>فيسبوك: <a href="#">MR TECH</a></p>
                <p>انستجرام: <a href="#">MR TECH</a></p>
                <p>تويتر: <a href="#">MR TECH</a></p>
                <p>نحن متواجدون للرد على كافة استفساراتكم ودعمكم الفني.</p>
            </div>
        </div>

        <footer>
            <p>© 2025 MR TECH - جميع الحقوق محفوظة</p>
        </footer>
    </form>
</body>
</html>

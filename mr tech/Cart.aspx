<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="asp_demo.Cart" %>
<!DOCTYPE html>
<html lang="ar">
<head runat="server">
    <meta charset="UTF-8">
    <title>سلة التسوق - MR TECH</title>
    <style>
        body { font-family: Arial, sans-serif; background:#1a1a1a; color:#fff; margin:0; padding:0; }

        header {
            background: linear-gradient(270deg, #ADD8E6, #BFE0FF);
            padding: 20px 40px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            color: #1a1a1a;
        }
        header h1 { margin:0; font-size:28px; font-weight:bold; }

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
            margin-left:8px;
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
            box-shadow: 0 2px 6px rgba(0,0,0,0.3);
        }

        h2 { text-align:center; padding:20px; }

        .cart-container { 
            max-width:900px; 
            margin: 10px auto 30px auto; 
            background:#222; 
            padding:20px; 
            border-radius:12px; 
            box-shadow:0 4px 15px rgba(0,0,0,0.4);
        }

        table { width:100%; border-collapse: collapse; }
        th, td { padding:12px; text-align:center; border-bottom:1px solid #444; }
        th { background:#333; }
        tr:hover { background:#2a2a2a; }

        .remove-btn { background:#ff4d4d; color:#fff; border:none; padding:6px 12px; border-radius:6px; cursor:pointer; }
        .remove-btn:hover { background:#ff3333; }

        .empty-message { text-align:center; padding:20px; color:#ccc; }

        .cart-summary {
            margin-top:15px;
            text-align:right;
            font-size:18px;
            font-weight:bold;
        }

        footer {
            background:#111; 
            color:#aaa; 
            text-align:center; 
            padding:12px 0;
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

        <h2>سلة التسوق</h2>

        <div class="cart-container">
            <asp:Repeater ID="RepeaterCart" runat="server">
                <HeaderTemplate>
                    <table>
                        <tr>
                            <th>الصورة</th>
                            <th>المنتج</th>
                            <th>السعر للوحدة</th>
                            <th>الكمية</th>
                            <th>الإجمالي</th>
                            <th>حذف</th>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><img src='<%# Eval("Image") %>' width="80" /></td>
                        <td><%# Eval("Name") %></td>
                        <td><%# Eval("Price") %> KWD</td>
                        <td><%# Eval("Quantity") %></td>
                        <td><%# (Convert.ToInt32(Eval("Price")) * Convert.ToInt32(Eval("Quantity"))) %> KWD</td>
                        <td>
                            <asp:Button ID="btnRemove" runat="server" Text="حذف" 
                                CommandArgument='<%# Eval("Name") %>' 
                                OnClick="btnRemove_Click" CssClass="remove-btn" />
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>

            <asp:Panel ID="pnlEmpty" runat="server" Visible="false">
                <div class="empty-message">السلة فارغة حاليًا.</div>
            </asp:Panel>

            <div class="cart-summary">
                <asp:Label ID="lblTotal" runat="server" Text="الإجمالي: 0 KWD"></asp:Label>
            </div>
        </div>

        <footer>
            <p>© 2025 MR TECH - جميع الحقوق محفوظة</p>
        </footer>
    </form>
</body>
</html>

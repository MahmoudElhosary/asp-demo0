<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="defult.aspx.cs" Inherits="asp_demo.defult_aspx" %>
<!DOCTYPE html>
<html lang="ar">
<head runat="server">
    <meta charset="UTF-8" />
    <title>MR TECH</title>
    <style>
        body { 
            font-family: Arial, sans-serif; 
            background-color: #E0F0FF;
            color: #1a1a1a;
            margin: 0; 
            padding: 0; 
        }

        /* ===== Header ===== */
    /* ===== Header ===== */
header {
    background: linear-gradient(270deg, #ADD8E6, #BFE0FF);
    padding: 10px 40px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    color: #1a1a1a;
    gap: 20px;
}

/* اسم الموقع */
header h1 {
    margin: 0;
    font-size: 28px;
    font-weight: bold;
}

/* ===== Search Box ===== */
.header-search {
    display: flex;
    align-items: center;
    gap: 8px;
    flex-grow: 1;
    max-width: 500px;  /* ضبط الحد الأقصى للعرض */
    justify-content: center;
    background: #f0f4ff;
    padding: 5px 10px;
    border-radius: 25px;
    border: 1px solid #8aaae5;
    box-shadow: 0 2px 6px rgba(0,0,0,0.15);
}

.header-search .ddl {
    padding: 6px 12px;
    border-radius: 20px;
    border: 1px solid #8aaae5;
    outline: none;
    background: #ffffff;
    font-size: 14px;
}

.header-search .search-box {
    padding: 6px 15px;
    border-radius: 20px;
    border: 1px solid #8aaae5;
    outline: none;
    flex-grow: 1;       /* يجعل صندوق البحث يأخذ مساحة متاحة */
    font-size: 14px;
}

.header-search .search-btn {
    padding: 6px 18px;
    border-radius: 20px;
    border:none;
    background:#6a85b6;
    color:#fff;
    cursor:pointer;
    font-weight: bold;
    transition: all 0.3s ease;
}

.header-search .search-btn:hover {
    background:#627bb0;
    transform: scale(1.05);
}

/* ===== Navbar Buttons ===== */
nav {
    display: flex;
    align-items: center;
    gap: 10px;
}

.nav-btn {
    background: #6a85b6;
    color: #fff;
    border: none;
    padding: 8px 16px;
    border-radius: 8px;
    cursor: pointer;
    font-weight: bold;
    font-size: 14px;
    transition: all 0.3s ease;
    text-decoration: none;
}

.nav-btn:hover {
    background: #627bb0;
    transform: scale(1.05);
}

/* ===== Cart ===== */
.cart-btn {
    position: relative;
    display: inline-flex;
    align-items: center;
    justify-content: center;
    font-size: 20px;
    background: #6a85b6;
    width: 45px;
    height: 45px;
    border-radius: 50%;
    padding: 0;
    transition: all 0.3s ease;
    color:#fff;
    text-decoration:none;
    border:none;
}

.cart-btn:hover { background: #627bb0; }

.cart-badge { 
    background: #ff4500; 
    color: #fff; 
    border-radius: 50%; 
    padding: 3px 6px; 
    font-size: 12px; 
    font-weight: bold;
    position: absolute; 
    top: -6px; 
    right: -6px;
    box-shadow: 0 2px 6px rgba(0,0,0,0.3);
}


        /* ===== Sliding Ad ===== */
        .ad-marquee {
            width: 100%;
            height: 160px;
            border-radius: 12px;
            overflow: hidden;
            border: 3px solid #6a85b6;
            margin: 20px auto;
            box-shadow: 0 4px 12px rgba(0,0,0,0.2);
            position: relative;
            background: #E0F0FF;
        }

        .ad-content {
            display: flex;
            gap: 5px;
            animation: marquee-image 25s linear infinite;
            animation-play-state: running;
        }

        .ad-content img {
            height: 160px;
            width: auto;
            border-radius: 12px;
        }

        @keyframes marquee-image {
            from { transform: translateX(0%); }
            to   { transform: translateX(-50%); } 
        }

        /* ===== Product Cards ===== */
        .mobile-container { display: flex; flex-wrap: wrap; justify-content: center; gap: 25px; padding: 20px; }
        .mobile-card { 
            background-color: #ffffff; 
            border: 2px solid #1a1a4d; 
            border-radius: 12px; 
            box-shadow: 0 4px 12px rgba(0,0,0,0.1); 
            padding: 15px; 
            width: 220px; 
            text-align: center; 
            transition: transform 0.3s ease, box-shadow 0.3s ease; 
        }
        .mobile-card img { 
            width: 100%; 
            border-radius: 12px; 
            transition: transform 0.3s ease; 
        }
        .mobile-card:hover { 
            transform: translateY(-5px) scale(1.03); 
            box-shadow: 0 8px 20px rgba(0,0,0,0.15); 
        }
        .mobile-card:hover img { transform: scale(1.05); }
        .mobile-card b, .mobile-card span, .mobile-card p { color: #1a1a4d; }

        .add-to-cart-btn {
            background: #8aaae5;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 8px;
            cursor: pointer;
            font-weight: bold;
            transition: all 0.3s ease;
        }
        .add-to-cart-btn:hover { background:#627bb0; transform: scale(1.05); }

        /* ===== Footer ===== */
        footer { 
            background-color: #B0D4F1; 
            color: #1a1a1a; 
            text-align: center; 
            padding: 15px 0; 
            margin-top: 30px; 
        }
        footer a { color: #1a1a4d; text-decoration: none; margin: 0 5px; font-weight: bold; }
        footer a:hover { text-decoration: underline; }

    </style>
</head>
<body>
    <form id="form1" runat="server">

        <!-- Navbar/Header -->
        <header>
            <h1>MR TECH</h1>

            <div class="header-search">
                <asp:DropDownList ID="ddlCategory" runat="server" CssClass="ddl">
                    <asp:ListItem Value="all">كل الأقسام</asp:ListItem>
                    <asp:ListItem Value="mobile">موبايلات</asp:ListItem>
                    <asp:ListItem Value="laptop">لابتوبات</asp:ListItem>
                    <asp:ListItem Value="tv">تلفزيونات</asp:ListItem>
                    <asp:ListItem Value="watch">ساعات</asp:ListItem>
                    <asp:ListItem Value="printer">طابعات</asp:ListItem>
                </asp:DropDownList>

                <asp:TextBox ID="txtSearch" runat="server" CssClass="search-box" Placeholder="ابحث هنا..."></asp:TextBox>
                <asp:Button ID="btnSearch" runat="server" Text="بحث" CssClass="search-btn" OnClick="btnSearch_Click" />
            </div>

            <nav>
                <asp:HyperLink ID="hlHome" runat="server" NavigateUrl="defult.aspx" CssClass="nav-btn">الرئيسية</asp:HyperLink>
                <asp:HyperLink ID="hlProducts" runat="server" NavigateUrl="Products.aspx" CssClass="nav-btn">جديدنا</asp:HyperLink>
                <asp:HyperLink ID="hlOffers" runat="server" NavigateUrl="Offers.aspx" CssClass="nav-btn">عروض</asp:HyperLink>
                <asp:HyperLink ID="hlContact" runat="server" NavigateUrl="Contact.aspx" CssClass="nav-btn">اتصل بنا</asp:HyperLink>

                <asp:HyperLink ID="hlCart" runat="server" NavigateUrl="Cart.aspx" CssClass="cart-btn">
                    🛒
                    <asp:Label ID="lblCartCount" runat="server" CssClass="cart-badge" Text="0"></asp:Label>
                </asp:HyperLink>
            </nav>
        </header>

        <!-- 🔥 الإعلان المتحرك -->
        <div class="ad-marquee">
            <div class="ad-content">
                <img src="image/ad.png" alt="Ad Banner" />
                <img src="image/adtv.png" alt="Ad Banner" />
                <img src="image/adpc.png" alt="Ad Banner" />
                <img src="image/tff.png" alt="Ad Banner" />
                <img src="image/r.png" alt="Ad Banner" />
                <!-- تكرار لضمان استمرار الحركة -->
                <img src="image/ad.png" alt="Ad Banner" />
                <img src="image/adtv.png" alt="Ad Banner" />
                <img src="image/adpc.png" alt="Ad Banner" />
                <img src="image/tff.png" alt="Ad Banner" />
                <img src="image/r.png" alt="Ad Banner" />
            </div>
        </div>

        <!-- PRODUCTS -->
        <div class="mobile-container">
            <asp:Repeater ID="RepeaterMobiles" runat="server">
                <ItemTemplate>
                    <div class="mobile-card">
                        <img src='<%# Eval("Image") %>' alt="Product" />
                        <br />
                        <b><%# Eval("Name") %></b><br />
                        Price: <%# Eval("Price") %> KWD<br /><br />
                        <asp:Button ID="btnAddToCart" runat="server" 
                            Text="🛒 Add To Cart"
                            CommandArgument='<%# Eval("Name") %>'
                            OnClick="btnAddToCart_Click"
                            CssClass="add-to-cart-btn" />
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>

        <!-- Footer -->
        <footer>
            <p>© 2025 MR TECH - جميع الحقوق محفوظة</p>
            <p>
                تواصل معنا:
                <a href="#">فيسبوك</a> |
                <a href="#">انستجرام</a> |
                <a href="#">تويتر</a>
            </p>
        </footer>

    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="defult.aspx.cs" Inherits="asp_demo.defult_aspx" %>

<!DOCTYPE html>
<html lang="ar" dir="ltr">
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

        /* =================== HEADER  =================== */
        .main-header {
            background-color: #003b65;
            color: #fff;
            padding: 10px 40px;
            display: flex;
            align-items: center;
            gap: 24px;
        }

        .header-left {
            display: flex;
            align-items: center;
            gap: 24px;
        }

        .logo {
            font-size: 28px;
            font-weight: bold;
            color: #ffffff;
            text-decoration: none;
            white-space: nowrap;
        }

        .main-nav {
            display: flex;
            align-items: center;
            gap: 18px;
        }

        .nav-link {
            color: #ffffff;
            text-decoration: none;
            font-size: 15px;
            font-weight: 500;
            position: relative;
            padding-bottom: 2px;
        }

        .nav-link::after {
            content: "";
            position: absolute;
            left: 0;
            bottom: -4px;
            width: 0;
            height: 2px;
            background-color: #f6b800;
            transition: width 0.25s ease;
        }

        .nav-link:hover::after {
            width: 100%;
        }

        /* ===== search in middle ===== */
        .header-search {
            flex: 1;
            display: flex;
            align-items: center;
            max-width: 700px;
        }

        .search-input {
            flex: 1;
            padding: 9px 12px;
            border-radius: 4px 0 0 4px;
            border: none;
            font-size: 14px;
            outline: none;
        }

        .search-button {
            padding: 9px 16px;
            border-radius: 0 4px 4px 0;
            border: none;
            background-color: #f6b800;
            color: #003b65;
            cursor: pointer;
            font-size: 15px;
            font-weight: bold;
        }

        .search-button:hover {
            background-color: #ffd54a;
        }

        /* ===== icons on right ===== */
        .header-right {
            display: flex;
            align-items: center;
            gap: 18px;
            white-space: nowrap;
        }

        .header-icon {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            width: 34px;
            height: 34px;
            border-radius: 50%;
            border: 1px solid rgba(255,255,255,0.4);
            color: #ffffff;
            font-size: 16px;
            text-decoration: none;
            cursor: pointer;
        }

        .header-icon:hover {
            background-color: rgba(255,255,255,0.12);
        }

        .lang-link {
            color: #ffffff;
            text-decoration: none;
            font-size: 14px;
            margin-inline-end: 8px;
        }

        /* cart icon + badge */
        .cart-wrapper {
            position: relative;
        }

        .cart-badge {
            background: #ff4500;
            color: #fff;
            border-radius: 50%;
            padding: 2px 6px;
            font-size: 11px;
            font-weight: bold;
            position: absolute;
            top: -6px;
            right: -6px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.3);
        }

        /* =================== SLIDING AD =================== */
        .ad-marquee {
            width: 90%;
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
            align-items: center;
            width: max-content;
            animation: marquee 50s linear infinite;
        }

        .ad-content img {
            height: 160px;
            width: auto;
            border-radius: 12px;
            display: block;
            object-fit: cover;
        }

        @keyframes marquee {
            0% { transform: translateX(0); }
            100% { transform: translateX(-50%); }
        }

        /* =================== PRODUCT CARDS =================== */
        .mobile-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 25px;
            padding: 20px;
        }

        .mobile-card {
            background-color: #ffffff;
            border: 2px solid #1a1a4d;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            padding: 15px;
            width: 220px;
            text-align: center;
            position: relative;
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

        .mobile-card:hover img {
            transform: scale(1.05);
        }

        .add-to-cart-btn {
            background: #003b65;
            color: #fff;
            border: 2px solid #f6b800; 
            padding: 10px 20px;
            border-radius: 10px;
            cursor: pointer;
            font-weight: bold;
            display: flex;
            align-items:center;
            gap: 8px;
            transition: all 0.3s ease;
            margin: 0 auto;
        }

        .add-to-cart-btn:hover {
            background: #f6b800;
            color: #003b65;
            transform: translateY(-2px);
        }

        /* ===== تقييم النجوم ===== */
        .product-rating {
            display: inline-block;
            font-size: 18px;
            cursor: pointer;
            margin-bottom: 8px;
        }

        .product-rating .star {
            color: #ccc;
            transition: color 0.2s;
        }

        .product-rating .star.selected,
        .product-rating .star:hover,
        .product-rating .star:hover ~ .star {
            color: orange;
        }
        .badge-new, .badge-best {
            position: absolute;
            top: 10px;
            padding: 5px 10px;
            border-radius: 15px;
            font-size: 12px;
            font-weight: bold;
            color: #fff;
            text-transform: uppercase;
            box-shadow: 0 2px 6px rgba(0,0,0,0.3);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .badge-new {
            left: 10px;
            background: linear-gradient(135deg, #28a745, #00c851);
        }

        .badge-best {
            right: 10px;
            background: linear-gradient(135deg, #f6b800, #ffdd57);
        }

        .product-card:hover .badge-new,
        .product-card:hover .badge-best {
            transform: scale(1.1);
            box-shadow: 0 4px 12px rgba(0,0,0,0.4);
        }

        /* ========== Side Cart panel (NEW) ========== */
        .side-overlay {
            position: fixed;
            inset: 0;
            background: rgba(0,0,0,0.45);
            display: none;
            z-index: 9998;
            transition: opacity 0.25s ease;
        }
        .side-overlay.open { display: block; }

        .side-cart {
            position: fixed;
            top: 0;
            right: -420px;
            width: 380px;
            height: 100%;
            background: #fff;
            box-shadow: -6px 0 30px rgba(0,0,0,0.25);
            z-index: 9999;
            padding: 18px;
            transition: right 0.35s ease;
            display: flex;
            flex-direction: column;
        }
        .side-cart.open { right: 0; }

        .side-cart .header {
            display:flex;
            align-items:center;
            justify-content:space-between;
            margin-bottom: 14px;
        }
        .side-cart .header h3 { margin:0; font-size:18px; }
        .side-cart .items { flex:1; overflow:auto; margin-bottom: 14px; }
        .side-cart .cart-item { display:flex; gap:10px; align-items:center; margin-bottom:12px; }
        .side-cart .cart-item img { width:64px; height:64px; object-fit:cover; border-radius:8px; }
        .side-cart .cart-item .meta { font-size:14px; }
        .side-cart .total { font-weight:bold; font-size:16px; text-align:right; margin-bottom:12px; }
        .side-cart .actions { display:flex; gap:10px; }
        .side-cart .btn { padding:10px 12px; border-radius:8px; text-decoration:none; color:#fff; display:inline-block; text-align:center; }
        .side-cart .btn.view { background:#003b65; }
        .side-cart .btn.cont { background:#6c757d; }

        /* =================== FOOTER =================== */
        footer {
            background-color: #B0D4F1;
            color: #1a1a1a;
            text-align: center;
            padding: 15px 0;
            margin-top: 30px;
        }

        footer a {
            color: #1a1a4d;
            text-decoration: none;
            margin: 0 5px;
            font-weight: bold;
        }

        footer a:hover {
            text-decoration: underline;
        }

        @media (max-width: 900px) {
            .main-header {
                padding: 10px 16px;
                flex-wrap: wrap;
                gap: 12px;
            }

            .header-left {
                width: 100%;
                justify-content: flex-start;
            }

            .header-search {
                order: 3;
                width: 100%;
            }

            .header-right {
                margin-left: auto;
            }

            .ad-marquee {
                width: 98%;
            }

            .side-cart { width: 100%; }
        }
    </style>
</head>

<body>
<form id="form1" runat="server">

    <!-- =================== HEADER =================== -->
    <header class="main-header">
        <div class="header-left">
            <asp:HyperLink ID="hlLogo" runat="server" NavigateUrl="defult.aspx" CssClass="logo">MR TECH</asp:HyperLink>

            <nav class="main-nav">
                <asp:HyperLink ID="hlHome" runat="server" NavigateUrl="defult.aspx" CssClass="nav-link">الرئيسية</asp:HyperLink>
                <asp:HyperLink ID="hlProducts" runat="server" NavigateUrl="Products.aspx" CssClass="nav-link">منتجات</asp:HyperLink>
                <asp:HyperLink ID="hlOffers" runat="server" NavigateUrl="Offers.aspx" CssClass="nav-link">عروض</asp:HyperLink>
                <asp:HyperLink ID="hlContact" runat="server" NavigateUrl="Contact.aspx" CssClass="nav-link">اتصل بنا</asp:HyperLink>
            </nav>
        </div>

        <div class="header-search">
            <asp:TextBox ID="txtSearch" runat="server" CssClass="search-input" placeholder="ابحث في MR TECH..."></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" Text="بحث" CssClass="search-button" OnClick="btnSearch_Click" />
        </div>

        <div class="header-right">
            <a href="#" class="lang-link">العربية</a>
            <asp:Button ID="btnLogin" runat="server" Text="👤" CssClass="header-icon" OnClick="btnLogin_Click" />
            <div class="cart-wrapper">
                <asp:HyperLink ID="hlCart" runat="server" NavigateUrl="Cart.aspx" CssClass="header-icon">🛒</asp:HyperLink>
                <asp:Label ID="lblCartCount" runat="server" CssClass="cart-badge" Text="0"></asp:Label>
            </div>
        </div>
    </header>

    <!-- =================== SLIDING AD =================== -->
    <div class="ad-marquee">
        <div class="ad-content">
            <img src="Images/ad.png" alt="Ad 1" />
            <img src="Images/adpc.png" alt="Ad 2" />
            <img src="Images/design.jpg" alt="Ad 3" />
            <img src="Images/mbad.png" alt="Ad 4" />
            <img src="Images/arad.png" alt="Ad 5" />
            
            <img src="Images/ad.png" alt="Ad 1 repeat" />
            <img src="Images/adpc.png" alt="Ad 2 repeat" />
            <img src="Images/design.jpg" alt="Ad 3 repeat" />
            <img src="Images/mbad.png" alt="Ad 4 repeat" />
            <img src="Images/arad.png" alt="Ad 5 repeat" />
        </div>
    </div>

   <!-- =================== PRODUCTS =================== -->
<div class="mobile-container">
    <asp:Repeater ID="RepeaterProducts" runat="server">
        <ItemTemplate>

            <div class="mobile-card">

                <a href='ProductDetails.aspx?id=<%# Eval("ID") %>'>
                    <img src='<%# Eval("Image") %>' 
                        style="width:100%; cursor:pointer;" />
                </a>

                <br />

                <a href='ProductDetails.aspx?id=<%# Eval("ID") %>' 
                   style="text-decoration:none; color:#000;">
                    <b><%# Eval("Name") %></b>
                </a>

                <br />
                Price: <%# Eval("Price") %> KWD<br /><br />

                <div class="product-rating" data-product='<%# Eval("Name") %>'>
                    <span class="star" data-value="1">&#9733;</span>
                    <span class="star" data-value="2">&#9733;</span>
                    <span class="star" data-value="3">&#9733;</span>
                    <span class="star" data-value="4">&#9733;</span>
                    <span class="star" data-value="5">&#9733;</span>
                </div>

                <br />

                <!-- Note: server click only, we will open side from server via RegisterStartupScript -->
                <asp:Button ID="btnAddToCart" runat="server"
                            Text="🛒 Add To Cart"
                            CommandArgument='<%# Eval("ID") %>'
                            OnClick="btnAddToCart_Click"
                            CssClass="add-to-cart-btn" />

                <asp:PlaceHolder runat="server" 
                                 Visible='<%# (bool)Eval("IsNew") %>'>
                    <span class="badge-new">New</span>
                </asp:PlaceHolder>

                <asp:PlaceHolder runat="server" 
                                 Visible='<%# (bool)Eval("IsBestSeller") %>'>
                    <span class="badge-best">Best Seller</span>
                </asp:PlaceHolder>

            </div>

        </ItemTemplate>
    </asp:Repeater>
</div>

<!-- Side cart + overlay (place near end of body) -->
<div id="sideOverlay" class="side-overlay" onclick="hideSideCart()"></div>

<div id="sideCart" class="side-cart" aria-hidden="true">
    <div class="header">
        <h3>🛒 تمت الإضافة إلى السلة</h3>
        <button type="button" onclick="hideSideCart()" style="background:none;border:none;font-size:18px;cursor:pointer;">✕</button>
    </div>

    <div class="items" id="sideCartItems">
        <!-- items will be injected here -->
    </div>

    <div class="total">الإجمالي: <span id="sideCartTotal">0.00</span> KWD</div>

    <div class="actions">
        <a id="goCart" runat="server" href="Cart.aspx" class="btn view">شوف العربة</a>
        <a href="defult.aspx" class="btn cont" onclick="hideSideCart(); return true;">متابعة التسوق</a>
    </div>
</div>

    <!-- =================== FOOTER =================== -->
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

<script>
    // فتح السلايد/ملئ بياناته
    function showSideCart(imgSrc, name, price) {
        // أضف عنصر جديد في قائمة العناصر داخل السلايد
        const itemsArea = document.getElementById('sideCartItems');

        // نضيف عنصر واحد فقط يمثل الإضافة الأخيرة — لو حبيت قائمة كاملة من الجلسة ممكن تجيبها بالـ AJAX لاحقًا
        itemsArea.innerHTML = `
            <div class="cart-item">
                <img src="${imgSrc}" alt="${escapeHtml(name)}" />
                <div class="meta">
                    <div style="font-weight:bold">${escapeHtml(name)}</div>
                    <div>السعر: ${Number(price).toFixed(2)} KWD</div>
                </div>
            </div>
        `;

        // حساب إجمالي بسيط (لو عندك طريقة أفضل من السيرفر يمكنك تعديل هنا)
        document.getElementById('sideCartTotal').innerText = Number(price).toFixed(2);

        // افتح overlay و side
        document.getElementById('sideOverlay').classList.add('open');
        document.getElementById('sideCart').classList.add('open');
        document.getElementById('sideCart').setAttribute('aria-hidden', 'false');

        // حدث: لو عايز تحدّث عداد السلة في الهيدر (lblCartCount) سيرفرياً — هو فعلاً متحدّث بالسيرفر لكن ممكن نعمل update بصري لو حابب
    }

    function hideSideCart() {
        document.getElementById('sideOverlay').classList.remove('open');
        document.getElementById('sideCart').classList.remove('open');
        document.getElementById('sideCart').setAttribute('aria-hidden', 'true');
    }

    function escapeHtml(text) {
        return text.replace(/[&<>"'`=\/]/g, function (s) {
            return {
                '&': '&amp;',
                '<': '&lt;',
                '>': '&gt;',
                '"': '&quot;',
                "'": '&#39;',
                '/': '&#x2F;',
                '`': '&#x60;',
                '=': '&#x3D;'
            }[s];
        });
    }

    // منع إغلاق لو ضغط داخل السلايد
    document.getElementById('sideCart')?.addEventListener('click', function (e) {
        e.stopPropagation();
    });
</script>

</body>
</html>
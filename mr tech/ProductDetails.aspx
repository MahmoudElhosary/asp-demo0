<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="asp_demo.ProductDetails" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Product Details</title>

    <style>
        body {
            font-family: Arial;
            background: #f5f5f5;
        }

        .container {
            width: 95%;
            margin: 25px auto;
            display: flex;
            gap: 25px;
        }

        /* IMAGE SIDE */
        .image-box {
            flex: 1;
            background: #fff;
            padding: 15px;
            border-radius: 12px;
            border: 1px solid #ddd;
        }

        .image-box img {
            width: 100%;
            border-radius: 10px;
        }

        /* TEXT SIDE */
        .details-box {
            flex: 1.5;
            padding: 15px;
            background: #fff;
            border-radius: 12px;
            border: 1px solid #ddd;
        }

        .price {
            font-size: 28px;
            font-weight: bold;
            margin: 10px 0;
            color: #e60000;
        }

        .rating {
            color: gold;
            font-size: 20px;
            margin-bottom: 10px;
        }

        .badges span {
            background: red;
            color: white;
            padding: 4px 10px;
            border-radius: 6px;
            margin-right: 6px;
            font-size: 13px;
        }

        /* DELIVERY BOX */
        .delivery-box {
            background: #fafafa;
            padding: 15px;
            border-radius: 10px;
            border: 1px solid #e1e1e1;
            margin-top: 20px;
            max-width: 430px;
        }

        .delivery-label {
            font-size: 16px;
            font-weight: bold;
            color: #333;
        }

        .delivery-select {
            position: relative;
            margin-top: 8px;
        }

        .delivery-select select {
            width: 100%;
            padding: 12px 40px 12px 12px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 15px;
            background: #fff;
            cursor: pointer;
            appearance: none;
            -webkit-appearance: none;
        }

        .delivery-select .icon {
            position: absolute;
            right: 12px;
            top: 50%;
            transform: translateY(-50%);
            font-size: 18px;
            color: #666;
        }

        .delivery-info-box {
            margin-top: 15px;
            background: #ffffff;
            padding: 14px;
            border-radius: 10px;
            border-left: 4px solid #28a745;
            box-shadow: 0 2px 5px rgba(0,0,0,0.05);
        }

        .delivery-info-title {
            font-size: 16px;
            font-weight: bold;
            color: #222;
            margin-bottom: 5px;
        }

        .delivery-info-detail {
            font-size: 14px;
            color: #333;
            font-weight: 500;
            display: flex;
            gap: 6px;
            align-items: center;
        }

        .delivery-info-detail::before {
            content: "🚚";
            font-size: 20px;
        }

        /* BUTTONS */
        .buttons-box {
            display: flex;
            gap: 12px;
            margin-top: 25px;
        }

        /* زرار Add to Cart */
.add-cart {
    background: #ff9900;
    padding: 10px 18px;
    border-radius: 10px;
    font-weight: bold;
    cursor: pointer;
    border: none;
    transition: 0.25s ease; /* حركة ناعمة */
}

.add-cart:hover {
    transform: translateY(-5px) scale(1.08); /* تكبير + رفع */
    box-shadow: 0 8px 18px rgba(0,0,0,0.25); /* ظل */
    background: #ffa726; /* إضاءة بسيطة */
}

/* زرار Buy Now */
.buy-now {
    background: #008000;
    padding: 10px 18px;
    border-radius: 10px;
    font-weight: bold;
    cursor: pointer;
    border: none;
    color: #fff;
    transition: 0.25s ease;
}

.buy-now:hover {
    transform: translateY(-5px) scale(1.08);
    box-shadow: 0 8px 18px rgba(0,0,0,0.25);
    background: #03a000;
}

    </style>
</head>

<body>
    <form id="form1" runat="server">

        <div class="container">

            <!-- LEFT SIDE (IMAGE) -->
            <div class="image-box">
                <asp:Image ID="imgProduct" runat="server" />
            </div>

            <!-- RIGHT SIDE (DETAILS) -->
            <div class="details-box">

                <h2><asp:Label ID="lblName" runat="server"></asp:Label></h2>

                <div class="price">KWD <asp:Label ID="lblPrice" runat="server"></asp:Label></div>

                <div class="rating">
                    <asp:Label ID="lblRating" runat="server"></asp:Label>
                </div>

                <div class="badges">
                    <asp:Label ID="lblNew" runat="server" Text="NEW" Visible="false"></asp:Label>
                    <asp:Label ID="lblBest" runat="server" Text="BEST SELLER" Visible="false"></asp:Label>
                </div>

                <div class="description">
                    <asp:Label ID="lblDescription" runat="server"></asp:Label>
                </div>


                <!-- DELIVERY SECTION (FULLY IMPROVED) -->
                <div class="delivery-box">

                    <label class="delivery-label">توصيل إلى</label>

                    <div class="delivery-select">
                        <asp:DropDownList ID="ddlCities" runat="server"></asp:DropDownList>
                        <span class="icon">📍</span>
                    </div>

                    <div class="delivery-info-box">
                        <div class="delivery-info-title">موعد الوصول المتوقع</div>
                        <div class="delivery-info-detail">
                            <asp:Label ID="lblDelivery" runat="server"></asp:Label>
                        </div>
                    </div>

                </div>

                <!-- BUTTONS -->
                <div class="buttons-box">
                    <asp:Button ID="btnAdd" runat="server" Text="Add to Cart" CssClass="add-cart" OnClick="btnAdd_Click" />
                    <asp:Button ID="btnBuy" runat="server" Text="Buy Now" CssClass="buy-now" OnClick="btnBuy_Click" />
                </div>

            </div>
        </div>

    </form>
</body>
</html>
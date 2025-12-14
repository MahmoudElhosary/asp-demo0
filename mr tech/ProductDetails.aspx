<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="asp_demo.ProductDetails" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <title>Product Details</title>

    <style>
        body {
            margin: 0;
            background: #ccc3c3;
            font-family: 'Segoe UI', sans-serif;
            color: #fff;
        }

        .pd-wrapper {
            max-width: 1200px;
            margin: 60px auto;
            background: #24385c;
            border-radius: 20px;
            display: grid;
            grid-template-columns: 1fr 1fr;
            overflow: hidden;
            box-shadow: 0 30px 80px rgba(0,0,0,0.45);
        }

        /* IMAGE */
        .pd-image {
            background: #fff;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 40px;
        }

        .pd-image img {
            width: 100%;
            max-width: 420px;
            border-radius: 14px;
        }

        /* INFO */
        .pd-info {
            padding: 45px;
        }

        .pd-category {
            font-size: 13px;
            letter-spacing: 1px;
            text-transform: uppercase;
            color: #4468aa;
            margin-bottom: 6px;
        }

        .pd-title {
            font-size: 34px;
            font-weight: 700;

            margin-bottom: 10px;
        }

        .pd-price {
            font-size: 32px;
            font-weight: bold;
            color: #facc15;
            margin: 15px 0;
        }

        .pd-rating {
            color: gold;
            font-size: 20px;
            margin-bottom: 15px;
        }

        .badges span {
            background: #dc2626;
            padding: 6px 14px;
            border-radius: 20px;
            font-size: 12px;
            margin-right: 8px;
        }

        /* TABS */
        .tabs {
            display: flex;
            gap: 20px;
            margin: 30px 0 15px;
            font-size: 14px;
            font-weight: bold;
        }

        .tab.active {
            color: #facc15;
            border-bottom: 2px solid #facc15;
            padding-bottom: 5px;
        }

        .description {
            color: #d1d5db;
            line-height: 1.7;
            font-size: 15px;
        }

        /* DELIVERY */
       /* .delivery-box {
            background: #162542;
            padding: 20px;
            border-radius: 14px;
            margin-top: 25px;
            border: 1px solid #364357;
        }

        .delivery-box label {
            font-size: 14px;
            color: #9ca3af;
        }

        .delivery-box select {
            width: 100%;
            padding: 10px;
            border-radius: 8px;
            margin: 10px 0;
            background: #1b3056;
            color: #fff;
            border: 1px solid #334155;
        }

        .delivery-date {
            color: #22c55e;
            font-weight: bold;
            font-size: 14px;
        }*/

        /* BUTTONS */
        .actions {
            display: flex;
            gap: 15px;
            margin-top: 30px;
        }

        .btn-cart {
            flex: 1;
            background: #facc15;
            border: none;
            padding: 14px;
            border-radius: 14px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
        }

        .btn-buy {
            flex: 1;
            background: #22c55e;
            border: none;
            padding: 14px;
            border-radius: 14px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            color: #000;
        }

        .btn-cart:hover,
        .btn-buy:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 20px rgba(0,0,0,0.35);
        }

        @media(max-width:900px) {
            .pd-wrapper {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>

<body>
<form id="form1" runat="server">

    <div class="pd-wrapper">

        <!-- IMAGE -->
        <div class="pd-image">
            <asp:Image ID="imgProduct" runat="server" />
        </div>

        <!-- INFO -->
        <div class="pd-info">

            <div class="pd-category">Smartphone</div>

            <div class="pd-title">
                <asp:Label ID="lblName" runat="server" />
            </div>

            <div class="pd-price">
                KWD <asp:Label ID="lblPrice" runat="server" />
            </div>

            <div class="pd-rating">
                <asp:Label ID="lblRating" runat="server" />
            </div>

            <div class="badges">
                <asp:Label ID="lblNew" runat="server" Text="NEW" Visible="false" />
                <asp:Label ID="lblBest" runat="server" Text="BEST SELLER" Visible="false" />
            </div>

            <div class="tabs">
                <div class="tab active">Description</div>
                <div class="tab">Details</div>
                <div class="tab">Comments</div>
            </div>

            <div class="description">
                <asp:Label ID="lblDescription" runat="server" />
            </div>

            
            <!-- ACTIONS -->
            <div class="actions">
                <asp:Button ID="btnAdd" runat="server" Text="Add to Cart" CssClass="btn-cart" OnClick="btnAdd_Click" />
                <asp:Button ID="btnBuy" runat="server" Text="Buy Now" CssClass="btn-buy" OnClick="btnBuy_Click" />
            </div>

        </div>
    </div>

</form>
</body>
</html>

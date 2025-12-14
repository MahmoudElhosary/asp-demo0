<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="asp_demo.Cart" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>My Cart</title>

    <style>
        body {
            background: #eef1f4;
            font-family: Arial;
        }

        .cart-wrapper {
            width: 90%;
            max-width: 1200px;
            margin: 50px auto;
            background: #fff;
            border-radius: 12px;
            padding: 30px;
        }

        .cart-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 30px;
        }

        .cart-header a {
            text-decoration: none; /* شيل الخط */
            color: #000;
        }

        .cart-head {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            font-size: 13px;
            color: #888;
            border-bottom: 1px solid #ddd;
            padding-bottom: 10px;
            margin-bottom: 20px;
        }

        .cart-item {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            align-items: center;
            padding: 20px 0;
            border-bottom: 1px solid #eee;
        }

        .product {
            display: flex;
            gap: 15px;
            align-items: center;
        }

        .product img {
            width: 70px;
        }

        .qty button {
            width: 28px;
            height: 28px;
            border-radius: 50%;
            border: 1px solid #ccc;
            background: none;
            cursor: pointer;
        }

        .bottom {
            display: flex;
            justify-content: space-between;
            margin-top: 30px;
            background: #f4f6f8;
            padding: 20px;
            border-radius: 12px;
        }

        .coupon-input {
            padding: 10px 14px;
            border-radius: 8px;
            border: 1px solid #ccc;
            width: 180px;
        }

        .coupon-btn {
            padding: 10px 18px;
            border-radius: 8px;
            border: none;
            background: #1976d2;
            color: #fff;
            cursor: pointer;
        }

        .checkout-btn {
            background: #2e7d32;
            color: #fff;
            border: none;
            padding: 14px 40px;
            border-radius: 10px;
            cursor: pointer;
        }
    </style>
</head>

<body>
<form runat="server">

<div class="cart-wrapper">

    <!-- Header -->
    <div class="cart-header">
        <h2>My Cart</h2>
        <a href="Defult.aspx">← Continue shopping</a>
    </div>

    <!-- Table Head -->
    <div class="cart-head">
        <div>PRODUCT</div>
        <div>PRICE</div>
        <div>QTY</div>
        <div>TOTAL</div>
    </div>

    <!-- Items -->
    <asp:Repeater ID="RepeaterCart" runat="server">
        <ItemTemplate>
            <div class="cart-item">
                <div class="product">
                    <img src="<%# Eval("Image") %>" />
                    <div><%# Eval("Name") %></div>
                </div>

                <div><%# Eval("Price") %> KWD</div>

                <div class="qty">
                    <asp:Button runat="server" Text="-" CommandArgument='<%# Eval("ID") %>' OnClick="DecreaseQuantity" />
                    <%# Eval("Quantity") %>
                    <asp:Button runat="server" Text="+" CommandArgument='<%# Eval("ID") %>' OnClick="IncreaseQuantity" />
                </div>

                <div>
                    <%# Eval("Price") %> KWD
                    <asp:Button runat="server" Text="×" CommandArgument='<%# Eval("ID") %>' OnClick="RemoveFromCart" />
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>

    <!-- Bottom -->
    <div class="bottom">

        <!-- Shipping -->
        <div>
            <strong>Choose shipping mode</strong><br /><br />

            <asp:RadioButton ID="rbPickup" runat="server"
                GroupName="shipping"
                Text=" Store pickup (FREE)"
                Checked="true"
                AutoPostBack="true"
                OnCheckedChanged="ShippingChanged" />

            <br />

            <asp:RadioButton ID="rbDelivery" runat="server"
                GroupName="shipping"
                Text=" Delivery home (3.00 KWD)"
                AutoPostBack="true"
                OnCheckedChanged="ShippingChanged" />
        </div>

        <!-- Coupon -->
        <div>
            <strong>Coupon code</strong><br /><br />

            <asp:TextBox ID="txtCoupon" runat="server" CssClass="coupon-input" />
            <asp:Button ID="btnApplyCoupon" runat="server"
                Text="Apply"
                CssClass="coupon-btn"
                OnClick="btnApplyCoupon_Click" />

            <br /><br />
            <asp:Label ID="lblCouponMsg" runat="server" ForeColor="Red" />
        </div>

        <!-- Checkout -->
        <div>
            <strong>Total:</strong>
            <asp:Label ID="lblTotal" runat="server" /> KWD
            <br /><br />

           <asp:Button 
    ID="btnCheckout" 
    runat="server"
    Text="Checkout"
    CssClass="checkout-btn"
    OnClick="btnCheckout_Click" />
 
               
              
        </div>

    </div>

</div>

</form>
</body>
</html>

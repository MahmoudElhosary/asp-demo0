<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="asp_demo.Checkout" %>

<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head runat="server">
    <meta charset="UTF-8" />
    <title>Checkout</title>

    <style>
        body {
            background:#f6f8fb;
            font-family: Tahoma;
            margin:0;
            padding:40px;
        }

        .checkout-container {
            max-width:1200px;
            margin:auto;
            display:grid;
            grid-template-columns: 2fr 1fr;
            gap:30px;
        }

        .card {
            background:#fff;
            border-radius:14px;
            padding:25px;
            box-shadow:0 6px 20px rgba(0,0,0,0.08);
        }

        h3 {
            margin-top:0;
            margin-bottom:20px;
            font-size:20px;
            color:#222;
        }

        /* ===== Shipping ===== */
        .form-group {
            margin-bottom:15px;
        }

        .form-group label {
            display:block;
            font-size:14px;
            margin-bottom:6px;
            color:#444;
        }

        .form-group input,
        .form-group select {
            width:100%;
            padding:12px;
            border-radius:8px;
            border:1px solid #ddd;
            font-size:14px;
        }

        .row {
            display:flex;
            gap:12px;
        }

        /* ===== Order Summary ===== */
        .summary-item {
            display:flex;
            align-items:center;
            gap:12px;
            margin-bottom:15px;
        }

        .summary-item img {
            width:60px;
            height:60px;
            border-radius:8px;
            object-fit:cover;
        }

        .summary-item .info {
            flex:1;
            font-size:14px;
        }

        .summary-total {
            border-top:1px solid #eee;
            margin-top:15px;
            padding-top:15px;
            font-size:18px;
            font-weight:bold;
            display:flex;
            justify-content:space-between;
        }

        /* ===== Payment ===== */
        .payment-methods {
            display:flex;
            gap:15px;
            margin-bottom:20px;
        }

        .pay-box {
            flex:1;
            border:2px solid #eee;
            border-radius:12px;
            padding:14px;
            text-align:center;
            cursor:pointer;
            transition:.25s;
        }

        .pay-box:hover,
        .pay-box.active {
            border-color:#4f46e5;
            background:#f0f2ff;
        }

        .place-order {
            width:100%;
            padding:14px;
            background:#4f46e5;
            color:#fff;
            font-size:16px;
            font-weight:bold;
            border:none;
            border-radius:10px;
            cursor:pointer;
        }

        .place-order:hover {
            background:#4338ca;
        }

        @media(max-width:900px){
            .checkout-container{
                grid-template-columns:1fr;
            }
        }
    </style>
</head>

<body>
<form runat="server">

<div class="checkout-container">

    <!-- LEFT -->
    <div>

        <!-- Shipping -->
        <div class="card">
            <h3>📦 Shipping Address</h3>

            <div class="form-group">
                <label>الاسم</label>
                <asp:TextBox ID="txtName" runat="server" placeholder="الاسم بالكامل" />
            </div>

            <div class="form-group">
    <label>البريد الالكتروني</label>
    <asp:TextBox ID="TextEmail" runat="server" placeholder="example@gmail.com" />
</div>

            <div class="form-group">
                <label>العنوان</label>
                <asp:TextBox ID="txtAddress" runat="server" placeholder="الشارع / المبنى" />
            </div>

            <div class="form-group">
                <label>المحافظة</label>
                <asp:DropDownList ID="ddlCity" runat="server" />
            </div>
        </div>

        <!-- Payment -->
        <div class="card" style="margin-top:25px">
            <h3>💳 Payment Method</h3>

            <div class="payment-methods">
                <div class="pay-box active">Visa/MasterCard</div>
                <div class="pay-box">KNET</div>
                <div class="pay-box">Tabby</div>
            </div>

            <asp:Button ID="btnPlaceOrder" runat="server"
                Text="Place Order"
                CssClass="place-order"
                OnClick="btnPlaceOrder_Click" />
        </div>

    </div>

    <!-- RIGHT -->
    <div class="card">
        <h3>🧾 Order Summary</h3>

        <asp:Repeater ID="RepeaterSummary" runat="server">
            <ItemTemplate>
                <div class="summary-item">
                    <img src="<%# Eval("Image") %>" />
                    <div class="info">
                        <%# Eval("Name") %><br />
                        Qty: <%# Eval("Quantity") %>
                    </div>
                    <b><%# Eval("Price") %> KWD</b>
                </div>
            </ItemTemplate>
        </asp:Repeater>

        <div class="summary-total">
            <span>Total</span>
            <span><asp:Label ID="lblTotal" runat="server" /></span>
        </div>
    </div>

</div>

</form>
</body>
</html>

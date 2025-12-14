<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="asp_demo.Payment" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Payment</title>

    <style>
        body {
            background: #eef1f4;
            font-family: Arial;
        }

        .payment-box {
            width: 420px;
            margin: 80px auto;
            background: #fff;
            padding: 30px;
            border-radius: 14px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.15);
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
        }

        .method {
            margin-bottom: 15px;
            font-size: 15px;
        }

        .card-form input {
            width: 100%;
            padding: 10px;
            margin-bottom: 12px;
            border-radius: 8px;
            border: 1px solid #ccc;
        }

        .pay-btn {
            width: 100%;
            padding: 12px;
            border: none;
            background: #2e7d32;
            color: #fff;
            font-size: 15px;
            border-radius: 10px;
            cursor: pointer;
        }

        .pay-btn:hover {
            background: #1b5e20;
        }
    </style>
</head>

<body>
<form runat="server">

<div class="payment-box">

    <h2>Choose Payment Method</h2>

    <!-- Payment options -->
    <div class="method">
        <asp:RadioButton ID="rbVisa" runat="server"
            GroupName="pay"
            Text=" Pay with Visa"
            AutoPostBack="true"
            OnCheckedChanged="PaymentChanged" />
    </div>

    <div class="method">
        <asp:RadioButton ID="rbKnet" runat="server"
            GroupName="pay"
            Text=" Pay with KNET"
            AutoPostBack="true"
            OnCheckedChanged="PaymentChanged" />
    </div>

    <!-- Visa Form -->
    <asp:Panel ID="pnlVisa" runat="server" Visible="false" CssClass="card-form">
        <input type="text" placeholder="Card Number" />
        <input type="text" placeholder="Card Holder Name" />
        <input type="text" placeholder="MM / YY" />
        <input type="text" placeholder="CVV" />
    </asp:Panel>

    <br />

    <asp:Button ID="btnConfirm" runat="server"
        Text="Confirm Payment"
        CssClass="pay-btn"
        OnClick="btnConfirm_Click" />

</div>

</form>
</body>
</html>

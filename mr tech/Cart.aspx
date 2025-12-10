<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="asp_demo.Cart" %>

<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head runat="server">
    <meta charset="UTF-8" />
    <title>سلة التسوق</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
    <style>
        body { background: #eef4fb; font-family: 'Tahoma', sans-serif; padding: 30px 0; }
        .cart-container { width: 80%; margin: auto; background: white; padding: 30px; border-radius: 15px; box-shadow: 0 4px 20px rgba(0,0,0,0.1); }
        .title { font-size: 28px; font-weight: bold; color: #0d47a1; margin-bottom: 20px; }
        .cart-item { display: flex; gap: 20px; padding: 20px; margin-bottom: 20px; border-radius: 12px; background: #f8fbff; border: 2px solid #d2e3fc; align-items: center; }
        .cart-item img { width: 140px; height: 140px; border-radius: 10px; object-fit: cover; }
        .item-info { flex: 1; }
        .item-name { font-size: 20px; font-weight: bold; margin-bottom: 10px; }
        .item-price { font-size: 18px; color: #1a237e; margin-bottom: 10px; }
        .quantity-control { display: flex; align-items: center; gap: 5px; margin-bottom: 10px; }
        .quantity-btn { padding: 4px 10px; border: none; background: #0d47a1; color: white; cursor: pointer; border-radius: 5px; }
        .remove-btn { background: #d32f2f; padding: 8px 18px; color: white; border-radius: 8px; border: none; cursor: pointer; }
        .total-section { text-align: center; margin-top: 25px; font-size: 22px; font-weight: bold; color: #0d47a1; padding: 15px; background: #e3f2fd; border-radius: 12px; }
        .pay-buttons { margin-top: 25px; display: flex; justify-content: center; gap: 18px; }
        .pay-btn { padding: 14px 30px; font-size: 18px; font-weight: bold; border-radius: 10px; border: none; cursor: pointer; color: white !important; text-decoration: none; display: flex; align-items: center; gap: 10px; }
        .pay-tamara { background: #ffcc00; } .pay-tamara:hover { background: #e6b800; }
        .pay-tabby { background: #00c2a8; } .pay-tabby:hover { background: #009e87; }
        .pay-visa { background: #1a237e; } .pay-visa:hover { background: #151c63; }
        .empty-cart { text-align: center; font-size: 22px; color: #666; margin: 40px 0; }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div class="cart-container">
            <div class="title">🛒 سلة التسوق</div>

            <asp:Repeater ID="RepeaterCart" runat="server">
                <ItemTemplate>
                    <div class="cart-item">
                        <img src='<%# Eval("Image") %>' />
                        <div class="item-info">
                            <div class="item-name"><%# Eval("Name") %></div>
                            <div class="item-price">السعر: <%# Eval("Price") %> KWD</div>

                            <div class="quantity-control">
                                <asp:Button ID="btnDecrease" runat="server" Text="-" CssClass="quantity-btn" CommandArgument='<%# Eval("ID") %>' OnClick="DecreaseQuantity" />
                                <asp:Label ID="lblQuantity" runat="server" Text='<%# Eval("Quantity") %>'></asp:Label>
                                <asp:Button ID="btnIncrease" runat="server" Text="+" CssClass="quantity-btn" CommandArgument='<%# Eval("ID") %>' OnClick="IncreaseQuantity" />
                            </div>

                            <asp:Button ID="btnRemove" runat="server" Text="حذف" CssClass="remove-btn" CommandArgument='<%# Eval("ID") %>' OnClick="RemoveFromCart" />
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>

            <asp:Panel ID="pnlEmpty" runat="server" Visible="false">
                <div class="empty-cart">السلة فارغة حالياً.</div>
            </asp:Panel>

            <div class="total-section">
                الإجمالي: <asp:Label ID="lblTotal" runat="server" Text="0.00"></asp:Label> KWD
            </div>

            <div class="pay-buttons">
                <asp:LinkButton ID="btnPayTamara" runat="server" CssClass="pay-btn pay-tamara" OnClick="btnPayTamara_Click">
                    <i class="fa-solid fa-money-bill-wave"></i> تمارا
                </asp:LinkButton>
                <asp:LinkButton ID="btnPayTabby" runat="server" CssClass="pay-btn pay-tabby" OnClick="btnPayTabby_Click">
                    <i class="fa-solid fa-credit-card"></i> تابي
                </asp:LinkButton>
                <asp:LinkButton ID="btnPayVisa" runat="server" CssClass="pay-btn pay-visa" OnClick="btnPayVisa_Click">
                    <i class="fa-brands fa-cc-visa"></i> فيزا
                </asp:LinkButton> 
            </div>
        </div>
    </form>
</body>
</html>

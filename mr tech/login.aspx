<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="asp_demo.Login" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8" />
    <title>Sign In</title>

    <style>
        html, body {
            height: 100%;
            margin: 0;
            font-family: Arial, sans-serif;
        }

        .container {
            display: flex;
            height: 100vh;
        }

        /* LEFT SIDE IMAGE */
        .left-side {
            width: 50%;
            background-image: url("images/cover.jpg");
            background-size: cover;
            background-position: center;
        }

        /* RIGHT SIDE - LOGIN FORM */
        .right-side {
            width: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: white;
        }

        .form-box {
            width: 350px;
        }

        .form-box h1 {
            font-size: 26px;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .form-box p.subtitle {
            color: gray;
            margin-bottom: 25px;
        }

        .input {
            width: 100%;
            padding: 12px;
            margin-bottom: 15px;
            border: none;
            border-bottom: 1px solid #ccc;
            outline: none;
            font-size: 15px;
        }

        .btn-login {
            width: 100%;
            padding: 13px;
            border: none;
            border-radius: 5px;
            background-color: #1c37b5;
            color: white;
            font-size: 16px;
            cursor: pointer;
            margin-bottom: 15px;
        }

        .btn-login:hover {
            background-color: #5261a8;
        }

        .login-link {
            font-size: 14px;
            text-align: center;
            margin-top: 10px;
        }

        .login-link a {
            color: black;
            text-decoration: underline;
        }

        .error-msg {
            color: red;
            margin-bottom: 10px;
        }
    </style>

</head>
<body>

    <form id="form1" runat="server">
        <div class="container">

            <!-- IMAGE -->
            <div class="left-side"></div>

            <!-- FORM -->
            <div class="right-side">
                <div class="form-box">

                    <h1>Sign in</h1>
                    <p class="subtitle">Enter your details below</p>

                    <asp:Label ID="lblError" runat="server" CssClass="error-msg"></asp:Label>

                    <asp:TextBox ID="txtUsername" runat="server" CssClass="input" placeholder="Email or Phone Number"></asp:TextBox>

                    <asp:TextBox ID="txtPassword" runat="server" CssClass="input" TextMode="Password" placeholder="Password"></asp:TextBox>

                    <asp:Button ID="btnLogin" runat="server" CssClass="btn-login" Text="Sign in" OnClick="btnLogin_Click" />

                    <p class="login-link">
                        Don’t have an account? <a href="Register.aspx">Sign up</a>
                    </p>

                </div>
            </div>

        </div>
    </form>

</body>
</html>

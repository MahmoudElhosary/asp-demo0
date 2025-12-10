<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="asp_demo.Register" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8" />
    <title>Create Account</title>

    <style>
        html, body { height: 100%; margin: 0; font-family: Arial, sans-serif; }
        .container { display: flex; height: 100vh; }

        .left-side {
            width: 50%;
            background-image: url("images/cover.jpg");
            background-size: cover;
            background-position: center;
        }

        .right-side {
            width: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: white;
        }

        .form-box { width: 360px; }

        .input {
            width: 100%; padding: 12px; margin-bottom: 15px;
            border: none; border-bottom: 1px solid #ccc; outline: none; font-size: 15px;
        }

        .radio-group { margin-bottom: 20px; font-size: 15px; }
        .btn-create {
            width: 100%; padding: 13px; border: none; border-radius: 5px;
            background-color: #143865; color: white; font-size: 16px; cursor: pointer;
            margin-bottom: 15px;
        }
        .btn-create:hover { background-color: #5261a8; }

        .btn-google {
            width: 100%; padding: 12px;
            background-color: white; border: 1px solid #ccc; border-radius: 5px;
            cursor: pointer; font-size: 15px; display: flex; align-items: center;
            justify-content: center; gap: 10px; margin-bottom: 15px;
            text-decoration: none; color: black;
        }
        .btn-google:hover { background-color: #eee; }
        .google-icon { width: 22px; height: 22px; }

        .error-msg { color: red; margin-bottom: 10px; }
        h1 { margin-bottom: 5px; }
        p.subtitle { color: gray; margin-bottom: 20px; }
    </style>
</head>
<body>
<form id="form1" runat="server">
    <div class="container">
        <div class="left-side"></div>

        <div class="right-side">
            <div class="form-box">
                <h1>Create an account</h1>
                <p class="subtitle">Enter your details below</p>

                <asp:Label ID="lblMessage" runat="server" CssClass="error-msg"></asp:Label>

                <asp:TextBox ID="txtFullName" runat="server" CssClass="input" placeholder="Name"></asp:TextBox>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="input" placeholder="Email or Phone"></asp:TextBox>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="input" TextMode="Password" placeholder="Password"></asp:TextBox>

                <div class="radio-group">
                    <asp:RadioButton ID="rdoMale" runat="server" GroupName="gender" Text="Male" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="rdoFemale" runat="server" GroupName="gender" Text="Female" />
                </div>

                <asp:Button ID="btnRegister" runat="server" CssClass="btn-create" Text="Create Account" OnClick="btnRegister_Click" />

                <!-- GOOGLE SIGN-IN -->
                <asp:HyperLink ID="hlGoogleSignIn" runat="server" CssClass="btn-google" Target="_self">
                    <img src="images/google.jpg" class="google-icon" /> Sign in with Google
                </asp:HyperLink>
            </div>
        </div>
    </div>
</form>
</body>
</html>

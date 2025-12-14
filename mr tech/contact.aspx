<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="asp_demo.Contact" %>

<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head runat="server">
    <meta charset="UTF-8" />
    <title>اتصل بنا - MR TECH</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #E0F0FF;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .contact-box {
            background: #fff;
            padding: 30px 40px;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.2);
            width: 400px;
        }

        .contact-box h2 {
            text-align: center;
            color: #003b65;
            margin-bottom: 20px;
        }

        .contact-box input, .contact-box textarea {
            width: 100%;
            padding: 10px 12px;
            margin-bottom: 15px;
            border-radius: 6px;
            border: 1px solid #ccc;
            font-size: 14px;
        }

        .contact-box button {
            width: 100%;
            background-color: #f6b800;
            color: #003b65;
            border: none;
            padding: 12px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            border-radius: 6px;
            transition: 0.3s;
        }

        .contact-box button:hover {
            background-color: #ffd54a;
        }
        .call-btn {
    display: block;
    width: 100%;
    text-align: center;
    background-color: #28a745;
    color: white;
    padding: 12px;
    font-size: 16px;
    border-radius: 6px;
    text-decoration: none;
    font-weight: bold;
    margin-bottom: 15px;
    transition: 0.3s;
}

.call-btn:hover {
    background-color: #34d058;
}
        #status {
            text-align: center;
            margin-top: 10px;
            font-weight: bold;
        }

        .success {
            color: green;
        }

        .error {
            color: red;
        }

    </style>
</head>

<body>

    <div class="contact-box">
        <h2>اتصل بنا</h2>

        <form id="contactForm">
            <input type="text" id="name" placeholder="الاسم" required>
            <input type="email" id="email" placeholder="البريد الإلكتروني" required>
            <textarea id="message" placeholder="رسالتك" rows="5" required></textarea>

            <button type="submit">إرسال</button>
            <button onclick="window.location.href='tel:+96556565656'" type="button" style="margin-top:10px; background-color:#003b65; color:white;">
    اتصال مباشرة
</button>
        </form>

        <p id="status"></p>
    </div>

    <!-- EmailJS Library -->
    <script src="https://cdn.jsdelivr.net/npm/@emailjs/browser@4/dist/email.min.js"></script>

    <script>
        // Initialize EmailJS with your public key
        emailjs.init("02CjcMHfsgba1rqK8");

        document.getElementById("contactForm").addEventListener("submit", function (e) {
            e.preventDefault(); // منع الريفريش

            emailjs.send("service_ezhkozb", "template_nvr6sqd", {
                name: document.getElementById("name").value,
                email: document.getElementById("email").value,
                message: document.getElementById("message").value
            })
                .then(function () {
                    document.getElementById("status").innerHTML = "تم إرسال رسالتك بنجاح ✓";
                    document.getElementById("status").className = "success";

                    // Clear fields
                    document.getElementById("name").value = "";
                    document.getElementById("email").value = "";
                    document.getElementById("message").value = "";
                })
                .catch(function () {
                    document.getElementById("status").innerHTML = "حدث خطأ أثناء الإرسال، حاول مرة أخرى!";
                    document.getElementById("status").className = "error";
                });
        });
    </script>

</body>
</html>
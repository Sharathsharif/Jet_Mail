<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Jet_Mail.Register" %>





<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Jet Mail</title>
    <!-- meta tags -->
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="keywords" content="" />
    <link href="~/Content/bootstrap.min.css" rel="stylesheet" />



</head>


<body>
    <form runat="server">


        <h1>Registration Form</h1>
        <div class=" w3l-login-form" action="#">
            <h2>Register Here</h2>

            <div class=" w3l-form-group">
                <label>Name:</label>
                <div class="group">
                   
                    <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Name" required="required"></asp:TextBox>

                </div>
            </div>
            <div class=" w3l-form-group">
                <label>Date of Birth:</label>
                <div class="group">
                  
                    <asp:TextBox ID="TextBox2" TextMode="Date" runat="server" class="form-control"  required="required"></asp:TextBox>

                </div>
            </div>
            <div class=" w3l-form-group">
                <label>Gender:</label>
                <div class="group">
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:CheckBoxList>
                  
                </div>
            </div>

             <div class=" w3l-form-group">
                <label>Contact Number:</label>
                <div class="group">
                   
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Number" class="form-control" placeholder="Phone Number" required="required"></asp:TextBox>

                </div>
            </div>
             <div class=" w3l-form-group">
                <label>Email Id:</label>
                <div class="group">
                   
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Email" class="form-control" placeholder="Email iD" required="required"></asp:TextBox>

                </div>
            </div>

             <div class=" w3l-form-group">
                <label>Address:</label>
                <div class="group">
                   
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" class="form-control" placeholder="Address" required="required"></asp:TextBox>

                </div>
            </div>

            <div class="forgot">
                <a href="#">Forgot Password?</a>
                <p>
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember Me" />
                </p>
            </div>
            <button type="submit">Login</button>

           <p class="w3l-register-p">Don't have an account?

    <a href="Register.aspx" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#Register"> Register Here </a>
</p>





        <footer>
            <p class="copyright-agileinfo">Jet Mail By Sharath </p>
        </footer>
    </form>

    <%--CSS Styling--%>
    <style>
        body {
            margin: 0;
            padding: 0;
            background: url(../assets/Images/cover1.jpg) no-repeat 0px 0px;
            min-height: 100vh;
            background-size: cover;
            font-family: 'Raleway', sans-serif;
        }

        h1 {
            margin: 0;
            color: #ffffff;
            text-align: center;
            font-size: 50px;
            font-weight: 500;
            letter-spacing: 2px;
            padding: 50px 0;
        }

        h2 {
            margin: 0;
            color: #fc3955;
            font-size: 25px;
            font-weight: 400;
            text-align: center;
            letter-spacing: 1px;
            padding-bottom: 30px;
        }

        p.w3l-register-p {
            color: #eee;
            font-size: 13px;
            text-align: center;
            margin-top: 2em;
        }

        .w3l-login-form {
            background: rgba(0, 0, 0, 0.4117647058823529);
            max-width: 500px;
            margin: 0 auto;
            padding: 3em;
            border-radius: 10px;
            box-sizing: border-box;
        }

        .group {
            display: flex;
            padding: 15px 5px;
            background-color: #ffffff;
        }

            .group i {
                color: #fc3955;
                font-size: 20px;
                padding: 0 10px;
            }

        .w3l-form-group {
            margin: 20px 0;
        }

            .w3l-form-group label {
                display: block;
                text-transform: uppercase;
                font-size: 13px;
                color: #d2d2d2;
                letter-spacing: 2px;
                margin-bottom: 10px;
                font-style: italic;
            }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            border: none;
            box-sizing: border-box;
            background: transparent;
            color: #000;
        }

            input[type="text"]:focus,
            input[type="password"]:focus {
                outline: none;
            }

        button {
            background: #fc3955;
            color: #ffffff;
            font-size: 13px;
            text-transform: uppercase;
            letter-spacing: 1px;
            border: none;
            padding: 12px 60px;
            cursor: pointer;
            width: 100%;
            border-radius: 6px;
        }

            button:hover {
                background-color: #00BCD4;
                transition-duration: 5s;
            }

        .forgot {
            display: flex;
            justify-content: space-between;
            margin: 20px 0;
        }

        a {
            color: #eee;
            font-size: 14px;
            text-decoration: none;
        }

        .forgot p {
            color: #ffffff;
            text-align: center;
            margin: 0px;
            font-size: 13px;
        }

        .register {
            color: #00BCD4;
            text-decoration: none;
        }

        /*--footer--*/

        p.copyright-agileinfo {
            font-size: 15px;
            letter-spacing: 2px;
            color: #fff;
            font-weight: 300;
        }

        footer p a {
            display: inline-block;
            color: #fff;
            text-decoration: underline;
        }

            footer p a:hover {
                color: #fff;
                text-decoration: none;
                -webkit-transition: 0.5s all;
                -o-transition: 0.5s all;
                -moz-transition: 0.5s all;
                -ms-transition: 0.5s all;
                transition: 0.5s all;
            }

        footer {
            padding: 4em 0;
            text-align: center;
        }
        /*--//footer--*/

        /*-- /responsive design --*/

        @media(max-width:768px) {
            h1 {
                font-size: 47px;
            }
        }

        @media(max-width:667px) {
            h1 {
                font-size: 45px;
            }
        }

        @media(max-width:640px) {
            p.copyright-agileinfo {
                letter-spacing: 1px;
            }

            h1 {
                font-size: 43px;
            }
        }

        @media(max-width:568px) {
            h1 {
                font-size: 40px;
            }

            p.copyright-agileinfo {
                font-size: 14px;
            }
        }

        @media(max-width:480px) {
            .w3l-login-form {
                margin: 0 3vw;
            }

            h1 {
                font-size: 38px;
            }

            p.copyright-agileinfo {
                line-height: 1.8em;
            }
        }

        @media(max-width:414px) {
            h1 {
                font-size: 34px;
            }
        }

        @media(max-width:384px) {
            h1 {
                font-size: 30px;
            }
        }

        @media(max-width:320px) {
            h1 {
                font-size: 25px;
            }

            .forgot p {
                text-align: left;
            }

            .forgot {
                display: block;
            }
        }
    </style>

    <script src="~/Scripts/jquery.min.js"></script>
    <script src="~/Scripts/popper.min.js"></script>
    <script src="~/Scripts/bootstrap.min.js"></script>
</body>


</html>


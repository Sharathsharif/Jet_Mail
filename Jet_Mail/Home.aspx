<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Jet_Mail.Login" %>


<!DOCTYPE html>
<html>
<head>
    <title>Jet Mail</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Custom Theme files -->
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all">
    <link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- //Custom Theme files -->
    <!-- web font -->
    <link href="//fonts.googleapis.com/css?family=Oswald:400,700" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">

    <!-- //web font -->

    <link href="~/Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <h1>Jet Mail</h1>

    <div class="main-agileits">
        <div class="form-w3-agile">
        <h2 >You are going to expereience a no lag mailing to anyone in the world</h2>
           
            <a href="Login.aspx" id="btn1"> Login Here</a>
             <p class="p-bottom-w3ls">Are you new to Jet Mail?<a class="w3_play_icon1" href="#small-dialog1">  Register here</a></p>
        </div>
    </div>


            
        <div id="small-dialog1" class="mfp-hide">
             <form action="#" method="post" runat="server">
            <div class="contact-form1">
                <div class="contact-w3-agileits">
                    <h3>Register Form</h3>
                    <div class="form-sub-w3ls">
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox3" BorderStyle="Groove" ForeColor="Red" Height="50px"></asp:RequiredFieldValidator>                  
                        <asp:TextBox ID="TextBox3"  runat="server" placeholder="Enter your Name " required="required"></asp:TextBox>
                        <div class="icon-agile">
                            <i class="fa fa-user" aria-hidden="true"></i>
                        </div>
                    </div>

                     <div class="form-sub-w3ls">
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="only accept 10 digit number" ControlToValidate="TextBox4" ValidationExpression="\d{10}" Height="20px"></asp:RegularExpressionValidator>
                        <asp:TextBox ID="TextBox4"   runat="server" placeholder="Enter your Contact Number " required="" ></asp:TextBox>

                        <div class="icon-agile">
                       <i class="fa fa-phone" aria-hidden="true"></i>
                        </div>
                    </div>




                    <div class="form-sub-w3ls">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox5" BorderStyle="Groove" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox5" TextMode="Email"  runat="server" placeholder="Enter your Email " required=""></asp:TextBox>
                        <div class="icon-agile">
                            <i class="fa fa-envelope-o" aria-hidden="true"></i>
                        </div>
                    </div>
                    <div class="form-sub-w3ls">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox6" BorderStyle="Groove" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox6"   runat="server" placeholder="Enter your Address " required=""></asp:TextBox>
                        <div class="icon-agile">
                            <i class="fa fa-unlock-alt" aria-hidden="true"></i>
                        </div>
                    </div>
                    <div class="form-sub-w3ls">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox7" BorderStyle="Groove" ForeColor="Red" Height="20px"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox7"   runat="server" placeholder="Enter your Password " required=""></asp:TextBox>
                        <div class="icon-agile">
                            <i class="fa fa-unlock-alt" aria-hidden="true"></i>
                        </div>
                    </div>
                    <div class="form-sub-w3ls">
                        <asp:TextBox ID="TextBox8" TextMode="Password"  runat="server" placeholder="ReEnter your Password " required=""></asp:TextBox><asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password didn't match!!!" ControlToCompare="TextBox7" ControlToValidate="TextBox8"></asp:CompareValidator>

                        <div class="icon-agile">
                            <i class="fa fa-unlock-alt" aria-hidden="true"></i>
                        </div>
                    </div>
                    <div class="form-sub-w3ls">
                        <h3>Profile Image</h3>
                        <asp:FileUpload ID="FileUpload1"  runat="server" />
                        <div class="icon-agile">
                            <i class="fa fa-unlock-alt" aria-hidden="true"></i>
                        </div>
                    </div>
                </div>
                <div class="login-check">
                    <label class="checkbox">
                        <input type="checkbox" name="checkbox" checked=""><p>I Accept Terms & Conditions</p>
                    </label>
                </div>
                <div class="submit-w3l">
                    
                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-success" OnClick="LinkButton1_Click">Register</asp:LinkButton>

                    
                </div>
            </div>  </form>
        </div>
                   

    <style>
        #btn1{
           color:blue;
            border-radius:10px;
            padding:3px;
            margin:10px;
            margin-top:20px;
            margin-left:120px;
          
        }
        #btn1:hover{
            background-color:white;
            color:greenyellow;
        }
    </style>
    <!-- copyright -->
    <div class="copyright w3-agile">
        <p>© 2024 Credit Login / Jet Mail . All rights reserved | Design by <a href="#" >Sharath S S</a></p>
    </div>
    <!-- //copyright -->
    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
    <!-- pop-up-box -->
    <script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
    <!--//pop-up-box -->
    <script>
        $(document).ready(function () {
            $('.w3_play_icon,.w3_play_icon1,.w3_play_icon2').magnificPopup({
                type: 'inline',
                fixedContentPos: false,
                fixedBgPos: true,
                overflowY: 'auto',
                closeBtnInside: true,
                preloader: false,
                midClick: true,
                removalDelay: 300,
                mainClass: 'my-mfp-zoom-in'
            });

        });
    </script>
    <script src="~/Scripts/jquery.min.js"></script>
    <script src="~/Scripts/popper.min.js"></script>
    <script src="~/Scripts/bootstrap.min.js"></script>
</body>
</html>

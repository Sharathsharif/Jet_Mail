<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Jet_Mail.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Custom Theme files -->
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- //Custom Theme files -->
    <!-- web font -->
    <link href="//fonts.googleapis.com/css?family=Oswald:400,700" rel="stylesheet"/>
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Jet Mail</h1>
             <div class="main-agileits">
            
            <div class="form-w3-agile">
                <h2>login form</h2>
                <div class="form-sub-w3">
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Mail Id " required=""></asp:TextBox>

                    <div class="icon-w3">
                        <i class="fa fa-user" aria-hidden="true"></i>
                    </div>
                </div>
                <div class="form-sub-w3">
                    <asp:TextBox ID="TextBox2" TextMode="Password" runat="server" placeholder="Password " required=""></asp:TextBox>


                    <div class="icon-w3">
                        <i class="fa fa-unlock-alt" aria-hidden="true"></i>
                    </div>
                </div>
                <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click1" />
                <p class="p-bottom-w3ls"><a href="Home.aspx">  Go to Home page</a></p>

                
            </div>
            
        </div>
        </div>
    </form>
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
</body>
</html>

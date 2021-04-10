<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Userlogin.aspx.cs" Inherits="Userlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ST MARY'S LMS</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="images/icons/favicon.ico" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="css/util.css" />
    <link rel="stylesheet" type="text/css" href="css/main.css" />
    <!--===============================================================================================-->
</head>
<body>
    <div class="limiter">
        <div class="container-login100">
            <div class="wrap-login100">
                <form id="form1" runat="server" class="login100-form validate-form">
                    <h1 style="text-align: center; user-select: none;">ST MARY'S
                        <br />
                        <span style="font-size: 18pt;">LEARNING MANAGEMENT
							SYSTEM</span></h1>
                    <br />
                    <span class="login100-form-title p-b-35" style="user-select: none;">Login to continue
                    </span>
                    <div class="wrap-input100 validate-input" data-validate="Valid SID is required: 12345">
                        <asp:TextBox runat="server" class="input100" type="text" ID="LSid"
                            onkeypress="return event.charCode >= 48 && event.charCode <= 57" onpaste="return false"
                            name="sid" autocomplete="off" />
                        <span class="focus-input100"></span>
                        <span class="label-input100" style="user-select: none;">Sid</span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate="Password is required">
                        <asp:TextBox runat="server" class="input100" type="password" ID="LPass" name="pass" autocomplete="off" />
                        <span class="focus-input100"></span>
                        <span class="label-input100" style="user-select: none;">Password</span>
                    </div>
                    <div class="flex-sb-m w-full p-t-3 p-b-32">
                        <div class="contact100-form-checkbox">
                            <asp:TextBox runat="server" class="input-checkbox100" ID="ckb1" type="checkbox" name="remember-me" />
                            <label class="label-checkbox100" for="ckb1" style="user-select: none;">
                                Remember me
                            </label>
                        </div>
                        <div>
                            <a href="Userreset.aspx" class="txt1" style="user-select: none;">Forgot Password?
                            </a>
                        </div>
                    </div>
                    <div class="container-login100-form-btn">
                        <asp:Button Text="Login" name="SubmitBtn" runat="server" class="login100-form-btn" Style="user-select: none;" OnClick="SubmitBtn_Click" />
                    </div>
                </form>
                <div class="login100-more">
                    <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img class="d-block" style="width: 100%; height: 100vh; user-select: none;"
                                    src="images/1 (1).png" alt="First slide" />
                            </div>
                            <div class="carousel-item">
                                <img class="d-block" style="width: 100%; height: 100vh; user-select: none;"
                                    src="images/1 (5).png" alt="First slide" />
                            </div>
                            <div class="carousel-item">
                                <img class="d-block" style="width: 100%; height: 100vh; user-select: none;"
                                    src="images/1 (6).png" alt="First slide" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--===============================================================================================-->
    <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/animsition/js/animsition.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/bootstrap/js/popper.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/daterangepicker/moment.min.js"></script>
    <script src="vendor/daterangepicker/daterangepicker.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/countdowntime/countdowntime.js"></script>
    <!--===============================================================================================-->
    <script src="js/main.js"></script>

</body>
</html>

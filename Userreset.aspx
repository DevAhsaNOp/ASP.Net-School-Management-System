<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Userreset.aspx.cs" Inherits="Userreset" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password</title>
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
                        <span
                            style="font-size: 18pt;">LEARNING MANAGEMENT
                            SYSTEM</span></h1>
                    <br />
                    <span class="login100-form-title p-b-43" style="user-select: none;">Reset Password
                    </span>
                    <div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz">
                        <asp:TextBox runat="server" class="input100" type="text" name="email" ID="Eemail" autocomplete="off"
                            Style="user-select: none;" />
                        <span class="focus-input100"></span>
                        <span class="label-input100" style="user-select: none;">Email</span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate="Valid SID is required: 12345">
                        <asp:TextBox runat="server" class="input100" type="text"
                            onkeypress="return event.charCode >= 48 && event.charCode <= 57" onpaste="return false"
                            name="sid" ID="Esid" autocomplete="off" Style="user-select: none;" />
                        <span class="focus-input100"></span>
                        <span class="label-input100" style="user-select: none;">Sid</span>
                    </div>
                    <div class="container-login100-form-btn">
                        <asp:Button runat="server" Text="Submit" class="login100-form-btn" ID="Ebtn" type="submit" OnClientClick="return showAlert()" OnClick="Ebtn_Click"
                            Style="user-select: none;" />
                    </div>
                    <div class="flex-sb-m w-full p-t-20 p-b-32" style="justify-content: flex-end;">
                        <div>
                            <a href="Userlogin.aspx" class="txt1" style="user-select: none; font-size: 14pt;">Back to Login!
                            </a>
                        </div>
                    </div>
                    <!-- <div class="container-login100-form-btn" style="display:none;" id="myAlert">
                        <div class="alert alert-success alert-dismissable " id="myAlert2">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                            Success! Email sent successfully.
                        </div>
                    </div> -->
                </form>
                <div class="login100-more">
                    <img src="./images/clip-internet-security.png" class="d-block"
                        style="width: 100%; height: 100vh; user-select: none;" alt="" />
                </div>
            </div>
        </div>
    </div>


    <script type="text/javascript">

        // document.querySelector('#Ebtn').addEventListener('click', function (event) {
        //     event.preventDefault();
        //     showAlert();
        // });

        // var form = document.getElementById("myForm");
        // function handleForm(event) { event.preventDefault(); }
        // form.addEventListener('submit', handleForm);

        function showAlert() {
            var Email = document.getElementById("Eemail").value;
            var Pass = document.getElementById("Esid");
            var pattern = /^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{1,5}|[0-9]{1,3})(\]?)$/;
            if (Email.match(pattern) && Pass.value.length != 0) {
                alert("Email Send at " + Email);
                // $("#myAlert").css("display", "");
            }
            // if ($("#myAlert").find("div#myAlert2").length == 0) {
            //     $("#myAlert").append("<div class='alert alert-success alert-dismissable' id='myAlert2'> <button type='button' class='close' data-dismiss='alert'  
            //    aria-hidden='true'>&times;</button> Success! message sent successfully.</div>");
            // }
        }

        // var button = document.getElementById('Ebtn');
        // button.addEventListener('click', runEvent);
        // function runEvent(e) {
        //     e.preventDefault();
        //     console.log('EVENT TYPE: ' + e.type);
        // }

    </script>

    <!--===============================================================================================-->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
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

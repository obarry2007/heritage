<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CalculPartsHeritage.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
    <!--===============================================================================================-->
	    <link rel="stylesheet" type="text/css" href="Content/animate.css">
    <!--===============================================================================================-->	
	    <link rel="stylesheet" type="text/css" href="Content/hamburgers.min.css">
    <!--===============================================================================================-->
	    <link rel="stylesheet" type="text/css" href="Content/select2.min.css">
    <!--===============================================================================================-->
	    <link rel="stylesheet" type="text/css" href="Content/util.css">
	    <link rel="stylesheet" type="text/css" href="Content/main.css">
    <!--===============================================================================================-->
</head>
    <body>
	<form id="form2" runat="server">
	<div class="limiter">
		<div class="container-login100" style="background-image: url('Content/images/bg-masthead.jpg');">
			<div class="wrap-login100 p-t-190 p-b-30">
                <form class="login100-form validate-form">
				
					<div class="login100-form-avatar">
						<img src="Content/images/avatar-01.jpg" alt="AVATAR">
					</div>

					<span class="login100-form-title p-t-20 p-b-45">
						John Doe
					</span>

					<div class="wrap-input100 validate-input m-b-10" data-validate = "Username is required">
					
                        <asp:TextBox class="input100" ID="Textusername" runat="server" placeholder="Username"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input m-b-10" data-validate = "Password is required">
                        <asp:TextBox class="input100" TextMode="Password" ID="TextPassword" runat="server" placeholder="Password"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock"></i>
						</span>
					</div>

					<div class="container-login100-form-btn p-t-10">
                        <asp:Button class="login100-form-btn" ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click1" />
					</div>

					<div class="text-center w-full p-t-25 p-b-230">
						<a href="#" class="txt1">
							Forgot Username / Password?
						</a>
					</div>

					<div class="text-center w-full">
						<a class="txt1" href="#">
							Create new account
							<i class="fa fa-long-arrow-right"></i>						
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	</form>

	
<!--===============================================================================================-->	
	<script src="Content/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="Content/popper.js"></script>
	<script src="Content/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="Content/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="Content/main.js"></script>

</body>
</html>

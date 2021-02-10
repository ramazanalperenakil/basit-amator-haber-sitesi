<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Giris.aspx.cs" Inherits="yonetim_Giris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login | Klorofil - Free Bootstrap Dashboard Template</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<!-- VENDOR CSS -->
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/vendor/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/vendor/linearicons/style.css">
	<!-- MAIN CSS -->
	<link rel="stylesheet" href="assets/css/main.css">
	<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
	<link rel="stylesheet" href="assets/css/demo.css">
	<!-- GOOGLE FONTS -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
	<!-- ICONS -->
	<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- WRAPPER -->
	<div id="wrapper">
		<div class="vertical-align-wrap">
			<div class="vertical-align-middle">
				<div class="auth-box ">
					<div class="left">
						<div class="content">
							<div class="header">
								<div class="logo text-center"><img src="assets/img/logo-dark.png" alt="Klorofil Logo"></div>
								<p class="lead">Giriş Yap</p>
							</div>
							<form class="form-auth-small" action="index.php">
								<div class="form-group">
									  <label for="name">E-Posta</label>
								<asp:TextBox ID="TextBoxEposta" CssClass="form-control" runat="server"></asp:TextBox>
								</div>
								<div class="form-group">
									  <label for="name">Şifre</label>
								<asp:TextBox ID="TextBoxSifre" CssClass="form-control" runat="server"></asp:TextBox>
								</div>
                                 <asp:Label ID="lblHata" runat="server" Text="Girişte Hata Var" CssClass="alert-danger form-control"  ForeColor="red" Visible="false"></asp:Label>
                      
                <asp:Button ID="ButtonGiris" CssClass="btn btn-primary btn-lg btn-block" runat="server" Text="Button" OnClick="ButtonGiris_Click" />
							
								

							</form>
						</div>
					</div>
					<div class="right">
						<div class="overlay"></div>
						<div class="content text">
							<h1 class="heading">Free Bootstrap dashboard template</h1>
							<p>by The Develovers</p>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
        </div>
    </form>
</body>
</html>

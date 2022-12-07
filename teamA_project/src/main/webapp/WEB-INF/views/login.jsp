<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="description"
	content="Your vacation, tours and travel theme needs are all met at emprise." />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Tour Travel Website Template | Emprise</title>
<!-- Favicon -->
<link rel="shortcut icon" type="image/png" href="./assets/favicon.ico" />
<!-- Plugins CSS -->
<link rel="stylesheet" href="/resources/styles/plugins.css" />
<!-- Main CSS -->
<link rel="stylesheet" href="/resources/styles/main.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body class="rlr-body">
	<!-- Header -->
	<header>
		<nav id="navigation" class="navigation rlr-navigation">
			<!-- Logo -->
			<div class="navigation-header">
				<div class="navigation-brand-text">
					<div class="rlr-logo rlr-logo__navbar-brand">
						<a href="/WEB-INF/views/index.jsp"> <img
							src="/resources/assets/svg/tabitabi-logo.png" alt="#" class="" />
						</a>
					</div>
				</div>
				<div class="navigation-button-toggler">
					<span class="rlr-sVGIcon"> <i
						class="rlr-icon-font rlr-icon-font--megamenu flaticon-menu"> </i>
					</span>
				</div>
			</div>
			<div class="navigation-body rlr-navigation__body container">
				<div class="navigation-body-header rlr-navigation__body-header">
					<div class="navigation-brand-text">
						<div class="rlr-logo rlr-logo__navbar-brand">
							<a href="/WEB-INF/views/index.jsp"> <img
								src="/resources/assets/svg/tabitabi-logo.png" alt="#" class="" />
							</a>
						</div>
					</div>
					<span class="rlr-sVGIcon navigation-body-close-button"> <i
						class="rlr-icon-font rlr-icon-font--megamenu flaticon-close">
					</i>
					</span>
				</div>
			</div>
		</nav>
	</header>
	<!-- Main Content -->
	<main id="rlr-main" class="rlr-main">
		<section class="rlr-section rlr-section__mt rlr-account">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 offset-lg-4">
						<form class="rlr-authforms" action="/member/login" method="POST"
							id="loginform">
							<div class="rlr-authforms__header">
								<h2>Log in to your emprise</h2>
								<p>Welcome back! Please enter login details.</p>
							</div>
							<div class="rlr-authforms__form">
								<div class="rlr-authforms__inputgroup">
									<label class="rlr-form-label rlr-form-label--light required">
										ID </label> <input type="text" autocomplete="off"
										class="form-control form-control--light" name="username" />
								</div>
								<div class="rlr-authforms__inputgroup">
									<label class="rlr-form-label rlr-form-label--light required">
										Password </label> <input type="password" autocomplete="off"
										class="form-control form-control--light" name="password" />
								</div>
								<div class="rlr-authforms__forgotpassword">
									<div class="form-check-inline">
										<input class="form-check-input rlr-form-check-input"
											id="rlr-checkbox-1" type="checkbox" value="defaultValue" name="remember-me"/>
										<label
											class="rlr-form-label rlr-form-label--checkbox rlr-form-label--font-inherit rlr-form-label--bold"
											for="rlr-checkbox-1">Remember me on this device</label>
									</div>
								</div>
								<button type="button"
									class="btn mb-3 rlr-button rlr-button--fullwidth rlr-button--primary"
									id="login_button" data-oper="login">Sign in</button>
							</div>
							<div class="rlr-authforms__notes">
								<p>
									Don’t have an account? <a href="./signup.html">Sign up</a>
								</p>
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>
	</main>
	<!-- Scripts -->
	<script src="/resources/vendors/navx/js/navigation.min.js"></script>
	<script src="/resources/js/main.js"></script>
	<script>
		$(document).ready(function() {

			$("button[data-oper='login']").on("click", function(e) {
				e.preventDefault();
				alert("로그인 버튼 작동함");
				/* 로그인 메서드 서버 요청 */
				$("#loginform").attr("action", "/member/login");
				$("#loginform").submit();
			});
			
		});
	</script>
</body>
</html>
<%@include file="./includes/footer.jsp"%>

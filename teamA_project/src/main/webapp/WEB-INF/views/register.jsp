<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta
      name="description"
      content="Your vacation, tours and travel theme needs are all met at emprise."
    />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Tour Travel Website Template | Emprise</title>
    <!-- Favicon -->
    <link
      rel="shortcut icon"
      type="image/png"
      href="/resources/assets/favicon.ico"
    />
    <!-- Plugins CSS -->
    <link rel="stylesheet" href="/resources/styles/plugins.css" />
    <!-- Main CSS -->
    <link rel="stylesheet" href="/resources/styles/main.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  </head>
  <body class="rlr-body">
    <!-- Header -->
    <header>
      <nav id="navigation" class="navigation rlr-navigation">
        <!-- Logo -->
        <div class="navigation-header">
          <div class="navigation-brand-text">
            <div class="rlr-logo rlr-logo__navbar-brand">
              <a href=".index.html">
                <img
                  src="/resources/assets/svg/tabitabi-logo.png"
                  alt="#"
                  class=""
                />
              </a>
            </div>
          </div>
          <div class="navigation-button-toggler">
            <span class="rlr-sVGIcon">
              <i class="rlr-icon-font rlr-icon-font--megamenu flaticon-menu">
              </i>
            </span>
          </div>
        </div>
        <div class="navigation-body rlr-navigation__body container">
          <div class="navigation-body-header rlr-navigation__body-header">
            <div class="navigation-brand-text">
              <div class="rlr-logo rlr-logo__navbar-brand">
                <a href=".index.html">
                  <img
                    src="/resources/assets/svg/tabitabi-logo.png"
                    alt="#"
                    class=""
                  />
                </a>
              </div>
            </div>
            <span class="rlr-sVGIcon navigation-body-close-button">
              <i class="rlr-icon-font rlr-icon-font--megamenu flaticon-close">
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
              <div class="rlr-authforms">
                <div class="rlr-authforms__header">
                  <h2>Create an account</h2>
                  <p>Helps to access all features of the site.</p>
                </div>
                <form action="/member/register" method="post" id="registerForm">
                  <div class="rlr-authforms__form">
                    <div class="rlr-authforms__inputgroup">
                      <label
                        class="rlr-form-label rlr-form-label--light required"
                      >
                        Id
                      </label>
                      <input
                        type="text"
                        autocomplete="off"
                        class="form-control form-control--light"
                        name="userid"
                      />
                    </div>
                    <div class="rlr-authforms__inputgroup">
                      <label
                        class="rlr-form-label rlr-form-label--light required"
                      >
                        Password
                      </label>
                      <input
                        type="password"
                        autocomplete="off"
                        class="form-control form-control--light"
                        name="userpassword"
                      />
                      <p class="help-text">Must be 8 characters or more.</p>
                    </div>
                    <div class="rlr-authforms__inputgroup">
                      <label
                        class="rlr-form-label rlr-form-label--light required"
                      >
                        Password Check
                      </label>
                      <input
                        type="password"
                        autocomplete="off"
                        class="form-control form-control--light"
                        name="userpasswordcheck"
                      />
                    </div>
                    <div class="rlr-authforms__inputgroup">
                      <label
                        class="rlr-form-label rlr-form-label--light required"
                      >
                        Name
                      </label>
                      <input
                        type="text"
                        autocomplete="off"
                        class="form-control form-control--light"
                        name="username"
                      />
                    </div>
                    <div class="rlr-authforms__inputgroup">
                      <label
                        class="rlr-form-label rlr-form-label--light required"
                      >
                        Nickname
                      </label>
                      <input
                        type="text"
                        autocomplete="off"
                        class="form-control form-control--light"
                        name="nickname"
                      />
                    </div>
                    <div class="rlr-authforms__inputgroup">
                      <label
                        class="rlr-form-label rlr-form-label--light required"
                      >
                        Phonenumber
                      </label>
                      <input
                        type="text"
                        autocomplete="off"
                        class="form-control form-control--light"
                        name="phonenumber"
                      />
                    </div>
                    <div class="rlr-authforms__inputgroup">
                      <label
                        class="rlr-form-label rlr-form-label--light"
                      >
                        Email
                      </label>
                      <input
                        type="eamil"
                        autocomplete="off"
                        class="form-control form-control--light"
                        name="eamil"
                      />
                    </div>
                    <div class="rlr-authforms__inputgroup">
                      <label
                        class="rlr-form-label rlr-form-label--light required"
                      >
                        Address
                      </label>
                      <input
                        type="text"
                        autocomplete="off"
                        class="form-control form-control--light"
                        name="address"
                      />
                    </div>

                    <button
                      type="button"
                      class="btn rlr-button rlr-button--fullwidth rlr-button--primary"
                      data-oper="register"
                    >
                      회원가입
                    </button>
                  </div>
                  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                </form>
                <div class="rlr-authforms__notes">
                  <p>
                    Already have an account? <a href=".login.html">Log in</a>
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </main>

    <script type="text/javascript">
      let registerForm = $("#registerForm");

      $(document).ready(function() {
    	  $("button[data-oper='register']").on("click", function (e) {
   	        e.preventDefault();
   	        registerForm.find("[name='userpasswordcheck']").remove();
   	        registerForm.attr("action", "/member/register");
   	        registerForm.submit();
   	      });
      });
    </script>

    <%@include file="./includes/footer.jsp"%>

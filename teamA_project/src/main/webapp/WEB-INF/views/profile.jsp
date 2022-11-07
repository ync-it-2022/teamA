<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./includes/header.jsp"%>

<main id="rlr-main" class="rlr-main">
    <div class="rlr-section rlr-section__my">
      <div class="container">
        <div class="row">
          <aside class="rlr-sidebar-menu col-lg-3 col-xs-12 mb-5">
            <div class="rlr-sidebar-menu__wrapper">
              <nav class="rlr-sidebar-menu">
                <ul class="rlr-sidebar-menu__desktop">
                  <li>
                    <a class="rlr-sidebar-menu__link active profile" href="#">
                      <span class="rlr-sidebar-menu__link-icon"><i class="rlr-icon-font flaticon-carbon-user"> </i></span>
                      프로필
                    </a>
                  </li>
                  <li>
                    <a class="rlr-sidebar-menu__link orders" href="#">
                      <span class="rlr-sidebar-menu__link-icon"><i class="rlr-icon-font flaticon-carbon-money"> </i></span>
                      구매목록
                    </a>
                  </li>
                  <li>
                    <a class="rlr-sidebar-menu__link inquiry" href="#">
                      <span class="rlr-sidebar-menu__link-icon"><i class="rlr-icon-font flaticon-carbon-box"> </i></span>
                      1대1문의
                    </a>
                  </li>
                </ul>
              </nav>
            </div>
          </aside>
          <div class="content col-lg-4 col-xs-12 offset-lg-1">
            <div class="rlr-authforms">
              </div>
              <div class="rlr-authforms__form">
                <div class="rlr-authforms__inputgroup">
                  <label class="rlr-form-label rlr-form-label--light required"> Id </label>
                  <div><input type="hidden" autocomplete="off" class="form-control form-control--light" />cal8847</div>
                </div>
                <div class="rlr-authforms__inputgroup">
                  <label class="rlr-form-label rlr-form-label--light required"> Password </label> <input type="password" autocomplete="off" class="form-control form-control--light" />
                  <p class="help-text">Must be 8 characters or more.</p>
                </div>
                <div class="rlr-authforms__inputgroup">
                  <label class="rlr-form-label rlr-form-label--light required"> Password Check </label> <input type="password" autocomplete="off" class="form-control form-control--light" />
                </div>
                <div class="rlr-authforms__inputgroup"><label class="rlr-form-label rlr-form-label--light required"> Name </label> <input type="text" autocomplete="off" class="form-control form-control--light" /></div>
                <div class="rlr-authforms__inputgroup"><label class="rlr-form-label rlr-form-label--light required"> Nickname </label> <input type="text" autocomplete="off" class="form-control form-control--light" /></div>
                <div class="rlr-authforms__inputgroup"><label class="rlr-form-label rlr-form-label--light required"> Phonenumber </label> <input type="text" autocomplete="off" class="form-control form-control--light" /></div>
                <div class="rlr-authforms__inputgroup"><label class="rlr-form-label rlr-form-label--light required"> Address </label> <input type="text" autocomplete="off" class="form-control form-control--light" /></div>
                
                <button type="button" class="btn rlr-button rlr-button--fullwidth rlr-button--primary">Update</button>
              </div>
          </div>
        </div>
      </div>
    </div>
  </main>
  
<script type="text/javascript">
	$(document).ready(function () {

	});
</script>
  
<%@include file="./includes/footer.jsp"%>
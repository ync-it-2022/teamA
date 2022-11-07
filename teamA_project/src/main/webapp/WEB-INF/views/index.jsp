<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
        
<!DOCTYPE html>
<html lang="kr">
  <head>
    <meta charset="UTF-8" />
    <meta name="description" content="Your vacation, tours and travel theme needs are all met at emprise." />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>TabiTabi</title>
    <link rel="shortcut icon" type="image/png" href="/resources/assets/favicon.ico" />
    <link rel="stylesheet" href="/resources/styles/plugins.css" />
    <link rel="stylesheet" href="/resources/styles/main.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  </head>

  <body class="rlr-body">
    <!-- Main Content -->
    <main id="rlr-main" class="rlr-main">
      <!-- Hero Banner -->
      <aside class="rlr-hero--half-mast">
        <!-- Header and Navigation -->
        <div class="rlr-banner__video">
          <header>
            <nav id="navigation" class="navigation rlr-navigation rlr-navigation--transparent">
              <!-- Logo -->
              <div class="navigation-header">
                <div class="navigation-brand-text">
                  <div class="rlr-logo rlr-logo__navbar-brand">
                    <a href="#">
                      <img src="/resources/assets/svg/tabitabi-logo.png" alt="#" class="" />
                    </a>
                  </div>
                </div>
                <div class="navigation-button-toggler">
                  <span class="rlr-sVGIcon"> <i class="rlr-icon-font rlr-icon-font--megamenu flaticon-menu"> </i> </span>
                </div>
              </div>
              <div class="navigation-body rlr-navigation__body container">
                <div class="navigation-body-header rlr-navigation__body-header">
                  <div class="navigation-brand-text">
                    <div class="rlr-logo rlr-logo__navbar-brand">
                      <a href="#" class="index">
                        <img src="/resources/assets/svg/tabitabi-logo.png" alt="#"/>
                      </a>
                    </div>
                  </div>
                  <span class="rlr-sVGIcon navigation-body-close-button"> <i class="rlr-icon-font rlr-icon-font--megamenu flaticon-close"> </i> </span>
                </div>
                <!-- Main menu -->
                <ul class="navigation-menu rlr-navigation__menu rlr-navigation__menu--main-links">
                  <li class="navigation-item">
                    <a class="navigation-link flight" href="#">항공편</a>
                  </li>
                  <li class="navigation-item">
                    <a class="navigation-link hotels" href="#">숙박편</a>
                  </li>
                  <li class="navigation-item">
                    <a class="navigation-link" href="#">즐길거리</a>
                    <ul class="navigation-dropdown">
                      <li class="navigation-dropdown-item">
                        <a class="navigation-dropdown-link trstspot" href="#">관광지</a>
                      </li>
                      <li class="navigation-dropdown-item">
                        <a class="navigation-dropdown-link festival" href="#">축제</a>
                      </li>
                      <li class="navigation-dropdown-item">
                        <a class="navigation-dropdown-link activity" href="#">액티비티</a>
                      </li>
                    </ul>
                  </li>
                  <li class="navigation-item">
                    <a class="navigation-link" href="#">고객센터</a>
                    <ul class="navigation-dropdown">
                      <li class="navigation-dropdown-item">
                        <a class="navigation-dropdown-link notice" href="#">공지사항</a>
                      </li>
                      <li class="navigation-dropdown-item">
                        <a class="navigation-dropdown-link faq" href="#">FAQ</a>
                      </li>
                      <li class="navigation-dropdown-item">
                        <a class="navigation-dropdown-link inquiry" href="#">1대1문의</a>
                      </li>
                      <li class="navigation-dropdown-item">
                        <a class="navigation-dropdown-link about" href="#">프로젝트에 대해</a>
                      </li>
                    </ul>
                  </li>
                </ul>
                <!-- User actions menu -->
                <ul class="navigation-menu rlr-navigation__menu align-to-right">
                  <!-- User account dropdown -->
                  <li class="navigation-item">
                    <a class="navigation-link" href="#"> Sarah J <img class="ui right spaced avatar image" src="/resources/assets/images/blog-single-avatar.png" alt="account avatar" /> </a>
                    <ul class="navigation-dropdown">
                      <li class="navigation-dropdown-item">
                        <a class="navigation-dropdown-link profile" href="#">프로필</a>
                      </li>
                      <li class="navigation-dropdown-item">
                        <a class="navigation-dropdown-link cart" href="#">장바구니</a>
                      </li>
                      <li class="navigation-dropdown-item">
                        <a class="navigation-dropdown-link orders" href="#">구매목록</a>
                      </li>
                      <li class="navigation-dropdown-item">
                        <hr class="dropdown-divider rlr-dropdown__divider" />
                      </li>
                      <li class="navigation-dropdown-item">
                        <a class="navigation-dropdown-link" href="./account-pages--login.html">로그아웃</a>
                      </li>
                    </ul>
                  </li>
                </ul>
              </div>
            </nav>


            <div class="outter">
              <div class="video-container">
                <video src="/resources/assets/index_video.mp4" autoplay loop playsinline muted></video>
                <div class="container rlr-callout">
                  <div class="rlr-callout__text">

                    <h1 class="type-d1">Emprise tours..</h1>
                  </div>
                  <div class="container rlr-banner-splide--fullwidth__form">
                    <!-- Search banner -->
                    <form class="rlr-banner-search">
                      <div class="rlr-banner-search__input-wrapper">
                        <!-- Destination -->
                        <div class="rlr-banner-input-group rlr-banner-input-group rlr-banner-input-group--home-search rlr-js-autocomplete-demo rlr-banner-search__banner-input rlr-js-search-layout-wrapper">
                          <label class="rlr-banner-input-group__label" for="destination_input">
                            <mark>검색</mark>
                          </label>
                          <div class="rlr-banner-input-group__input-wrapper">
                            <input id="destination_input" name="search" type="text" autocomplete="off" class="rlr-banner-input-group__input destination_input" placeholder="어디로 떠나고 싶으신가요?" />
                            <i class="rlr-icon-font flaticon-map-marker"> </i>
                            <ul id="home_destination_results" class="rlr-banner-input-group--location-dropdown rlr-autocomplete"></ul>
                          </div>
                        </div>
                      </div>
                      <button class="rlr-banner-search__submit-button" aria-label="banner submit">
                        <i class="rlr-icon-font flaticon-search"> </i>
                      </button>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </header>
        </div>
      </aside>
<!-- Destination Masonary Grid -->
<section class="rlr-section rlr-section__mb">
  <div class="container">
    <!-- Section heading -->
    <div class="rlr-section__title">
      <h2 class="rlr-section__title--main">여행지</h2>
      <span class="rlr-section__title--sub">여행지 내용</span>
    </div>
    <div class="rlr-masonary-grid__container">
      <div class="rlr-masonary-grid__one">
        <!-- Destination card -->
        <a class="rlr-destination-card trstspot_detail" href="#">
          <img src="/resources/assets/images/destination-01.jpg" class="rlr-destination-card__img" alt="..." />
          <div class="rlr-destination-card__info rlr-destination-card__info--left rlr-destination-card__info--bottom">
            <h2 class="rlr-destination-card__info--main">나라</h2>
          </div>
        </a>
      </div>
      <div class="rlr-masonary-grid__two">
        <!-- Destination card -->
        <a class="rlr-destination-card trstspot_detail" href="#">
          <img src="/resources/assets/images/destination-02.jpg" class="rlr-destination-card__img" alt="..." />
          <div class="rlr-destination-card__info rlr-destination-card__info--left rlr-destination-card__info--bottom">
            <h2 class="rlr-destination-card__info--main">나라</h2>
          </div>
        </a>
      </div>
      <div class="rlr-masonary-grid__three">
        <!-- Destination card -->
        <a class="rlr-destination-card trstspot_detail" href="#">
          <img src="/resources/assets/images/destination-03.jpg" class="rlr-destination-card__img" alt="..." />
          <div class="rlr-destination-card__info rlr-destination-card__info--left rlr-destination-card__info--bottom">
            <h2 class="rlr-destination-card__info--main">나라</h2>
          </div>
        </a>
      </div>
      <div class="rlr-masonary-grid__four">
        <!-- Destination card -->
        <a class="rlr-destination-card trstspot_detail" href="#">
          <img src="/resources/assets/images/destination-04.jpg" class="rlr-destination-card__img" alt="..." />
          <div class="rlr-destination-card__info rlr-destination-card__info--left rlr-destination-card__info--bottom">
            <h2 class="rlr-destination-card__info--main">London</h2>
          </div>
        </a>
      </div>
      <div class="rlr-masonary-grid__five">
        <!-- Destination card -->
        <a class="rlr-destination-card trstspot_detail" href="#">
          <img src="/resources/assets/images/destination-05.jpg" class="rlr-destination-card__img" alt="..." />
          <div class="rlr-destination-card__info rlr-destination-card__info--left rlr-destination-card__info--bottom">
            <h2 class="rlr-destination-card__info--main">Paris</h2>
          </div>
        </a>
      </div>
      <div class="rlr-masonary-grid__six">
        <!-- Destination card -->
        <a class="rlr-destination-card trstspot_detail" href="#">
          <img src="/resources/assets/images/destination-06.jpg" class="rlr-destination-card__img" alt="..." />
          <div class="rlr-destination-card__info rlr-destination-card__info--left rlr-destination-card__info--bottom">
            <h2 class="rlr-destination-card__info--main">Amsterdam</h2>
          </div>
        </a>
      </div>
    </div>
  </div>
</section>
<section class="rlr-section rlr-section__mb">
  <div class="container">
    <!-- Section heading -->
    <div class="rlr-section__title">
      <h2 class="rlr-section__title--main">축제</h2>
      <span class="rlr-section__title--sub">축제 내용</span>
    </div>
    <div class="rlr-masonary-grid__container">
      <div class="rlr-masonary-grid__one">
        <!-- Destination card -->
        <a class="rlr-destination-card festival_detail" href="#">
          <img src="/resources/assets/images/destination-01.jpg" class="rlr-destination-card__img" alt="..." />
          <div class="rlr-destination-card__info rlr-destination-card__info--left rlr-destination-card__info--bottom">
            <h2 class="rlr-destination-card__info--main">축제 이름</h2>
          </div>
        </a>
      </div>
      <div class="rlr-masonary-grid__two">
        <!-- Destination card -->
        <a class="rlr-destination-card festival_detail" href="#">
          <img src="/resources/assets/images/destination-02.jpg" class="rlr-destination-card__img" alt="..." />
          <div class="rlr-destination-card__info rlr-destination-card__info--left rlr-destination-card__info--bottom">
            <h2 class="rlr-destination-card__info--main">Zurich</h2>
          </div>
        </a>
      </div>
      <div class="rlr-masonary-grid__three">
        <!-- Destination card -->
        <a class="rlr-destination-card festival_detail" href="#">
          <img src="/resources/assets/images/destination-03.jpg" class="rlr-destination-card__img" alt="..." />
          <div class="rlr-destination-card__info rlr-destination-card__info--left rlr-destination-card__info--bottom">
            <h2 class="rlr-destination-card__info--main">Greece</h2>
          </div>
        </a>
      </div>
      <div class="rlr-masonary-grid__four">
        <!-- Destination card -->
        <a class="rlr-destination-card festival_detail" href="#">
          <img src="/resources/assets/images/destination-04.jpg" class="rlr-destination-card__img" alt="..." />
          <div class="rlr-destination-card__info rlr-destination-card__info--left rlr-destination-card__info--bottom">
            <h2 class="rlr-destination-card__info--main">London</h2>
          </div>
        </a>
      </div>
      <div class="rlr-masonary-grid__five">
        <!-- Destination card -->
        <a class="rlr-destination-card festival_detail" href="#">
          <img src="/resources/assets/images/destination-05.jpg" class="rlr-destination-card__img" alt="..." />
          <div class="rlr-destination-card__info rlr-destination-card__info--left rlr-destination-card__info--bottom">
            <h2 class="rlr-destination-card__info--main">Paris</h2>
          </div>
        </a>
      </div>
      <div class="rlr-masonary-grid__six">
        <!-- Destination card -->
        <a class="rlr-destination-card festival_detail" href="#">
          <img src="/resources/assets/images/destination-06.jpg" class="rlr-destination-card__img" alt="..." />
          <div class="rlr-destination-card__info rlr-destination-card__info--left rlr-destination-card__info--bottom">
            <h2 class="rlr-destination-card__info--main">Amsterdam</h2>
          </div>
        </a>
      </div>
    </div>
  </div>
</section>
<section class="rlr-section rlr-section__mb">
  <div class="container">
    <!-- Section heading -->
    <div class="rlr-section__title">
      <h2 class="rlr-section__title--main">액티비티</h2>
      <span class="rlr-section__title--sub">액티비티 설명</span>
    </div>
    <div class="rlr-masonary-grid__container">
      <div class="rlr-masonary-grid__one">
        <!-- Destination card -->
        <a class="rlr-destination-card activity_detail" href="#">
          <img src="/resources/assets/images/destination-01.jpg" class="rlr-destination-card__img" alt="..." />
          <div class="rlr-destination-card__info rlr-destination-card__info--left rlr-destination-card__info--bottom">
            <h2 class="rlr-destination-card__info--main">액티비티 이름</h2>
          </div>
        </a>
      </div>
      <div class="rlr-masonary-grid__two">
        <!-- Destination card -->
        <a class="rlr-destination-card activity_detail" href="#">
          <img src="/resources/assets/images/destination-02.jpg" class="rlr-destination-card__img" alt="..." />
          <div class="rlr-destination-card__info rlr-destination-card__info--left rlr-destination-card__info--bottom">
            <h2 class="rlr-destination-card__info--main">Zurich</h2>
          </div>
        </a>
      </div>
      <div class="rlr-masonary-grid__three">
        <!-- Destination card -->
        <a class="rlr-destination-card activity_detail" href="#">
          <img src="/resources/assets/images/destination-03.jpg" class="rlr-destination-card__img" alt="..." />
          <div class="rlr-destination-card__info rlr-destination-card__info--left rlr-destination-card__info--bottom">
            <h2 class="rlr-destination-card__info--main">Greece</h2>
          </div>
        </a>
      </div>
      <div class="rlr-masonary-grid__four">
        <!-- Destination card -->
        <a class="rlr-destination-card activity_detail" href="#">
          <img src="/resources/assets/images/destination-04.jpg" class="rlr-destination-card__img" alt="..." />
          <div class="rlr-destination-card__info rlr-destination-card__info--left rlr-destination-card__info--bottom">
            <h2 class="rlr-destination-card__info--main">London</h2>
          </div>
        </a>
      </div>
      <div class="rlr-masonary-grid__five">
        <!-- Destination card -->
        <a class="rlr-destination-card activity_detail" href="#">
          <img src="/resources/assets/images/destination-05.jpg" class="rlr-destination-card__img" alt="..." />
          <div class="rlr-destination-card__info rlr-destination-card__info--left rlr-destination-card__info--bottom">
            <h2 class="rlr-destination-card__info--main">Paris</h2>
          </div>
        </a>
      </div>
      <div class="rlr-masonary-grid__six">
        <!-- Destination card -->
        <a class="rlr-destination-card activity_detail" href="#">
          <img src="/resources/assets/images/destination-06.jpg" class="rlr-destination-card__img" alt="..." />
          <div class="rlr-destination-card__info rlr-destination-card__info--left rlr-destination-card__info--bottom">
            <h2 class="rlr-destination-card__info--main">Amsterdam</h2>
          </div>
        </a>
      </div>
    </div>
  </div>
</section>

<script type="text/javascript">
	$(document).ready(function () {
		$(".index").on("click", function() {
			self.location = "/";
		})
		
	    $(".flight").on("click", function () {
	    	self.location = "/flight";
	    });

		$(".hotels").on("click", function () {
			self.location = "/hotels";
		});
		
		$(".trstspot").on("click", function() {
			self.location = "/enjoy/trstspot";
		})
		
	    $(".festival").on("click", function () {
	    	self.location = "/enjoy/festival";
	    });

		$(".activity").on("click", function () {
			self.location = "/enjoy/activity";
		});
		
		$(".notice").on("click", function () {
			self.location = "/notice";
		});
		
		$(".faq").on("click", function () {
			self.location = "/faq";
		});
		
		$(".inquiry").on("click", function () {
			self.location = "/inquiry";
		});
		
		$(".about").on("click", function () {
			self.location = "/about";
		});
		
		$(".profile").on("click", function () {
			self.location = "member/profile";
		});
		
		$(".cart").on("click", function () {
			self.location = "orders/cart";
		});
		
		$(".orders").on("click", function () {
			self.location = "/orders";
		});
		
		$(".trstspot_detail").on("click", function() {
			self.location = "/enjoy/trstspot/detail";
		})
		
	    $(".festival_detail").on("click", function () {
	    	self.location = "/enjoy/festival/detail";
	    });

		$(".activity_detail").on("click", function () {
			self.location = "/enjoy/activity/detail";
		});
	});
</script>

<%@include file="./includes/footer.jsp"%>
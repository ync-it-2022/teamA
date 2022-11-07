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
    <title>Tour Travel Website Template | Emprise</title>
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/png" href="/resources/assets/favicon.ico" />
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
                <img src="/resources/assets/svg/emprise-logo-dark-flat--medium.svg" alt="#" class="" />
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
                  <img src="/resources/assets/svg/tabitabi-logo.png" alt="#" />
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
    </header>
    
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
			self.location = "/member/profile";
		});
		
		$(".cart").on("click", function () {
			self.location = "/orders/cart";
		});
		
		$(".orders").on("click", function () {
			self.location = "/orders";
		});
	});
</script>
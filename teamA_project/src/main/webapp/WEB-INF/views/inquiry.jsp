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
                    <a class="rlr-sidebar-menu__link profile" href="#">
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
                    <a class="rlr-sidebar-menu__link active inquiry" href="#">
                      <span class="rlr-sidebar-menu__link-icon"><i class="rlr-icon-font flaticon-carbon-box"> </i></span>
                      1대1문의
                    </a>
                  </li>
                </ul>
              </nav>
            </div>
          </aside>
          <div class="content col-lg-9 col-xs-12">
            <div class="rlr-data-container woocommerce-MyAccount-content">
              <h1 class="type-h3 rlr-data-table__title">1대1문의</h1>
              <div class="table">
                <table class="rlr-data-table woocommerce-orders-table woocommerce-MyAccount-orders shop_table shop_table_responsive my_account_orders account-orders-table">
                  <thead class="rlr-data-table__header">
                    <tr class="rlr-data-table__header-row">
                      <th class="woocommerce-orders-table__header woocommerce-orders-table__header-order-number">
                        <span class="nobr"> 문의번호 </span>
                      </th>
                      <th class="woocommerce-orders-table__header woocommerce-orders-table__header-order-date">
                        <span class="nobr"> 문의날짜 </span>
                      </th>
                      <th class="woocommerce-orders-table__header woocommerce-orders-table__header-order-status">
                        <span class="nobr"> 문의유형 </span>
                      </th>
                      <th class="woocommerce-orders-table__header woocommerce-orders-table__header-order-total">
                        <span class="nobr"> 문의내용 </span>
                      </th>
                      <th class="woocommerce-orders-table__header woocommerce-orders-table__header-order-actions">
                        <span class="nobr"> 문의상태 </span>
                      </th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr class="rlr-data-table__row woocommerce-orders-table__row woocommerce-orders-table__row--status-on-hold order">
                      <td class="rlr-data-table__cell woocommerce-orders-table__cell woocommerce-orders-table__cell-order-number" data-title="Order">
                        4
                      </td>
                      <td class="rlr-data-table__cell woocommerce-orders-table__cell woocommerce-orders-table__cell-order-date" data-title="Date">
                        <time datetime="2022-04-20T08:01:42+00:00"> April 20, 2022 </time>
                      </td>
                      <td class="rlr-data-table__cell woocommerce-orders-table__cell woocommerce-orders-table__cell-order-status" data-title="Status">결제</td>
                      <td class="rlr-data-table__cell rlr-data-table__cell-total woocommerce-orders-table__cell woocommerce-orders-table__cell-order-total" data-title="Total">
                        <a href="#" class="inquiry_detail">
                     	  <span class="rlr-data-table__amount woocommerce-Price-amount amount">
                          <span class="woocommerce-Price-currencySymbol"></span>
                          <span>카드오류</span>
                        </span>
                        </a>
                      </td>
                      <td class="rlr-data-table__cell woocommerce-orders-table__cell woocommerce-orders-table__cell-order-actions" data-title="Actions">
                        <a> 미답변 </a>
                      </td>
                    </tr>
                    <tr class="rlr-data-table__row woocommerce-orders-table__row woocommerce-orders-table__row--status-on-hold order">
                      <td class="rlr-data-table__cell woocommerce-orders-table__cell woocommerce-orders-table__cell-order-number" data-title="Order">
                        3
                      </td>
                      <td class="rlr-data-table__cell woocommerce-orders-table__cell woocommerce-orders-table__cell-order-date" data-title="Date">
                        <time datetime="2022-04-20T08:01:42+00:00"> April 20, 2022 </time>
                      </td>
                      <td class="rlr-data-table__cell woocommerce-orders-table__cell woocommerce-orders-table__cell-order-status" data-title="Status">환불</td>
                      <td class="rlr-data-table__cell rlr-data-table__cell-total woocommerce-orders-table__cell woocommerce-orders-table__cell-order-total" data-title="Total">
                      	<a href="#" class="inquiry_detail">
                        <span class="rlr-data-table__amount woocommerce-Price-amount amount">
                          <span class="woocommerce-Price-currencySymbol"></span>
                          <span>환불액 입금</span>
                        </span>
                       </a>
                      </td>
                      <td class="rlr-data-table__cell woocommerce-orders-table__cell woocommerce-orders-table__cell-order-actions" data-title="Actions">
                        <a> 답변완료 </a>
                      </td>
                    </tr>
                    <tr class="rlr-data-table__row woocommerce-orders-table__row woocommerce-orders-table__row--status-on-hold order">
                      <td class="rlr-data-table__cell woocommerce-orders-table__cell woocommerce-orders-table__cell-order-number" data-title="Order">
                        2
                      </td>
                      <td class="rlr-data-table__cell woocommerce-orders-table__cell woocommerce-orders-table__cell-order-date" data-title="Date">
                        <time datetime="2022-04-20T08:01:42+00:00"> April 20, 2022 </time>
                      </td>
                      <td class="rlr-data-table__cell woocommerce-orders-table__cell woocommerce-orders-table__cell-order-status" data-title="Status">결제</td>
                      <td class="rlr-data-table__cell rlr-data-table__cell-total woocommerce-orders-table__cell woocommerce-orders-table__cell-order-total" data-title="Total">
                      <a href="#" class="inquiry_detail">
                        <span class="rlr-data-table__amount woocommerce-Price-amount amount">
                          <span class="woocommerce-Price-currencySymbol"></span>
                          <span>결제 수단 문의</span>
                        </span>
                      </a>
                      </td>
                      <td class="rlr-data-table__cell woocommerce-orders-table__cell woocommerce-orders-table__cell-order-actions" data-title="Actions">
                        <a> 답변완료 </a>
                      </td>
                    </tr>
                    <tr class="rlr-data-table__row woocommerce-orders-table__row woocommerce-orders-table__row--status-on-hold order">
                      <td class="rlr-data-table__cell woocommerce-orders-table__cell woocommerce-orders-table__cell-order-number" data-title="Order">
                        1
                      </td>
                      <td class="rlr-data-table__cell woocommerce-orders-table__cell woocommerce-orders-table__cell-order-date" data-title="Date">
                        <time datetime="2022-04-20T08:01:42+00:00"> April 20, 2022 </time>
                      </td>
                      <td class="rlr-data-table__cell woocommerce-orders-table__cell woocommerce-orders-table__cell-order-status" data-title="Status">변경</td>
                      <td class="rlr-data-table__cell rlr-data-table__cell-total woocommerce-orders-table__cell woocommerce-orders-table__cell-order-total" data-title="Total">
                      <a href="#" class="inquiry_detail">
                        <span class="rlr-data-table__amount woocommerce-Price-amount amount">
                          <span class="woocommerce-Price-currencySymbol"></span>
                          <span>예약자 변경</span>
                        </span>
                      </a>
                      </td>
                      <td class="rlr-data-table__cell woocommerce-orders-table__cell woocommerce-orders-table__cell-order-actions" data-title="Actions">
                        <a> 답변완료 </a>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </main>
  
 <script type="text/javascript">
	$(document).ready(function () {
	    $(".inquiry_detail").on("click", function () {
	    	self.location = "/inquiry/detail";
	    });
	});
	
</script>
  
<%@include file="./includes/footer.jsp"%>
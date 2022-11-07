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
                    <a class="rlr-sidebar-menu__link active order" href="#">
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
          <div class="content col-lg-9 col-xs-12">
            <div class="rlr-data-container woocommerce-MyAccount-content">
              <h1 class="type-h3 rlr-data-table__title">구매목록</h1>
              <div class="table">
                <table class="rlr-data-table woocommerce-orders-table woocommerce-MyAccount-orders shop_table shop_table_responsive my_account_orders account-orders-table">
                  <thead class="rlr-data-table__header">
                    <tr class="rlr-data-table__header-row">
                      <th class="woocommerce-orders-table__header woocommerce-orders-table__header-order-number">
                        <span class="nobr"> 주문번호 </span>
                      </th>
                      <th class="woocommerce-orders-table__header woocommerce-orders-table__header-order-date">
                        <span class="nobr"> 결제일자 </span>
                      </th>
                      <th class="woocommerce-orders-table__header woocommerce-orders-table__header-order-status">
                        <span class="nobr"> 결제상태 </span>
                      </th>
                      <th class="woocommerce-orders-table__header woocommerce-orders-table__header-order-total">
                        <span class="nobr"> 합계금액 </span>
                      </th>
                      <th class="woocommerce-orders-table__header woocommerce-orders-table__header-order-actions">
                        <span class="nobr"> 취소 </span>
                      </th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr class="rlr-data-table__row woocommerce-orders-table__row woocommerce-orders-table__row--status-on-hold order">
                      <td class="rlr-data-table__cell woocommerce-orders-table__cell woocommerce-orders-table__cell-order-number" data-title="Order">
                        <a href="./product-detail-page.html"> #555 </a>
                      </td>
                      <td class="rlr-data-table__cell woocommerce-orders-table__cell woocommerce-orders-table__cell-order-date" data-title="Date">
                        <time datetime="2022-04-20T08:01:42+00:00"> April 20, 2022 </time>
                      </td>
                      <td class="rlr-data-table__cell woocommerce-orders-table__cell woocommerce-orders-table__cell-order-status" data-title="Status">On hold</td>
                      <td class="rlr-data-table__cell rlr-data-table__cell-total woocommerce-orders-table__cell woocommerce-orders-table__cell-order-total" data-title="Total">
                        <span class="rlr-data-table__amount woocommerce-Price-amount amount">
                          <span class="woocommerce-Price-currencySymbol"> $ </span>
                          <span>1,000</span>
                        </span>
                      </td>
                      <td class="rlr-data-table__cell woocommerce-orders-table__cell woocommerce-orders-table__cell-order-actions" data-title="Actions">
                        <a href="./product-detail-page.html" class="rlr-data-table__link woocommerce-button button view"> 취소 </a>
                      </td>
                    </tr>
                    <tr class="rlr-data-table__row woocommerce-orders-table__row woocommerce-orders-table__row--status-on-hold order">
                      <td class="rlr-data-table__cell woocommerce-orders-table__cell woocommerce-orders-table__cell-order-number" data-title="Order">
                        <a href="./product-detail-page.html"> #554 </a>
                      </td>
                      <td class="rlr-data-table__cell woocommerce-orders-table__cell woocommerce-orders-table__cell-order-date" data-title="Date">
                        <time datetime="2022-04-20T08:01:42+00:00"> April 20, 2022 </time>
                      </td>
                      <td class="rlr-data-table__cell woocommerce-orders-table__cell woocommerce-orders-table__cell-order-status" data-title="Status">On hold</td>
                      <td class="rlr-data-table__cell rlr-data-table__cell-total woocommerce-orders-table__cell woocommerce-orders-table__cell-order-total" data-title="Total">
                        <span class="rlr-data-table__amount woocommerce-Price-amount amount">
                          <span class="woocommerce-Price-currencySymbol"> $ </span>
                          <span>1,000</span>
                        </span>
                      </td>
                      <td class="rlr-data-table__cell woocommerce-orders-table__cell woocommerce-orders-table__cell-order-actions" data-title="Actions">
                        <a href="./product-detail-page.html" class="rlr-data-table__link woocommerce-button button view"> 취소 </a>
                      </td>
                    </tr>
                    <tr class="rlr-data-table__row woocommerce-orders-table__row woocommerce-orders-table__row--status-on-hold order">
                      <td class="rlr-data-table__cell woocommerce-orders-table__cell woocommerce-orders-table__cell-order-number" data-title="Order">
                        <a href="./product-detail-page.html"> #553 </a>
                      </td>
                      <td class="rlr-data-table__cell woocommerce-orders-table__cell woocommerce-orders-table__cell-order-date" data-title="Date">
                        <time datetime="2022-04-20T08:01:42+00:00"> April 20, 2022 </time>
                      </td>
                      <td class="rlr-data-table__cell woocommerce-orders-table__cell woocommerce-orders-table__cell-order-status" data-title="Status">On hold</td>
                      <td class="rlr-data-table__cell rlr-data-table__cell-total woocommerce-orders-table__cell woocommerce-orders-table__cell-order-total" data-title="Total">
                        <span class="rlr-data-table__amount woocommerce-Price-amount amount">
                          <span class="woocommerce-Price-currencySymbol"> $ </span>
                          <span>1,000</span>
                        </span>
                      </td>
                      <td class="rlr-data-table__cell woocommerce-orders-table__cell woocommerce-orders-table__cell-order-actions" data-title="Actions">
                        <a href="./product-detail-page.html" class="rlr-data-table__link woocommerce-button button view"> 취소 </a>
                      </td>
                    </tr>
                    <tr class="rlr-data-table__row woocommerce-orders-table__row woocommerce-orders-table__row--status-on-hold order">
                      <td class="rlr-data-table__cell woocommerce-orders-table__cell woocommerce-orders-table__cell-order-number" data-title="Order">
                        <a href="./product-detail-page.html"> #552 </a>
                      </td>
                      <td class="rlr-data-table__cell woocommerce-orders-table__cell woocommerce-orders-table__cell-order-date" data-title="Date">
                        <time datetime="2022-04-20T08:01:42+00:00"> April 20, 2022 </time>
                      </td>
                      <td class="rlr-data-table__cell woocommerce-orders-table__cell woocommerce-orders-table__cell-order-status" data-title="Status">On hold</td>
                      <td class="rlr-data-table__cell rlr-data-table__cell-total woocommerce-orders-table__cell woocommerce-orders-table__cell-order-total" data-title="Total">
                        <span class="rlr-data-table__amount woocommerce-Price-amount amount">
                          <span class="woocommerce-Price-currencySymbol"> $ </span>
                          <span>1,000</span>
                        </span>
                      </td>
                      <td class="rlr-data-table__cell woocommerce-orders-table__cell woocommerce-orders-table__cell-order-actions" data-title="Actions">
                        <a href="./product-detail-page.html" class="rlr-data-table__link woocommerce-button button view"> 취소 </a>
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

	});
</script>
  
<%@include file="./includes/footer.jsp"%>
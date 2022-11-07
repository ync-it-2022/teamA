<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./includes/header.jsp"%>

<main id="primary" class="site-main rlr-order-received">
    <section class="rlr-section">
      <div class="container-xxl">
        <div class="entry-content">
          <div class="woocommerce-info">
            <div class="rlr-page-title">
              <span class="rlr-page-title__icon"> <i class="rlr-icon-font flaticon-seen"> </i> </span>
              <div>
                <h2 class="type-h3 rlr-page-title__title">결제 완료</h2>
                <span class="rlr-page-title__desc">Thank you Sanjeev, we have recieved your order!</span>
              </div>
            </div>
          </div>
          <div class="rlr-content">
            <div class="woocommerce">
              <div class="woocommerce-order">
                <div class="woocommerce-order__col-1">
                  <ul class="woocommerce-order-overview woocommerce-thankyou-order-details order_details">
                    <li class="woocommerce-order-overview__order order">
                      Order number:
                      <span> 556 </span>
                    </li>
                    <li class="woocommerce-order-overview__date date">
                      Date:
                      <span> April 22, 2022 </span>
                    </li>
                    <li class="woocommerce-order-overview__total total">
                      Total:
                      <span class="woocommerce-Price-amount amount">
                        <bdi>
                          <span class="woocommerce-Price-currencySymbol"> $ </span>
                          <span>10,900</span>
                        </bdi>
                      </span>
                    </li>
                  </ul>
                  <div class="woocommerce-customer-details">
                    <h2 class="woocommerce-column__title">Your Details</h2>
                    <address>
                      <ul class="woocommerce-details__items">
                        <li class="woocommerce-details__item">
                          <span class="woocommerce-details__icon"><i class="rlr-icon-font flaticon-carbon-user"> </i></span>
                          <div>
                            <p class="woocommerce-details__title">Name</p>
                            <span class="woocommerce-details__desc"> Sanjeev Jha </span>
                          </div>
                        </li>
                        <li class="woocommerce-details__item">
                          <span class="woocommerce-details__icon"><i class="rlr-icon-font flaticon-telephone"> </i></span>
                          <div>
                            <p class="woocommerce-details__title">Mobile No.</p>
                            <span class="woocommerce-details__desc"> 020 85775772 </span>
                          </div>
                        </li>
                        <li class="woocommerce-details__item">
                          <span class="woocommerce-details__icon"><i class="rlr-icon-font flaticon-email"> </i></span>
                          <div>
                            <p class="woocommerce-details__title">Email</p>
                            <span class="woocommerce-details__desc"> sjha@emprise.tours </span>
                          </div>
                        </li>
                      </ul>
                    </address>
                  </div>
                </div>
                <div class="woocommerce-order-details">
                  <div>
                    <h2 class="woocommerce-order-details__title">항공편</h2>
                    <table class="woocommerce-table woocommerce-table--order-details shop_table order_details">
                      <thead>
                        <tr>
                          <th class="woocommerce-table__product-name product-name">Product</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>
                            <ul class="order-detail-card">
                              <li class="order-detail-card__header">
                                <div>
                                  <img class="order-detail-card__img" src="/resources/assets/images/card_items-photo.jpg" alt="..." />
                                </div>
                                <div>
                                  <p class="order-detail-card__title">Mountain Hiking Tour</p>
                                </div>
                              </li>
                              <li class="order-detail-card__item"><span>인원 : </span><span>3</span></li>
                            </ul>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                  <div>
                    <h2 class="woocommerce-order-details__title">숙박편</h2>
                    <table class="woocommerce-table woocommerce-table--order-details shop_table order_details">
                      <thead>
                        <tr>
                          <th class="woocommerce-table__product-name product-name">Product</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>
                            <ul class="order-detail-card">
                              <li class="order-detail-card__header">
                                <div>
                                  <img class="order-detail-card__img" src="/resources/assets/images/card_items-photo.jpg" alt="..." />
                                </div>
                                <div>
                                  <p class="order-detail-card__title">Mountain Hiking Tour</p>
                                </div>
                              </li>
                              <li class="order-detail-card__item"><span>인원 : </span><span>3</span></li>
                            </ul>
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
      </div>
    </section>
  </main>
  
<script type="text/javascript">
	$(document).ready(function () {

	});
</script>
  
<%@include file="./includes/footer.jsp"%>
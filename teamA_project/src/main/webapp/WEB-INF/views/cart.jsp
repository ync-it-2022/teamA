<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./includes/header.jsp"%>

<main id="primary" class="site-main rlr-checkout">
    <article id="post-7" class="post-7 page type-page status-publish hentry">
      <div class="container-xxl">
        <div class="entry-content">
          <div class="woocommerce">
            <div class="woocommerce-info">
              <div class="rlr-page-title">
                <span class="rlr-page-title__icon"> <i class="rlr-icon-font flaticon-carbon-shopping-cart"> </i> </span>
                <div>
                  <h2 class="type-h3 rlr-page-title__title">주문</h2>
                </div>
              </div>
            </div>
            <form class="checkout_coupon woocommerce-form-coupon" method="post" style="display: none">
              <p>If you have a coupon code, please apply it below.</p>
              <p class="form-row form-row-first">
                <input type="text" name="coupon_code" class="input-text" placeholder="Coupon code" id="coupon_code" value="" />
              </p>
              <p class="form-row form-row-last">
                <button type="submit" class="button" name="apply_coupon" value="Apply coupon">Apply coupon</button>
              </p>
              <div class="clear"></div>
            </form>
            <div class="woocommerce-notices-wrapper"></div>
            <form name="checkout" method="post" class="checkout woocommerce-checkout" action="./order-received.html" enctype="multipart/form-data" novalidate="novalidate">
              <div class="col2-set" id="customer_details">
                <div class="col-1">
                  <div class="woocommerce-billing-fields">
                    <div class="woocommerce-billing-fields__field-wrapper">
                      <h6 class="checkout__section-title">
                        <span> 개인정보 입력 </span>
                      </h6>
                      <div class="checkout__personal-details">
                        <p class="form-row form-row-first validate-required" id="billing_first_name_field" data-priority="10">
                          <label for="billing_first_name" class=""> First name </label>
                          <span class="woocommerce-input-wrapper">
                            <input type="text" class="input-text" name="billing_first_name" id="billing_first_name" placeholder="John" value="" autocomplete="given-name" />
                          </span>
                        </p>
                        <p class="form-row form-row-last validate-required" id="billing_last_name_field" data-priority="20">
                          <label for="billing_last_name" class=""> Last name </label>
                          <span class="woocommerce-input-wrapper">
                            <input type="text" class="input-text" name="billing_last_name" id="billing_last_name" placeholder="doe" value="" autocomplete="family-name" />
                          </span>
                        </p>
                        <p class="form-row form-row-wide validate-required validate-phone" id="billing_phone_field" data-priority="100">
                          <label for="billing_phone" class=""> Phone </label>
                          <span class="woocommerce-input-wrapper">
                            <input type="tel" class="input-text" name="billing_phone" id="billing_phone" placeholder="XXXXXXXXXX" value="" autocomplete="tel" />
                          </span>
                        </p>
                        <p class="form-row form-row-wide validate-required validate-email" id="billing_email_field" data-priority="110">
                          <label for="billing_email" class=""> Email </label>
                          <span class="woocommerce-input-wrapper">
                            <input type="email" class="input-text" name="billing_email" id="billing_email" placeholder="jd@emprise.tours" value="" autocomplete="email" />
                          </span>
                        </p>
                      </div>
                      <h6 class="checkout__section-title">
                        <span> Payment Details </span>
                      </h6>
                      <div id="payment" class="woocommerce-checkout-payment">
                        <ul class="wc_payment_methods payment_methods methods">
                          <li class="wc_payment_method payment_method_stripe payment-details__visa">
                            <label for="payment_method_stripe"> Visa Ending in 9785 </label>
                            <input id="payment_method_stripe" type="radio" class="input-radio" name="payment_method" value="stripe" data-order_button_text="" />
                          </li>
                          <li class="wc_payment_method payment_method_cod payment-details__master-card">
                            <label for="payment_method_cod"> Mastercard Ending in 2568 </label>
                            <input id="payment_method_cod" type="radio" class="input-radio" name="payment_method" value="cod" data-order_button_text="" />
                            <div class="payment_box payment_method_cod" style="display: none">
                              <p>Pay with cash upon delivery.</p>
                            </div>
                          </li>
                          <li class="wc_payment_method payment_method_cheque payment-details__paypal">
                            <label for="payment_method_cheque"> Paypal </label>
                            <input id="payment_method_cheque" type="radio" class="input-radio" name="payment_method" value="cheque" data-order_button_text="" />
                            <div class="payment_box payment_method_cheque" style="display: none">
                              <p>Please send a check to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</p>
                            </div>
                          </li>
                          <li class="wc_payment_method">
                            <p class="form-row woocommerce-SavedPaymentMethods-saveNew woocommerce-validated payment-details__add-card">
                              <label for="wc-stripe-new-payment-method" style="display: inline"> Add credit/debit card </label>
                              <input id="wc-stripe-new-payment-method" class="input-radio" name="payment_method" type="radio" checked="checked" value="true" />
                            </p>
                          </li>
                        </ul>
                        <div class="form-row place-order">
                          <noscript>
                            Since your browser does not support JavaScript, or it is disabled, please ensure you click the
                            <em> Update Totals </em>
                            button before placing your order. You may be charged more than the amount stated above if you fail to do so.
                            <br />
                            <button type="submit" class="button alt" name="woocommerce_checkout_update_totals" value="Update totals">Update totals</button>
                          </noscript>
                          <div class="woocommerce-terms-and-conditions-wrapper">
                            <div class="woocommerce-privacy-policy-text"></div>
                          </div>
                          <input type="hidden" id="woocommerce-process-checkout-nonce" name="woocommerce-process-checkout-nonce" value="594806c7c0" />
                          <input type="hidden" name="_wp_http_referer" value="/wp/?wc-ajax=update_order_review" />
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-2">
                  <div class="woocommerce-shipping-fields"></div>
                  <div class="woocommerce-additional-fields">
                    <h3>Additional information</h3>
                    <div class="woocommerce-additional-fields__field-wrapper">
                      <p class="form-row notes" id="order_comments_field" data-priority="">
                        <label for="order_comments" class="">
                          Order notes
                          <span class="optional"> (optional) </span>
                        </label>
                        <span class="woocommerce-input-wrapper">
                          <textarea name="order_comments" class="input-text" id="order_comments" placeholder="Notes about your order, e.g. special notes for delivery." rows="2" cols="5"></textarea>
                        </span>
                      </p>
                    </div>
                  </div>
                </div>
              </div>
              <div id="order_review" class="woocommerce-checkout-review-order">
                <table class="shop_table woocommerce-checkout-review-order-table">
                  <tbody>
                    <tr class="cart_item">
                      <td class="product-name">
                        <h6 class="cart-item-title">항공편</h6>
                        <ul class="cart-item-card">
                          <li class="cart-item-card__header">
                            <div>
                              <img class="cart-item-card__img" src="/resources/assets/images/card_items-photo.jpg" alt="..." />
                            </div>
                            <div>
                              <p class="cart-item-card__title">
                                <span>출발지</span>
                                <span> ~ </span>
                                <span>도착지</span>
                              </p>
                              <p class="cart-item-card__date">
                                <span>
                                  <span>출발시간</span>
                                  <span> ~ </span>
                                  <span>도착시간</span>
                                </span>
                                <span> ~항공 </span>
                              </p>
                            </div>
                          </li>
                          <li class="cart-item-card__item">
                            <span class="cart-item-card__close">
                              <i class="rlr-icon-font flaticon-cross"></i>
                            </span>
                            <div class="cart-item-card__iconcontainer">
                              <span>
                                <i class="rlr-icon-font flaticon-carbon-user"></i>
                              </span>
                            </div>
                            <div class="cart-item-card__item-title">
                              <p>인원</p>
                              <p>
                                <b>$300</b>
                              </p>
                            </div>
                            <p class="cart-item-card__item-number">
                              <span class="times">x</span>
                              <input type="text" class="input-text"name="billing_first_name" id="billing_first_name" value="" autocomplete="given-name" />
                            </p>
                            <p class="cart-item-card__item-price">$600</p>
                          </li>
                          <li class="cart-item-card__footer">
                            <p>합계</p>
                            <p>$600</p>
                          </li>
                        </ul>
                      </td>
                    </tr>
                    <tr class="cart_item">
                      <td class="product-name">
                        <h6 class="cart-item-title">숙박편</h6>
                        <ul class="cart-item-card">
                        <div>
                          <li class="cart-item-card__header">
                            <div>
                              <img class="cart-item-card__img" src="/resources/assets/images/card_items-photo.jpg" alt="..." />
                            </div>
                            <div>
                              <p class="cart-item-card__title">숙박소 이름</p>
                              <p class="cart-item-card__date">
                                <span>
                                  <span>체크인 일자</span>
                                  <span> ~ </span>
                                  <span>체크아웃 일자</span>
                                </span>
                                <span>X일</span>
                              </p>
                            </div>
                          </li>
                          <li class="cart-item-card__item">
                            <span class="cart-item-card__close">
                              <i class="rlr-icon-font flaticon-cross"></i>
                            </span>
                            <div class="cart-item-card__iconcontainer">
                              <span>
                                <i class="rlr-icon-font flaticon-carbon-user"></i>
                              </span>
                            </div>
                            <div class="cart-item-card__item-title">
                              <p>인원</p>
                              <p>
                                <b> $200 </b>
                              </p>
                            </div>
                            <p class="cart-item-card__item-number">
                              <span class="times">x</span>
                              <input type="text" class="input-text"name="billing_first_name" id="billing_first_name" value="" autocomplete="given-name" />
                            </p>
                            <p class="cart-item-card__item-price">$400</p>
                          </li>
                        </div>
                          <li class="cart-item-card__footer">
                            <p>합계</p>
                            <p>$400</p>
                          </li>
                        </ul>
                      </td>
                    </tr>
                  </tbody>
                  <tfoot>
                    <tr class="order-total">
                      <th>합계 금액</th>
                      <td>
                        <strong>
                          <span class="woocommerce-Price-amount amount">
                            <bdi>
                              <span class="woocommerce-Price-currencySymbol"> $ </span>
                              <span>1,000</span>
                            </bdi>
                          </span>
                        </strong>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <button type="submit" class="button alt" name="woocommerce_checkout_place_order" id="place_order" value="Place order" data-value="Place order">결제</button>
                      </td>
                    </tr>
                  </tfoot>
                </table>
              </div>
            </form>
          </div>
        </div>
        <!-- .entry-content -->
      </div>
    </article>
    <!-- #post-7 -->
  </main>
  
 <script type="text/javascript">
	$(document).ready(function (e) {
		$("#place_order").on("click", function(e) {
			e.preventDefault();
			self.location = "/orders/received";
		})
	
	});
</script>
<%@include file="./includes/footer.jsp"%>
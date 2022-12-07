<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./includes/header.jsp"%>

<main id="rlr-main" class="rlr-main">
    <section class="rlr-section">
      <div class="rlr-cta rlr-cta--no-button">
        <h2>공지사항</h2>
      </div>
    </section>
    <section class="rlr-section rlr-section__my">
    </section>
    <section class="rlr-contact rlr-contact-details--v2 rlr-section">
      <div class="container">
        <div class="row">
          <div class="col-lg-1"></div>
          <div class="col-lg-11">
            <div class="rlr-contact-form">
              <div class="rlr-contact-form__header">
                <div class="rlr-page-title">
                  <span class="rlr-page-title__icon"> <i class="rlr-icon-font flaticon-fluent-hand-left-20-regular"> </i> </span>
                  <div>
                    <h2 class="type-h3 rlr-page-title__title">공지사항</h2>
                    <span class="rlr-page-title__desc">공지사항 안내문</span>
                  </div>
                </div>
              </div>
              <div class="content col-lg-12 col-xs-12">
                <div class="rlr-data-container woocommerce-MyAccount-content">
                  <div class="table">
                    <table class="rlr-data-table woocommerce-orders-table woocommerce-MyAccount-orders shop_table shop_table_responsive my_account_orders account-orders-table">
                      <thead class="rlr-data-table__header">
                        <tr class="rlr-data-table__header-row">
                          <th class="woocommerce-orders-table__header woocommerce-orders-table__header-order-number">
                            <span class="nobr"> 공지번호 </span>
                          </th>
                          <th class="woocommerce-orders-table__header woocommerce-orders-table__header-order-date">
                            <span class="nobr"> 공지날짜 </span>
                          </th>
                          <th class="woocommerce-orders-table__header woocommerce-orders-table__header-order-status">
                            <span class="nobr"> 공지제목 </span>
                          </th>
                          <th class="woocommerce-orders-table__header woocommerce-orders-table__header-order-actions">
                            <span class="nobr"> 작성자 </span>
                          </th>
                        </tr>
                      </thead>
                      <tbody>
                        <c:forEach items="${list}" var="notice">
                          <tr class="rlr-data-table__row woocommerce-orders-table__row woocommerce-orders-table__row--status-on-hold order">
                            <td class="rlr-data-table__cell woocommerce-orders-table__cell woocommerce-orders-table__cell-order-number" data-title="Order">
                              <c:out value="${notice.notice_idx}" />
                            </td>
                            <td class="rlr-data-table__cell woocommerce-orders-table__cell woocommerce-orders-table__cell-order-date" data-title="Date">
                              <fmt:formatDate pattern="yyyy-MM-dd" value="${notice.reg_date}" />
                            </td>
                            <td class="rlr-data-table__cell woocommerce-orders-table__cell woocommerce-orders-table__cell-order-status" data-title="Status">
                              <a class='move' href='<c:out value="${notice.notice_idx}"/>'><c:out value="${notice.title}" /></a>
                            </td>
                            <td class="rlr-data-table__cell woocommerce-orders-table__cell woocommerce-orders-table__cell-order-actions" data-title="Actions">
                              <a> 관리자 </a>
                            </td>
                          </tr>
                        </c:forEach>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>

            <nav class="rlr-pagination" aria-label="Product list navigation">
              <ul class="pagination rlr-pagination__list">
                <li class="page-item paginate_button rlr-pagination__page-item">
                  <c:if test="${pageMaker.prev}">
                    <a href="${pageMaker.startPage - 1}" class="page-link rlr-pagination__page-link rlr-pagination__page-link--prev" aria-label="Previous">
                      <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M15.833 10H4.167m0 0L10 15.833M4.167 10 10 4.167" stroke="var(--body-color)" stroke-width="1.67" stroke-linecap="round" stroke-linejoin="round" />
                      </svg>
                      <span aria-hidden="true">Previous</span>
                    </a>
                  </c:if>
                </li>

                <li class="page-item rlr-pagination__page-item">
                  <ul class="pagination rlr-pagination__child-list">
                    <c:forEach var="num" begin="${pageMaker.startPage}"	end="${pageMaker.endPage}">
                      <li class="paginate_button page-item rlr-pagination__page-item">
                        <a class="page-link rlr-pagination__page-link rlr-pagination__page-link--counter" href="${num}">${num}</a>
                      </li>
                    </c:forEach>
                  </ul>
                </li>

                <li class="page-item paginate_button rlr-pagination__page-item">
                  <c:if test="${pageMaker.next}">
                    <a href="${pageMaker.endPage +1 }" class="page-link rlr-pagination__page-link rlr-pagination__page-link--next" aria-label="Next">
                      <span aria-hidden="true">Next</span>
                      <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M4.167 10h11.666m0 0L10 4.167M15.833 10 10 15.833" stroke="var(--body-color)" stroke-width="1.67" stroke-linecap="round" stroke-linejoin="round" />
                      </svg>
                    </a>
                  </c:if>
                </li>
              </ul>
            </nav>

            <form id='actionForm' action="/notice" method='get'>
              <input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
              <input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
            </form>
          </div>
        </div>
      </div>
    </section>
  </main>
  
 <script type="text/javascript">
 	let actionForm = $("#actionForm");
   	$(document).ready(function() {

	   $(".paginate_button a").on("click", function(e) {
	     e.preventDefault();
	     actionForm.find("input[name='pageNum']").val($(this).attr("href"));
	     actionForm.submit();
	   });

	   $(".move").on("click",function(e) {
	     e.preventDefault();
	     actionForm.append("<input type='hidden' name='notice_idx' value='" + $(this).attr("href")	+ "'>");
	     actionForm.attr("action", "/notice/detail");
	     actionForm.submit();
	   });
   });
</script>
  
<%@include file="./includes/footer.jsp"%>
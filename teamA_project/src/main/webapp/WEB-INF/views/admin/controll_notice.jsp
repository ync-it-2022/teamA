<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../includes/controll_header.jsp"%>

      <div id="layoutSidenav_content">
        <main>
          <div class="container-fluid px-4">
            <h1 class="mt-4">공지사항 관리</h1>

            <div class="card mb-4">
              <div class="card-header">
                <i class="fas fa-table me-1"></i>
                공지사항 목록
              </div>
              <div class="card-body">
                <table id="datatablesSimple">
                  <thead>
                    <tr>
                      <th>번호</th>
                      <th>제목</th>
                      <th>작성일자</th>
                      <th>조회수</th>
                    </tr>
                  </thead>
                  <tbody>
                    <c:forEach items="${list}" var="notice">
                          <tr class="rlr-data-table__row woocommerce-orders-table__row woocommerce-orders-table__row--status-on-hold order">
                            <td class="rlr-data-table__cell woocommerce-orders-table__cell woocommerce-orders-table__cell-order-number" data-title="Order">
                              <c:out value="${notice.notice_idx}" />
                            </td>
                            <td class="rlr-data-table__cell woocommerce-orders-table__cell woocommerce-orders-table__cell-order-status" data-title="Status">
                              <a class='move' href='management/<c:out value="${notice.notice_idx}"/>'><c:out value="${notice.title}" /></a>
                            </td>
                            <td class="rlr-data-table__cell woocommerce-orders-table__cell woocommerce-orders-table__cell-order-date" data-title="Date">
                              <fmt:formatDate pattern="yyyy-MM-dd" value="${notice.reg_date}" />
                            </td>
                            <td class="rlr-data-table__cell woocommerce-orders-table__cell woocommerce-orders-table__cell-order-number" data-title="Order">
                              <c:out value="${notice.view_count}" />
                            </td>
                          </tr>
                        </c:forEach>
                  </tbody>
                </table>
				<button class="btn btn-primary create">
					New Notice
				</button>
              </div>
            </div>
          </div>
        </main>
      </div>
    </div>
    
        
   <script type="text/javascript">
	   $(document).ready(function () {
		   $(".create").on("click", function (e) {
		       e.preventDefault();
				self.location = "/notice/create";
			});
	   });
   </script>
<%@include file="../includes/controll_footer.jsp"%>
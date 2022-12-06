<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@include file="./includes/header.jsp"%>

<main id="rlr-main" class="rlr-main">
  <article class="rlr-article rlr-article-single--v2">
    <div class="rlr-article__wrapper">
      <div class="rlr-article__header__timestamp">
        <fmt:formatDate pattern="yyyy년 MM월 dd일" value="${notice.reg_date}" />
      </div>
      <div class="content">
        <div class="content__highlight">
          <h2 class="type-h3">
            <c:out value="${notice.title}" />
          </h2>
        </div>
        <p class="type-lead">
          <c:out value="${notice.content}" />
        </p>
      </div>
      <div class="row">
        <div class="col-2">
          <button
            data-oper="list"
            class="btn rlr-button rlr-booking-card__button"
          >
            목록
          </button>
        </div>
      </div>
    </div>

    <form id="operForm" action="/notice" method="get">
      <input
        type="hidden"
        id="notice_idx"
        name="notice_idx"
        value='<c:out value="${notice.notice_idx}"/>'
      />
      <input
        type="hidden"
        name="pageNum"
        value='<c:out value="${cri.pageNum}"/>'
      />
      <input
        type="hidden"
        name="amount"
        value='<c:out value="${cri.amount}"/>'
      />
    </form>
  </article>
</main>

<script type="text/javascript">
  let operForm = $("#operForm");

  $("button[data-oper='list']").on("click", function (e) {
    console.log("hi");
    operForm.find("#notice_idx").remove();
    operForm.attr("action", "/notice");
    operForm.submit();
  });
</script>
<%@include file="./includes/footer.jsp"%>

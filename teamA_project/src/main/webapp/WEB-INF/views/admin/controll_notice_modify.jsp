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
                <form id='modifyForm' action='/notice/modify' method='post'>
                  <div class="form-group">
                    <label>공지사항 번호</label>
                    <input
                      class="form-control"
                      name="notice_idx"
                      value="${notice.notice_idx }"
                      readonly="readonly"
                    />
                  </div>
                  <div class="form-group">
                    <label>제목</label>
                    <input class="form-control" name="title" value="${notice.title }" />
                  </div>
                  <div class="form-group">
                    <label>내용</label>
                    <textarea
                      class="form-control"
                      rows="5"
                      name="content"
                    ><c:out value="${notice.content}"/></textarea>
                  </div>
                  <button type="submit" id='modify' class="btn btn-success">Modify</button>
                  <button type="submit" id='delete' class="btn btn-danger">Remove</button>
                  </div>
                </form>
                </div>
              </div>
            </div>
          </div>
        </main>
      </div>
    </div>
    
    <script type="text/javascript">
      let modifyForm = $('#modifyForm');
  
        $(document).ready(function() {
          $("#modifyForm #modify").on("click", function(e) {
            e.preventDefault();
  
          if(!modifyForm.find("input[name='title']").val()) {
            alert("제목을 입력해주세요");
            return false;
          }
          if(!modifyForm.find("textarea[name='content']").val()) {
            alert("내용을 입력해주세요");
            return false;
          }
          
          modifyForm.submit();
          });

          $("#modifyForm #delete").on("click", function(e) {
            e.preventDefault();
            modifyForm.attr("action", "/notice/delete");
            
           	modifyForm.submit();
          });
        });
      </script>
<%@include file="../includes/controll_footer.jsp"%>
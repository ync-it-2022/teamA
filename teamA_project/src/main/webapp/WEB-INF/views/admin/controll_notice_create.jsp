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
					<form id='createForm' action='/notice/create' method='post'>
  						<div class="form-group">
							<div class="form-group">
								<label>제목</label>
								<input class="form-control" name="title" value="" />
							</div>
							<div class="form-group">
								<label>내용</label>
								<textarea
								class="form-control"
								rows="5"
								name="content"
								></textarea>
							</div>
							<button id="create" type="submit" class="btn btn-primary">Create</button>
							</div>
						</div>
					</form>
              	</div>
            </div>
          </div>
        </main>
      </div>
    </div>
    
    <script type="text/javascript">
		let createForm = $('#createForm');

    	$(document).ready(function() {
    		$("#createForm #create").on("click", function(e) {
    			e.preventDefault();

				if(!createForm.find("input[name='title']").val()) {
					alert("제목을 입력해주세요");
					return false;
				}
				if(!createForm.find("textarea[name='content']").val()) {
					alert("내용을 입력해주세요");
					return false;
				}
				
				createForm.submit();
    		});
    	});
    </script>
<%@include file="../includes/controll_footer.jsp"%>
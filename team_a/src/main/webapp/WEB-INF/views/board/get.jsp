<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<%@include file="../includes/header.jsp"%>

<script>
//썸네일 파일명을 가져오는 함수
function getThumbFileName(fullFilePath) {
	var arrString = fullFilePath.split("/");
	console.log(arrString);
	arrString.splice(-1, 1, "s_" + arrString[arrString.length - 1]);
	return arrString.join("/");
}
</script>


<div class="row">
  <div class="col-lg-12">
    <h1 class="page-header">Board Read   </h1>
  </div>
  <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-default">

      <div class="panel-heading">Board Read Page</div>
      <!-- /.panel-heading -->
      <div class="panel-body">

          <div class="form-group">
          <label>Bno</label> <input class="form-control" name='bno'
            value='<c:out value="${board.bno }"/>' readonly="readonly">
        </div>

        <div class="form-group">
          <label>Title</label> <input class="form-control" name='title'
            value='<c:out value="${board.title }"/>' readonly="readonly">
        </div>

        <div class="form-group">
          <label>Text area</label>
          <textarea class="form-control" rows="3" name='content'
            readonly="readonly"><c:out value="${board.content}" /></textarea>
        </div>

        <div class="form-group">
          <label>Writer</label> <input class="form-control" name='writer'
            value='<c:out value="${board.writer }"/>' readonly="readonly">
        </div>
        
        <!-- 업로드 이미지나 파일을 출력 -->
        <c:forEach var="i" begin="1" end="3">
			<c:set var="t" value="file_${i}" />
				<c:if test="${not empty board[t]}">
					<div class="form-group">
			          <label>이미지${i}</label>
						<a href="/resources/upload/${board[t]}" target="_blank">
						<img src="/resources/upload/${board[t]}" id="thumb_${i}"></a>
			        </div>
			        <script>
			        document.getElementById('thumb_${i}').src="/resources/upload/" + getThumbFileName('${board[t]}');
					</script>
		        </c:if>
		</c:forEach>
        
		<sec:authentication property="principal" var="pinfo"/>
		<sec:authorize access="isAuthenticated()">
			<c:if test="${pinfo.member.userid eq board.writer}">
				<button data-oper='modify' class="btn btn-default">Modify</button>
			</c:if>
		</sec:authorize>
		<button data-oper='list' class="btn btn-info">List</button>


	<form id='operForm' action="/boad/modify" method="get">
	  <input type='hidden' id='bno' name='bno' value='<c:out value="${board.bno}"/>'>
	  <input type='hidden' name='pageNum' value='<c:out value="${cri.pageNum}"/>'>
	  <input type='hidden' name='amount' value='<c:out value="${cri.amount}"/>'>
	  <input type='hidden' name='keyword' value='<c:out value="${cri.keyword}"/>'>
	  <input type='hidden' name='type' value='<c:out value="${cri.type}"/>'>  
	</form>

      </div>
      <!--  end panel-body -->

    </div>
    <!--  end panel-body -->
  </div>
  <!-- end panel -->
</div>
<!-- /.row -->

<div class='row'>

  <div class="col-lg-12">

    <!-- /.panel -->
    <div class="panel panel-default">
<!--       <div class="panel-heading">
        <i class="fa fa-comments fa-fw"></i> Reply
      </div> -->
      
      <div class="panel-heading">
        <i class="fa fa-comments fa-fw"></i> Reply
        <sec:authorize access="isAuthenticated()">
	        <button id='addReplyBtn' class='btn btn-primary btn-xs pull-right'>New Reply</button>
        </sec:authorize>
      </div>      
      
      
      <!-- /.panel-heading -->
      <div class="panel-body">        
      
      	<!-- 댓글 목록 출력 부분 -->
        <ul class="chat">

        </ul>
        <!-- ./ end ul -->
      </div>
      <!-- /.panel .chat-panel -->

	<div class="panel-footer"></div>


		</div>
  </div>
  <!-- ./ end row -->
</div>

	<!-- 댓글 Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">REPLY MODAL</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">
		                <label>Reply</label> 
		                <input class="form-control" name='reply' value='New Reply!!!!'>
					</div>      
					<div class="form-group">
						<label>Replyer</label> 
						<input class="form-control" name='replyer' value='replyer'>
					</div>
					<div class="form-group">
						<label>Reply Date</label> 
						<input class="form-control" name='replyDate' value='2018-01-01 13:13'>
					</div>
				</div>
				
				<div class="modal-footer">
					<button id='modalModBtn' type="button" class="btn btn-warning">Modify</button>
					<button id='modalRemoveBtn' type="button" class="btn btn-danger">Remove</button>
					<button id='modalRegisterBtn' type="button" class="btn btn-primary">Register</button>
					<button id='modalCloseBtn' type="button" class="btn btn-default">Close</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
        <!-- /.modal-dialog -->
	</div>
	<!-- /댓글 modal -->
      
<script type="text/javascript" src="/resources/js/reply.js"></script>

<script type="text/javascript">
$(document).ready(function () {
	  
	let bnoValue = '<c:out value="${board.bno}"/>';
	let replyUL = $(".chat");
	  
	showList(1);
	
	// 댓글 목록을 출력하는 함수
	function showList(page){
		
		// console.log("show list " + page);
	    
		replyService.getList({bno:bnoValue, page: page ?? 1 }, function(replyCnt, list) { // 초기 page 값 설정 시 널 병합 연산자 사용
	      
		    // console.log("replyCnt: "+ replyCnt );
		    // console.log("list: " + list);
		    // console.log(list);
	    	
			if(page == -1){
				pageNum = Math.ceil(replyCnt/10.0);
				showList(pageNum);
				return;
			}
 			
 			let str = "";
	     
			if(list == null || list.length == 0){
				replyUL.html("");
				return;
			}
	     
			// Template literals(혹은 Template String) 을 이용한 소스
			// \${item.rno} 처럼 앞에 백슬래쉬가 붙는 이유는 JSP의 EL(표현언어)의 표기법과 JS의 Template literals 표기법이 같아
			// 백슬래쉬를 해줘서 EL에서 특수문자 처리를 해버려 JSP의 EL로 사용하지 않게 한다. JSP + JS 활용시 Tip!
			list.forEach(function(item){
				str += `<li class='left clearfix' data-rno='\${item.rno}'>
						<div><div class='header'><strong class='primary-font'>[\${item.rno}] \${item.replyer}</strong> 
						<small class='pull-right text-muted'>\${replyService.displayTime(item.replyDate)}</small></div>
						<p>\${item.reply}</p></div></li>`; 
			});

			/* 기존 + 연산자를 이용한 소스. 가독성도 떨어지고 유지보수도 힘들다.
			for (var i = 0, len = list.length || 0; i < len; i++) {
				str +="<li class='left clearfix' data-rno='"+list[i].rno+"'>";
				str +="  <div><div class='header'><strong class='primary-font'>["
					+list[i].rno+"] "+list[i].replyer+"</strong>"; 
				str +="    <small class='pull-right text-muted'>"
					+replyService.displayTime(list[i].replyDate)+"</small></div>";
				str +="    <p>"+list[i].reply+"</p></div></li>";
			}
			*/
			replyUL.html(str);
	     
			showReplyPage(replyCnt);

	 
		});//end function
	     
	}//end showList
	
	
	let pageNum = 1;
	let replyPageFooter = $(".panel-footer");
    
	function showReplyPage(replyCnt){
      
		let endNum = Math.ceil(pageNum / 10.0) * 10;  
		let startNum = endNum - 9; 
      
		let prev = startNum != 1;
		let next = false;
      
		if(endNum * 10 >= replyCnt){
			endNum = Math.ceil(replyCnt/10.0);
		}
      
		if(endNum * 10 < replyCnt){
			next = true;
		}
      
		let str = "<ul class='pagination pull-right'>";
      
		if(prev){
			str+= "<li class='page-item'><a class='page-link' href='"+(startNum -1)+"'>Previous</a></li>";
		}
      
      
		for(let i = startNum ; i <= endNum; i++){
        
			let active = pageNum == i? "active":"";
        
			str+= "<li class='page-item "+active+" '><a class='page-link' href='"+i+"'>"+i+"</a></li>";
		}
      
		if(next){
			str+= "<li class='page-item'><a class='page-link' href='"+(endNum + 1)+"'>Next</a></li>";
		}
      
		str += "</ul></div>";
      
		console.log(str);
		replyPageFooter.html(str);
    }
     
	replyPageFooter.on("click","li a", function(e){
		e.preventDefault();
		console.log("page click");
        
		let targetPageNum = $(this).attr("href");
        
        console.log("targetPageNum: " + targetPageNum);
        
        pageNum = targetPageNum;
        
        showList(pageNum);
	});     

    
/*     function showList(page){ // 페이징이 없는 댓글
      
      replyService.getList({bno:bnoValue,page: page|| 1 }, function(list) {
        
        var str="";
       if(list == null || list.length == 0){
        
        replyUL.html("");
        
        return;
      }
       for (var i = 0, len = list.length || 0; i < len; i++) {
           str +="<li class='left clearfix' data-rno='"+list[i].rno+"'>";
           str +="  <div><div class='header'><strong class='primary-font'>"+list[i].replyer+"</strong>"; 
           str +="    <small class='pull-right text-muted'>"+replyService.displayTime(list[i].replyDate)+"</small></div>";
           str +="    <p>"+list[i].reply+"</p></div></li>";
         }


    replyUL.html(str);

      });//end function
      
   }//end showList */
   
	/* 댓글 modal 창 동작 부분*/
	let modal = $(".modal");
	let modalInputReply = modal.find("input[name='reply']");
	let modalInputReplyer = modal.find("input[name='replyer']");
	let modalInputReplyDate = modal.find("input[name='replyDate']");
	let modalModBtn = $("#modalModBtn");
	let modalRemoveBtn = $("#modalRemoveBtn");
	let modalRegisterBtn = $("#modalRegisterBtn");
	
	// 댓글 인증 부분 추가
	let replyer = null;
    
    <sec:authorize access="isAuthenticated()">
    	replyer = '<sec:authentication property="principal.member.userid"/>';   
	</sec:authorize>
 
	const csrfHeaderName ="${_csrf.headerName}"; 
	const csrfTokenValue="${_csrf.token}";
	
    
    $("#modalCloseBtn").on("click", function(e){
    	modal.modal('hide');
    });
    
    $("#addReplyBtn").on("click", function(e){
		modal.find("input").val("");
		modal.find("input[name='replyer']").val(replyer); // 인증한 사용자 id 값
		modalInputReplyDate.closest("div").hide();
		modal.find("button[id !='modalCloseBtn']").hide();
		
		modalRegisterBtn.show();
		$(".modal").modal("show");
    });
    
 	// Ajax Spring Security Header
 	// csrf 토큰을 ajax 댓글동작 시 값을 넘겨준다. 
    $(document).ajaxSend(function(e, xhr, options) { 
		xhr.setRequestHeader(csrfHeaderName, csrfTokenValue); 
	});
    
    // 댓글 등록
	modalRegisterBtn.on("click",function(e){
      
		let reply = {
			reply: modalInputReply.val(),
            replyer:modalInputReplyer.val(),
            bno:bnoValue
		};
      
		replyService.add(reply, function(result){
        
        alert(result);
        
        modal.find("input").val("");
        modal.modal("hide");
        
        showList(1);
        //showList(-1);
        
      });
      
    });
    
	//댓글 조회 클릭 이벤트 처리 
    $(".chat").on("click", "li", function(e){
      
    	let rno = $(this).data("rno");
		console.log(rno);
		
		replyService.get(rno, function(reply){
	
			modalInputReply.val(reply.reply);
			modalInputReplyer.val(reply.replyer);
			modalInputReplyDate.val(replyService.displayTime( reply.replyDate)).attr("readonly","readonly");
			modal.data("rno", reply.rno);
			
			modal.find("button[id !='modalCloseBtn']").hide();
			modalModBtn.show();
			modalRemoveBtn.show();
			
			$(".modal").modal("show");
		});
	});
	
	// 댓글 수정 이벤트
	modalModBtn.on("click", function(e){
    
		let originalReplyer = modalInputReplyer.val();
		
		let reply = {
				rno:modal.data("rno"), 
				reply: modalInputReply.val(),
				replyer: originalReplyer
				};
	  
		if(!replyer){
			alert("로그인후 수정이 가능합니다.");
			modal.modal("hide");
			return;
		}

		console.log("Original Replyer: " + originalReplyer);
		
		if(replyer  != originalReplyer){
			alert("자신이 작성한 댓글만 수정이 가능합니다.");
			modal.modal("hide");
			return;
		}
		  
		replyService.update(reply, function(result){
			alert(result);
			modal.modal("hide");
			showList(pageNum);
		});		
	});

	// 댓글 삭제 이벤트
	modalRemoveBtn.on("click", function (e){
  	  
		let rno = modal.data("rno");
	  
		console.log("RNO: " + rno);
		console.log("REPLYER: " + replyer);
	   	  
		if(!replyer){
			alert("로그인후 삭제가 가능합니다.");
			modal.modal("hide");
			return;
		}
	   	  
		let originalReplyer = modalInputReplyer.val();
	   	  
		console.log("Original Replyer: " + originalReplyer);
	   	  
		if(replyer !== originalReplyer){
	   		  
			alert("자신이 작성한 댓글만 삭제가 가능합니다.");
			modal.modal("hide");
			return;
		}
	   	  
		replyService.remove(rno, originalReplyer, function(result){
	   	        
			alert(result);
			modal.modal("hide");
			showList(pageNum);
		});
	});
	
	/* 댓글 modal 창 동작 부분*/
	
});

//아래 부분은 json data test용도이며 test 완료 후 모두 주석처리해야 한다.
// console.log("===============");
// console.log("JS TEST");

// var bnoValue = '<c:out value="${board.bno}"/>';

//for replyService add test
/*
replyService.add(
		{reply:"JS Test", replyer:"tester", bno:bnoValue},
		function(result){ 
			alert("RESULT: " + result);
		},
		function(err_msg, err_code){ 
			alert("ERROR 내용: " + err_msg + "\nERROR code: " + err_code);
		});
 */
 
//reply List Test
/* 
replyService.getList(
		{bno:bnoValue, page:1},
		function(list){
			for(var i = 0,  len = list.length||0; i < len; i++ ){
  				console.log(list[i]);
			}
		});
 */
 
//2번 댓글 삭제 테스트. 각자 존재하는 댓글 번호로 수정해야 함.
/* 
replyService.remove(2,
		function(count) {
			console.log(count);
			if (count === "success") {
				alert("REMOVED");
			}
		},
		function(err) {
			alert('ERROR...');
		});
 */
 
//3번 댓글 수정. 각자 존재하는 댓글 번호로 수정해야 함.
/* 
replyService.update(
	{rno : 3, bno : bnoValue, reply : "Modified Reply...." },
	function(result) {
		alert("수정 완료...");
	});  
 */
 
// 3번 댓글 내용 보기. 각자 존재하는 댓글 번호로 수정해야 함.
/* 
replyService.get(3, function(date) {
	console.log(date);
});
 */
</script>

<script type="text/javascript">

function replaceEscapeStr(str) {
	return str.replace("\\","\\\\");
}

$(document).ready(function() {
  
	let operForm = $("#operForm");

	$("button[data-oper='modify']").on("click", function(e){
		operForm.attr("action","/board/modify").submit();
	});
    
	$("button[data-oper='list']").on("click", function(e){
    
		operForm.find("#bno").remove();
		operForm.attr("action","/board/list")
		operForm.submit();
    
	});
  
});
</script>


<%@include file="../includes/footer.jsp"%>

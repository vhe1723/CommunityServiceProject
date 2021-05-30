<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<!--[if IE 8 ]><html class="no-js oldie ie8" lang="en"> <![endif]-->
<!--[if IE 9 ]><html class="no-js oldie ie9" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->

<head>

<!--- basic page needs
   ================================================== -->
<meta charset="utf-8">
<title>Category Page - Abstract</title>
<meta name="description" content="">
<meta name="author" content="">

<!-- mobile specific metas
   ================================================== -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS
   ================================================== -->
<link rel="stylesheet" href="../resources/css/base.css">
<link rel="stylesheet" href="../resources/css/vendor.css">
<link rel="stylesheet" href="../resources/css/main.css">


<!-- script
   ================================================== -->
<script src="../resources/js/modernizr.js"></script>
<script src="../resources/js/pace.min.js"></script>

<!-- favicons
	================================================== -->
<link rel="shortcut icon" href="../resources/favicon.ico"
	type="image/x-icon">
<link rel="icon" href="../resources/favicon.ico" type="image/x-icon">

</head>

<body id="top">

<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>

	<!-- header 
   ================================================== -->
	<header class="short-header">

		<div class="gradient-block"></div>

		<div class="row header-content">

			<div class="logo">
				<a href="../main">Author</a>
			</div>



			<nav id="main-nav-wrap">
				<ul class="main-navigation sf-menu">
					<li><a href="#" title="">Introduce</a>
						<ul class="sub-menu">
							<li><a href="../introPrj">Project</a></li>
							<li><a href="../introMem">Developer</a></li>
						</ul></li>
					<li><a href="../list" title="">Group</a></li>
					<li class="has-children current"><a href="../board/list" title="">Board</a></li>
					<li>&nbsp;&nbsp;&nbsp;&nbsp;</li>

					<c:choose>
						<c:when test="${id != null}">
							<li><a href="../logout" title="">Logout</a></li>
							<li><a href="../mypage" title="">Mypage</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="../login" title="">Login</a></li>
							<li><a href="#" onclick="needLogin()" title="">Mypage</a></li>

						</c:otherwise>
					</c:choose>

					
				



					
				</ul>
			</nav>
			<!-- end main-nav-wrap -->

			


		</div>

	</header>
	<!-- end header -->
	
	
<script>
	function needLogin() {
		alert("로그인 후 이용 가능합니다.");
		location.href = "http://localhost:8080/login";
	}

</script>



<!-- page header
   ================================================== -->
<section id="page-header">
	<div class="row current-cat">
		<div class="col-full">
			<h1>Board</h1>
		</div>
	</div>
</section>


<!-- masonry
   ================================================== -->
<section id="bricks" class="with-top-sep">

	<div class="row">

		<!-- brick-wrapper -->
		<div class="col-twelve">

			<div class="grid-sizer"></div>



			<table width="100%" style="text-align: center;"
				class="table table-striped table-bordered table-hover"
				id="dataTables-example">
				<thead>
					<tr>
						<th style="width: 200px; text-align: center;">번호</th>
						<th style="text-align: center;">제목</th>
						<th style="width: 300px; text-align: center;">작성일</th>

					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="board">
						<tr class="odd gradeX">
							<td style="text-align: center;"><c:out value="${board.b_no}" /></td>
							<td><a class="move" href='<c:out value="${board.b_no}" />'>
									<c:out value="${board.b_title}" />
							</a></td>
							<td style="text-align: center;"><fmt:formatDate value="${board.b_date }"
									pattern="yy/MM/dd HH:mm:ss" /></td>

						</tr>
					</c:forEach>
				</tbody>
			</table>
			
			<div class="row text-right">
			
			<c:choose>
						<c:when test="${id != null}">
							<button id='regBtn' class="submit button-primary full-width-on-mobile" >Register new Board</button>
						</c:when>
						<c:otherwise>
							<button class="submit button-primary full-width-on-mobile" onclick="needLogin()">Register new Board</button>

						</c:otherwise>
					</c:choose>
			
			
			
				</div>	
				
				
				
				
				
				
					
			<div class="row">
					<form id="searchForm" action="/board/list" method="get" style="display: flex; 
																					justify-content: center;">
						<select style="margin: 10px; height:50px; 
						line-height:50px; text-align-last: center;
   						text-align: center; -ms-text-align-last: center; -moz-text-align-last: center;" 
   						line-height:40px;" name="type">
							<option value=""
								<c:out value="${pageMaker.cri.type == null ? 'selected' :'' }"/>>검색 기준</option>
							<option value="T"
								<c:out value="${pageMaker.cri.type eq 'T' ? 'selected' :'' }"/>>제목</option>
							<option value="C"
								<c:out value="${pageMaker.cri.type eq 'C' ? 'selected' :'' }"/>>내용</option>
							<option value="W"
								<c:out value="${pageMaker.cri.type eq 'W' ? 'selected' :'' }"/>>작성자</option>
							<option value="TC"
								<c:out value="${pageMaker.cri.type eq 'TC' ? 'selected' :'' }"/>>제목+내용</option>
							<option value="TW"
								<c:out value="${pageMaker.cri.type eq 'TW' ? 'selected' :'' }"/>>제목+작성자</option>
							<option value="TWC"
								<c:out value="${pageMaker.cri.type eq 'TWC' ? 'selected' :'' }"/>>제목+작성자+내용</option>
						</select> 
						
						<input type="text" style="margin: 10px; height:50px; 
						line-height:50px; text-align-last: center;
   						text-align: center; -ms-text-align-last: center; -moz-text-align-last: center;" 
   						name="keyword" value='<c:out value="${pageMaker.cri.keyword}"/>' /> 
						<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
						<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
						<button style="margin: 10px; height:50px; line-height:50px;" class="btn btn-default">Search</button>
					</form>
				
			</div>



			<!--  start pagination -->
			<div class="row">

				<nav class="pagination" style="margin:0;">
					<c:if test="${pageMaker.prev}">
						<a class="page-numbers prev">
							href="${pageMaker.startPage-1}">Prev</a>
					</c:if>
					<c:forEach var="num" begin="${pageMaker.startPage}"
						end="${pageMaker.endPage}">
						<a class="page-numbers ${pageMaker.cri.pageNum == num ?"
							current":"" }" href="${num}">${num}</a>
					</c:forEach>
					<c:if test="${pageMaker.next}">
						<a class="page-numbers next"><a
							href="${pageMaker.endPage + 1 }">Next</a>
					</c:if>
				</nav>

			</div>
			<!--  end pagination -->

		</div>
		<!-- end brick-wrapper -->

	</div>
	<!-- end row -->


</section>
<!-- bricks -->


<form id="actionForm" action="/board/list" method="get">
	<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
	<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
	<input type="hidden" name="type" value="${pageMaker.cri.type}">
	<input type="hidden" name="keyword" value="${pageMaker.cri.keyword}">
</form>





<!-- Modal
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-b_title" id="myModalLabel">Modal b_title</h4>
			</div>
			<div class="modal-body"></div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary">Save changes</button>
			</div>
		</div>
	</div>
</div> -->



<script type="text/javascript">
	$(document).ready(function() {
		var result = '<c:out value="${result}"/>';

		checkModal(result);
		history.replaceState({}, null, null);

		function checkModal(result) {
			console.log('result', result);
			console.log('history.state', history.state)
			if (result === '' || history.state) {
				return;
			}
			if (result === "success") {
				$(".modal-body").html("정상적으로 처리되었습니다.");
			} else if (parseInt(result) > 0) {
				$(".modal-body").html(
						"게시글 " + parseInt(result)
								+ "번이 등록되었습니다.");
			}
			$("#myModal").modal("show");
		}

		$("#regBtn").on("click", function() {
			self.location = "/board/register";
		});

		var actionForm = $("#actionForm");
		$(".page-numbers").on("click",function(e) {
			e.preventDefault();
			console.log("click");
			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
			actionForm.submit();
		});

		$(".move").on("click",function(e) {
			e.preventDefault();
			actionForm.append("<input type='hidden' name='b_no' value='"
							+ $(this).attr("href")
							+ "'>");
			actionForm.attr("action","/board/get");
			actionForm.submit();
		});

		var searchForm = $("#searchForm");
		$("#searchForm button").on("click",function(e) {
			if (!searchForm.find("option:selected").val()) {
				alert("검색종류를 선택하세요");
				return false;
			}
			if (!searchForm.find("input[name='keyword']").val()) {
				alert("키워드를 입력하세요");
				return false;
			}
			searchForm.find("input[name='pageNum']").val("1");
			/* e.preventDefault();
			searchForm.submit(); */
		});

	});
</script>

<%@include file="../includes/footer.jsp"%>

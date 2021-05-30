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








<!-- content
   ================================================== -->
<section id="content-wrap" class="site-page">
	<div class="row">
		<div class="col-twelve">

			<section>

				<div class="content-media">


					<form action="/board/modify" method="post">
					<input type="hidden" id='pageNum' name='pageNum' value='<c:out value="${cri.pageNum}"/>' >
					<input type="hidden" id='amount' name='amount' value='<c:out value="${cri.amount}"/>' >
					<input type="hidden" id='type' name='type' value='<c:out value="${cri.type}"/>' >
					<input type="hidden" id='keyword' name='keyword' value='<c:out value="${cri.keyword}"/>' >
					<input type="hidden" id='b_no' name='b_no' value='<c:out value="${board.b_no}"/>' >
					
					<div class="form-field">
					<label>title</label>
					<input type="text" class="full-width" name="b_title" value='<c:out value="${board.b_title}"/>'>
					</div>
					
					<div class="form-field">
					<label>content</label>
					<textarea class="full-width" name="b_content" ><c:out value="${board.b_content}"/></textarea>
					</div>
					
					<div class="form-field">
					<label>date</label>
					<input type="text" class="full-width" name="b_date" readonly="readonly" 
					value='<fmt:formatDate pattern="yyyy/MM/dd HH:mm:ss" value="${board.b_date}"/>' >
					</div>
					
					<button type="submit" data-oper="modify" class="submit button-primary full-width-on-mobile">Modify</button>
					<button type="submit" data-oper="remove" class="submit button-primary full-width-on-mobiler">Remove</button>
					<button type="submit" data-oper="list" class="submit button-primary full-width-on-mobile">List</button>
				</form>
						
						

				</div>
			</section>


		</div>
		<!-- end col-twelve -->
	</div>
	<!-- end row -->
</section>
<!-- end content -->




<script type="text/javascript">
	$(document).ready(function(){
		var formObj = $("form");
		$("button").on("click",function(e){
			e.preventDefault();
			var operation = $(this).data("oper");
			console.log('operation',operation);
			if(operation==="remove"){
				formObj.attr("action","/board/remove")
			}else if(operation === "list"){
				formObj.attr("action","/board/list").attr("method","get");
				var pageNumTag = $("input[name='pageNum']").clone();
				var amountTag = $("input[name='amount']").clone();
				var typeTag = $("input[name='type']").clone();
				var keywordTag = $("input[name='keyword']").clone();
				formObj.empty();
				formObj.append(pageNumTag);
				formObj.append(amountTag);
				formObj.append(typeTag);
				formObj.append(keywordTag);
			}
			formObj.submit()
			
		});
	});
</script>
<%@include file="../includes/footer.jsp"%>
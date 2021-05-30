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
					<li class="has-children current"><a href="../list" title="">Group</a></li>
					<li><a href="../board/list" title="">Board</a></li>
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
   <section id="content-wrap" class="blog-single">
   	<div class="row">
   		<div class="col-twelve">

   			<article class="format-standard">  

   				<div class="content-media">
						<div class="post-thumb" width="100%">
							<c:choose>
					<c:when test="${group.g_img_src != null}">
						 <img src="${group.g_img_src}">
					</c:when>
					<c:otherwise>
						 <img src="https://source.unsplash.com/1000x800">
		
					</c:otherwise>
				</c:choose>
						</div>  
					</div>

					<div class="primary-content">

						<h1 class="page-title"><c:out value="${group.g_title}" /></h1>	

						<ul class="entry-meta">
							<li class="cat">현재&nbsp;</li>						
							<li class="cat"><c:out value="${group.g_member_cnt}" /></li>
							<li class="cat">명 참가중</li>
						</ul>						

						<p class="lead"><c:out value="${group.g_intro}" /></p> 

						<p><c:out value="${group.g_content}" /></p>

					

					</div> <!-- end entry-primary -->		  			   



				</article>
   		

			</div> <!-- end col-twelve -->
   	</div> <!-- end row -->

		

   </section> <!-- end content -->




			
			
			
<c:choose>

	<c:when test="${id != null}">
		<form id="actionForm" action="/mypage" method="post">
			<input type="hidden" name="g_no" value="${group.g_no}">
			<input type="hidden" name="g_user_id" value="${id}">
			<button id="join-btn" type="submit" class="btn btn-xs pull-right">Join</button>
		</form>
	
	</c:when>
	
	<c:otherwise>
		<button id="join-btn" type="submit" class="btn btn-xs pull-right" onclick="needLogin()">Join</button>
	</c:otherwise>
	
</c:choose>	
				



			
				

<%@include file="includes/footer.jsp"%>
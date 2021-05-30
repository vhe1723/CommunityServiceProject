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
					<li class="has-children current"><a href="#" title="">Introduce</a>
						<ul class="sub-menu">
							<li><a href="../introPrj">Project</a></li>
							<li><a href="../introMem">Developer</a></li>
						</ul></li>
					<li><a href="../list" title="">Group</a></li>
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


<style type="text/css"> 

a { text-color:#0000;
text-decoration:none } 
a:hover { text-decoration:none }


/* 링크에서 밑줄 없애기 */
a.no-uline { text-decoration:none }

/* 마우스 지나갈 때만 삭제 + 강제로 없애기 */
a.noul:hover { text-decoration:none !important }

</style>

<!-- content
   ================================================== -->
<div id="content-wrap" class="styles">

	<div class="row narrow add-bottom text-center">

		<div class="col-twelve tab-full">

			<h1>C O N T A C T</h1>

			<p class="lead">
				M E M B E R
			</p>

		</div>

	</div>


	<div class="row half-bottom">

		<div class="col-six tab-full">

			<h3>Park Jaekyeong</h3>
			<p>
				<img src="resources/images/jae.png">
			</p>

		</div>

		<div class="col-six tab-full">

			<h3>Yang Jaemo</h3>
			<p>
				<img src="resources/images/kang.png">
			</p>

		</div>

	</div>
	<!-- end row -->

	<div class="row">

		<div class="col-six tab-full">



			<aside class="pull-quote">
				<blockquote>
					<p><a href="https://shin-yu.tistory.com/"> Blog </a> / <a href="https://github.com/Shin-Yu-1"> GitHub</a>
				</blockquote>
			</aside>

		</div>

		<div class="col-six tab-full">



			<aside class="pull-quote">
				<blockquote>
					<p><a href="https://github.com/vhe1723">GitHub</a></p>
				</blockquote>
			</aside>

		</div>

	</div>
	<!-- end row -->


	<div class="row half-bottom">

		<div class="col-six tab-full">

			<h3>Lee Jaeho</h3>
			<p>
				<img src="resources/images/kimsu.png">
			</p>

		</div>

		<div class="col-six tab-full">

			<h3>Lim Sunwoo</h3>

			<div class="fluid-video-wrapper">
			<p>
					<img src="resources/images/sunwoo.png">
			</p>
			</div>

		</div>

	</div>
	<!-- end row -->

	<div class="row">

		<div class="col-six tab-full">



			<aside class="pull-quote">
				<blockquote>
					<p><a href="https://github.com/22jaeho"> GitHub</a></p>
				</blockquote>
			</aside>

		</div>

		<div class="col-six tab-full">



			<aside class="pull-quote">
				<blockquote>
					<p><a href="https://mygummy2.tistory.com"> Blog </a> / <a href="https://github.com/sunwoo22"> GitHub</a>
					</p>
				</blockquote>
			</aside>

		</div>

	</div>
	<!-- end row -->



</div>
<!-- end styles -->



<%@ include file="includes/footer.jsp"%>
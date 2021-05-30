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


<script src="http://www.youtube.com/player_api"></script>

<script>
	// This function creates an <iframe> (and YouTube player)
	// after the API code downloads.
	var player;
	function onYouTubeIframeAPIReady() {
		player = new YT.Player('player', {
			height : '540',
			width : '960',
			videoId : 'GgwDcVagGqw'
		});
	}

	function onclickPause() {
		player.pauseVideo();
	}
</script>



<!-- content
   ================================================== -->
<section id="content-wrap" class="blog-single">
	<div class="row">
		<div class="col-twelve">

			<article class="format-video">

				<div class="content-media">
					<div id="player" class="fluid-video-wrapper"></div>
				</div>

				<div class="primary-content">

					<h1 class="entry-title">D A M O I M</h1>

					<ul class="entry-meta">
						<li class="cat">Release date</li>
						<li class="date">May 25, 2021</li>
					</ul>

					<p class="lead">본인이 원하는 목적의 모임을 쉽게 만들고 참여하기 위하여 만들었습니다.</p>

					<p>Java 기반으로 JSP, JavaScripte, CSS를 활용한 동적 웹사이트를 구축하고자 spring framework를<br>
						사용했습니다.짧은 시간이지만 할 수 있는 만큼 최대한 노력해서 만들었습니다.</p>



				</div>
				<!-- end entry-primary -->



			</article>


		</div>
		<!-- end col-twelve -->
	</div>
	<!-- end row -->



</section>
<!-- end content -->




<%@ include file="includes/footer.jsp"%>
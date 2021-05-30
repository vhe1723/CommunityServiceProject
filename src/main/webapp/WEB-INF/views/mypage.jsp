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
					<li><a href="../board/list" title="">Board</a></li>
					<li>&nbsp;&nbsp;&nbsp;&nbsp;</li>

					<c:choose>
						<c:when test="${id != null}">
							<li><a href="../logout" title="">Logout</a></li>
							<li class="has-children current"><a href="../mypage" title="">Mypage</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="../login" title="">Login</a></li>
							<li class="has-children current"><a href="#" onclick="needLogin()" title="">Mypage</a></li>

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
			<h1>Registered Groups</h1>
		</div>
	</div>
</section>


<!-- masonry
   ================================================== -->
<section id="bricks" class="with-top-sep">

	<div class="row masonry">

		<!-- brick-wrapper -->
		<div class="bricks-wrapper">

			<div class="grid-sizer"></div>

			<article class="brick entry format-standard animate-this">
				
					<button style="
													backgroud: white;
													width: 100%;
													height: 120px;
													text-align: center;
													font-size: 60px;
													
					" onclick="location.href='/register'">+</button>

				
			</article>

			<c:forEach items="${list}" var="group">
				<article class="brick entry format-standard animate-this">


					<div class="entry-text">
						<div class="entry-header">

							<div class="entry-meta">
								<span class="cat-links"> <c:out value="${group.g_loc}" />

								</span>
							</div>

							<h1 class="entry-title">
								<a href='/info?g_no=<c:out value="${group.g_no}"/>'><c:out
										value="${group.g_title}" /></a>
							</h1>

						</div>
						<div class="entry-excerpt">
							<c:out value="${group.g_intro}" />
						</div>
					</div>

				</article>
				<!-- end article -->
			</c:forEach>

		</div>
		<!-- end brick-wrapper -->

	</div>
	<!-- end row -->


</section>
<!-- bricks -->


<!-- page header
   ================================================== -->
<section id="page-header">
	<div class="row current-cat">
		<div class="col-full">
			<h1>Joined Groups</h1>
		</div>
	</div>
</section>

<!-- masonry
   ================================================== -->
<section id="bricks" class="with-top-sep">

	<div class="row masonry">

		<!-- brick-wrapper -->
		<div class="bricks-wrapper">

			<div class="grid-sizer"></div>


			<c:forEach items="${list2}" var="group">
				<article class="brick entry format-standard animate-this">



					<div class="entry-text">
						<div class="entry-header">

							<div class="entry-meta">
								<span class="cat-links"> <a
									href='/info?g_no=<c:out value="${group.g_no}"/>'> <c:out
											value="${group.g_loc}" />
								</a>
								</span>
							</div>

							<h1 class="entry-title">
								<a href='/info?g_no=<c:out value="${group.g_no}"/>'><c:out
										value="${group.g_title}" /></a>
							</h1>

						</div>
						<div class="entry-excerpt">
							<c:out value="${group.g_intro}" />
						</div>
					</div>

				</article>
				<!-- end article -->
			</c:forEach>

		</div>
		<!-- end brick-wrapper -->

	</div>
	<!-- end row -->


</section>
<!-- bricks -->








<%@ include file="includes/footer.jsp"%>
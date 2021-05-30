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



<!-- content
   ================================================== -->
<section id="content-wrap" class="site-page">
	<div class="row">
		<div class="col-twelve">

			<section>

				<div class="content-media">


					<form id="cForm" role="form" action="/register" method="post" enctype="multipart/form-data">
						<div class="form-field" style="margin-bottom: 30px;">
							<label>title *</label>
							<input type="text" class="full-width" style="margin: 0;"
								name="g_title" id="cWebsite1" placeholder="제목을 적어주세요."
								onkeyup="chkByte(this, 20)"> 
							<span id="titleByte" style="font-size: 14px;">0/20</span>
						</div>
						<div class="form-field">
							<label>location *</label>
							
							<input type="hidden" id="loc" name="g_loc" value="">
							<div style="display:flex;">
							<select class="" id="loc-1" name='loc1' style="margin-right: 10px;"
								onchange="categoryChange(this)">
								<option value="0">시/도</option>
								<option value="서울">서울</option>
								<option value="부산">부산</option>
								<option value="대구">대구</option>
								<option value="인천">인천</option>
								<option value="광주">광주</option>
								<option value="대전">대전</option>
								<option value="울산">울산</option>
								<option value="세종">세종</option>
								<option value="경기">경기</option>
								<option value="강원">강원</option>
								<option value="충북">충북</option>
								<option value="충남">충남</option>
								<option value="전북">전북</option>
								<option value="전남">전남</option>
								<option value="경북">경북</option>
								<option value="경남">경남</option>
								<option value="제주">제주</option>
							</select> 
							<select class="" id="loc-2" name='loc2'
								onchange="adrChange(this)">
								<option>시/군/구</option>
							</select>
							</div>
						</div>


						<div class="form-field" style="margin-bottom: 30px;">
							<label>introduce *</label> 
							<input type="text" class="full-width" style="margin: 0;"
								name="g_intro" id="cWebsite" placeholder="짧은 소개글을 적어주세요."
								onkeyup="chkByte(this, 200)"> 
								<span id="introByte" style="font-size: 14px;">0/200</span>
						</div>
						<div class="form-field" style="margin-bottom: 30px;">
							<label>content *</label>
							<textarea class="full-width" name="g_content" style="margin: 0;"
							id="cMessage" placeholder="긴 소개글을 적어주세요."
								onkeyup="chkByte(this, 2000)"></textarea>
							<span id="contentByte" style="font-size: 14px;">0/2000</span>
						</div>

						<div class="inputArea">
							 <label for="gdsImg">image</label>
							 <input type="file" id="gdsImg" name="file"  style="margin-bottom: 10px;" />
							 <div class="select_img" style="margin-bottom: 30px;"><img src="" /></div>
							 
							 <script>
								  $("#gdsImg").change(function(){
									   if(this.files && this.files[0]) {
									    var reader = new FileReader;
									    reader.onload = function(data) {
									     $(".select_img img").attr("src", data.target.result).width(500);        
									    }
									    reader.readAsDataURL(this.files[0]);
									   }
								  });
							 </script>
							 
						</div>
						
						
						
						<input type="hidden" name="g_user_id" value="${id}">
						<button type="submit"
							class="submit button-primary full-width-on-mobile">Submit</button>
						<button type="reset"
							class="submit button-primary full-width-on-mobile">Reset</button>
					</form>

				</div>
			</section>


		</div>
		<!-- end col-twelve -->
	</div>
	<!-- end row -->
</section>
<!-- end content -->




<script>
	//사용자가 검색하는 주소
	var adr1;
	var adr2;

	// **** 카테고리 선택 -> 카테고리
	function categoryChange(e) {
		var loc_0 = [ "시/군/구" ]
		var loc_a = [ "시/군/구", "강남구", "강동구", "강북구", "강서구", "관악구", "광진구", "구로구",
				"금천구", "노원구", "도봉구", "동대문구", "동작구", "마포구", "서대문구", "서초구",
				"성동구", "성북구", "송파구", "양천구", "영등포구", "용산구", "은평구", "종로구", "중구",
				"중랑구" ]
		var loc_b = [ "시/군/구", "강서구", "금정구", "기장군", "남구", "동구", "동래구", "부산진구",
				"북구", "사상구", "사하구", "서구", "수영구", "연제구", "영도구", "중구", "해운대구" ]
		var loc_c = [ "시/군/구", "남구", "달서구", "달성군", "동구", "북구", "서구", "수성구",
				"중구" ]
		var loc_d = [ "시/군/구", "강화군", "계양구", "남동구", "동구", "미추홀구", "부평구", "서구",
				"연수구", "옹진군", "중구" ]
		var loc_e = [ "시/군/구", "광산구", "남구", "동구", "북구", "서구" ]
		var loc_f = [ "시/군/구", "대덕구", "동구", "서구", "유성구", "중구" ]
		var loc_g = [ "시/군/구", "남구", "동구", "북구", "울주군", "중구" ]
		var loc_h = [ "시/군/구", "세종" ]
		var loc_i = [ "시/군/구", "가평군", "고양시", "고양시 덕양구", "고양시 일산동구", "고양시 일산서구",
				"과천시", "광명시", "광주시", "구리시", "군포시", "김포시", "남양주시", "동두천시",
				"부천시", "부천시", "성남시", "성남시 분당구", "성남시 수정구", "성남시 중원구", "수원시",
				"수원시 권선구", "수원시 영통구", "수원시 장안구", "수원시 팔달구", "시흥시", "안산시",
				"안산시 단원구", "안산시 상록구", "안성시", "안양시", "안양시 동안구", "안양시 만안구",
				"양주시", "양평군", "여주시", "연천군", "오산시", "용인시", "용인시 기흥구", "용인시",
				"용인시 기흥구", "용인시 수지구", "용인시 처인구", "의왕시", "의정부시", "이천시", "파주시",
				"평택시", "포천군", "포천시", "하남시", "화성시" ]
		var loc_j = [ "시/군/구", "강릉시", "고성군", "동해시", "삼척시", "속초시", "양구군", "양양군",
				"영월군", "원주시", "인제군", "정선군", "철원군", "춘천시", "태백시", "평창군", "흥천군",
				"회천군", "횡성군" ]
		var loc_k = [ "시/군/구", "괴산군", "단양군", "보은군", "영동군", "옥천군", "음성군", "제천시",
				"증평군", "진천군", "청원군", "청주시", "청주시 상당구", "청주시 서원구", "청주시 청원구",
				"청주시 흥덛구", "충주시" ]
		var loc_l = [ "시/군/구", "계룡시", "공주시", "금산군", "논산시", "당진시", "보령시", "부여군",
				"서산시", "서천군", "아산시", "연기군", "예산군", "천안시", "천안시 동남구", "천안시 서북구",
				"청양군", "태안군", "흥성군" ]
		var loc_m = [ "시/군/구", "고창군", "군산시", "김제시", "남원시", "무주군", "부안군", "순창군",
				"완주군", "익산시", "임실군", "장수군", "전주시", "전주시 덕진구", "전주시 완산구", "정읍시",
				"진안군" ]
		var loc_n = [ "시/군/구", "강진군", "고흥군", "곡성군", "광양시", "구례군", "나주시", "담양군",
				"목포시", "무안군", "보성군", "순천시", "신안군", "여수시", "영광군", "영암군", "완도군",
				"장성군", "장흥군", "진도군", "함평군", "해남군", "화순군" ]
		var loc_o = [ "시/군/구", "경산시", "경주시", "고령군", "구미시", "군위군", "김천시", "문경시",
				"봉화군", "상주시", "성주군", "안동시", "영덕군", "영양군", "영주시", "영천시", "예천군",
				"울릉군", "울진군", "의성군", "청도군", "청송군", "칠곡군", "포항시", "포항시 남구",
				"포항시 북구" ]
		var loc_p = [ "시/군/구", "거제시", "거창군", "고성군", "김해시", "남해군", "밀양시", "사천시",
				"산청군", "양산시", "의령군", "진주시", "창녕군", "창원시", "창원시 마산합포구",
				"창원시 마산회의구", "창원시 성산구", "창원시 의창구", "창원시 진해구", "통영시", "하동군",
				"함안군", "함양군", "합천군" ]
		var loc_q = [ "시/군/구", "서귀포시", "제주시" ]

		var target = document.getElementById("loc-2");

		if (e.value == "0")
			var locs = loc_0;
		else if (e.value == "서울")
			var locs = loc_a;
		else if (e.value == "부산")
			var locs = loc_b;
		else if (e.value == "대구")
			var locs = loc_c;
		else if (e.value == "인천")
			var locs = loc_d;
		else if (e.value == "광주")
			var locs = loc_e;
		else if (e.value == "대전")
			var locs = loc_f;
		else if (e.value == "울산")
			var locs = loc_g;
		else if (e.value == "세종")
			var locs = loc_h;
		else if (e.value == "경기")
			var locs = loc_i;
		else if (e.value == "강원")
			var locs = loc_j;
		else if (e.value == "충북")
			var locs = loc_k;
		else if (e.value == "충남")
			var locs = loc_l;
		else if (e.value == "전북")
			var locs = loc_m;
		else if (e.value == "전남")
			var locs = loc_n;
		else if (e.value == "경북")
			var locs = loc_o;
		else if (e.value == "경남")
			var locs = loc_p;
		else if (e.value == "제주")
			var locs = loc_q;

		target.options.length = 0;

		for (loc in locs) {
			var opt = document.createElement("option");
			opt.value = locs[loc];
			opt.innerHTML = locs[loc];
			target.appendChild(opt);
		}

		// 사용자가 선택한 주소 대분류
		adr1 = e.options[e.selectedIndex].text;
	}

	function adrChange(e) {
		// 사용자가 선택한 주소 시/군/구
		adr2 = e.options[e.selectedIndex].text;
		
		adr = adr1 + " " + adr2;
		
		$("#loc").val(adr);
	}

	
	
	
	function chkByte(obj, maxByte) {

		var strValue = obj.value;
		var strLen = strValue.length;
		var totalByte = 0;
		var len = 0;

		for (var i = 0; i < strLen; i++) {
			totalByte += (strValue.charCodeAt(i) > 128) ? 2 : 1;

			if (totalByte <= maxByte) {
				len = i + 1;
			}
		}

		var id = "";
		if (maxByte == 20) {
			id = "titleByte";
		} else if (maxByte == 200) {
			id = "introByte";
		} else if (maxByte == 2000) {
			id = "contentByte";
		}

		document.getElementById(id).innerText = totalByte + "/" + maxByte;

		if (totalByte > maxByte) {
			alert(maxByte + "byte를 초과 입력 할 수 없습니다.");
			obj.value = strValue.substr(0, len);
		}
	}

	$(document).ready(function() {
		$("form").each(function() {
			this.reset();
		})
	});
</script>


<%@include file="includes/footer.jsp"%>
<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"	prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		<title>Insert title here</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
		<link rel="stylesheet" href="headerFooterStyle.css" type="text/css"/>
		<link rel="stylesheet" href="companyInfoStyle.css" type="text/css"/>
		<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
		<style>
		*{font-family:'Noto Sans KR',sans-serif;}
		</style>
	<script>
			$(function(){
				var sectionHeight = $("section").height();
				var sideBarHeight = $("#sideBar").height();
				
				if(sideBarHeight>=sectionHeight){
					$("section").height("750px")};
				
				var imgBannerTextWidth = $("#imgBanner>div").width();
				$("#imgBanner>div").css("left",(1920-imgBannerTextWidth)/2+"px");
				
			});
		</script>
	</head>
	<body>
		<header class="navbar fixed-top navbar-expand-lg">
			<div>
				<div id="mainMenu">
					<!-- 작은메뉴 -->
					<ul id="miniMenu" class="navbar-header">
						<li class="nav-item"><a href="InfoCenter.html">고객센터</a></li>
						<li class="nav-item"><a href="shoppingbasket.html">여행바구니</a></li>
						<li class="nav-item"><a href="new.html">회원가입</a></li>
						<li class="nav-item"><a href="login.html">로그인</a></li>
					</ul>
				<!-- 주메뉴 -->
					<ul class="navbar-header">
						<li class="nav-brand"><a href="../index.html"><img src="../image/MenuLogo.png"id="mainLogo"/></a></li>
						<li class="nav-item"><a href="sangfum_list.html">수학여행</a></li>
						<li class="nav-item"><a href="sangfum_list.html">현장학습</a></li>
						<li class="nav-item"><a href="sangfum_list.html">1박2일</a></li>
						<li class="nav-item"><a href="sangfum_list.html">기업/단체</a></li>
						<li class="nav-item"><a href="make_trip.html">여행만들기</a></li>
						<li class="nav-item"><a href="sangfum_list.html">출발지</a></li>
						<li class="nav-item"><a href="reviewPage.html">여행후기</a></li>
						<li class="nav-item"><div><input type="text"><input type="button" value="검색"/></div></li>
					</ul>
				</div>
				<!-- 이미지배너 -->
				<div id="imgBanner">
					<div>
					<h1>헤더풋터</h1>
					<h2>그리고 사이드</h2>
					</div>
				</div>
			</div>
		</header>
		<section>
			<div id="sideBar">
				<div>
					<ul>
						<li class="sideBarFirstUlList">
							<h6>고객센터</h6>
							<ul>
								<li>00-0000-0000</li>
								<li>평일/00:00-23:59</li>
								<li>공휴일/주말 휴무</li>
							</ul>
						</li>
						<li class="sideBarFirstUlList">
							<h6>여행바구니</h6>
							<a href="shoppingbasket.html">0</a>
						</li>
						<li class="sideBarFirstUlList">
							<h6>내가본상품</h6>
							<ul id="myHistory">
								<li><img src="../image/Logo.png" class="myHistory"/></li>
								<li><img src="../image/MenuLogo.png" class="myHistory"/></li>
								<li><img src="../image/sangfum_01.jpg" class="myHistory"/></li>
							</ul>
						</li>
					</ul>
				</div>
				<button>TOP▲</button>
				<div>
					<ul>
						<li><img src="../image/sideBarAdv_01.png" class="sideBarAdv"/></li>
						<li><img src="../image/sideBarAdv_02.png" class="sideBarAdv"/></li>
						<li><img src="../image/sideBarAdv_03.png" class="sideBarAdv"/></li>
					</ul>
				</div>
			</div>
			<h1>회사소개</h1><hr/>
			<div class="divForm">
				우리 구트투어는 다양한 테마(수학여행,체험학습 등)의 여행을 기준으로 사용자가 원하는 여행을 제공하고,<br/>
				정해져 있는 여행이 아닌 사용자가 원하는 여행을 직접 만들어 여행할 수 있게 도와드리고 있습니다.<br/><br/>
				단체여행을 중점으로 다른 여행에 비해 저렴한 가격으로 고객님께서 이용하실 수 있고,<br/>
				해외여행 을 추구하는 최근 경향 과 다르게 국내의 다양한 장소를 사용자가 경험할 수 있게 하는 것을 목표로 하고있습니다. 
			</div>
			<h1>회사개요</h1><hr/>
			<div class="divForm">
				<table id="summary">
					<tr>
						<td>회사명</td>
						<td>구트투어</td>
					</tr>
					<tr>
						<td>소재지</td>
						<td>서울시 구로구 구로동</td>
					</tr>
					<tr>
						<td>대표이사</td>
						<td>누구</td>
					</tr>
					<tr>
						<td>전화번호</td>
						<td>00-0000-0000</td>
					</tr>
					<tr>
						<td>설립일</td>
						<td>2200.01.01</td>
					</tr>
					<tr>
						<td>주요사업</td>
						<td>사업자등록번호:123-45-67890/국내관광업</td>
					</tr>
					<tr>
						<td>주요서비스</td>
						<td>일반여행업(제76호)</td>
					</tr>
				</table>
			</div>
			<h1>회사연혁</h1><hr/>
			<div class="divForm">
				<table id="history">
					<tr>
						<td>2200.01</td>
						<td>회사설립<br/>
							첫계약성사<br/>
							폐업
						</td>
					</tr>
					<tr>
						<td>2200.02</td>
						<td>회사설립</td>
					</tr>
					<tr>
						<td>2200.03</td>
						<td>폐업</td>
					</tr>
					<tr>
						<td>2200.04</td>
						<td>회사설립</td>
					</tr>
					<tr>
						<td>2200.10</td>
						<td>폐업</td>
					</tr>
					<tr>
						<td>2300.11</td>
						<td>회사설립</td>
					</tr>
					<tr>
						<td>3019.09</td>
						<td>폐업</td>
					</tr>
				</table>
			</div>
			<h1>오시는길</h1><hr/>
			<div class="divForm">
				<div id="goottMap">
					<!--
						* 카카오맵 - 약도서비스
						* 한 페이지 내에 약도를 2개 이상 넣을 경우에는
						* 약도의 수 만큼 소스를 새로 생성, 삽입해야 합니다.
					-->
					<!-- 1. 약도 노드 -->
					<div id="daumRoughmapContainer1569207905305" class="root_daum_roughmap root_daum_roughmap_landing"></div>
					
					<!-- 2. 설치 스크립트 -->
					<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
					
					<!-- 3. 실행 스크립트 -->
					<script charset="UTF-8">
						new daum.roughmap.Lander({
							"timestamp" : "1569207905305",
							"key" : "v53e",
							"mapWidth" : "640",
							"mapHeight" : "360"
						}).render();
					</script>
				</div>
			</div>		
		</section>
		<footer>
			<!-- 메뉴 -->
			<div id="footMenu">
				<ul>
					<li><a href="companyInfo.html">회사소개</a></li>
					<li><a href="clauseInfo.html">국내여행표준약관</a></li>
					<li><a href="clauseInfo.html">개인정보취급방침</a></li>
					<li><a href="clauseInfo.html">이용약관</a></li>
					<li><a href="InfoCenter.html">고객센터</a></li>
				</ul>
			</div>
			<!-- 회사정보 -->
			<div id="footInfo">
				<table>
					<tr>
						<td rowspan="4"><img src="../image/MenuLogo.png" id="footLogo"/></td>
					</tr>
					<tr><td>회사이름 : GOOTTOUR | 대표 : 누구 | 주소 : 어쩌구저쩌구</td></tr>
					<tr><td>관광사업허가 : 국내여행업 | 사업자등록 : 000-00-00000 | 통신판매등록 : 제 2019-어쩌구형-0001호</td></tr>
					<tr><td>대표전화 : 0000-0000 | FAX | 00-0000-0000 | 개인정보관리책임자 : 누구</td></tr>
				</table>
				<ul id="footImgList">
					<li><img src="../image/MenuLogo.png"/></li>
					<li><img src="../image/MenuLogo.png"/></li>
					<li><img src="../image/MenuLogo.png"/></li>
					<li><img src="../image/MenuLogo.png"/></li>
					<li><img src="../image/MenuLogo.png"/></li>
				</ul>
			</div>
		</footer>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String pageName = "회사소개";
	String pageSideName = "구트투어 회사소개";
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		<title>Insert title here</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
		<link rel="stylesheet" href="headerFooterStyle.css" type="text/css"/>
		<link rel="stylesheet" href="companyInfoStyle.css" type="text/css"/>
		<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
		<style>
		*{font-family:'Noto Sans KR',sans-serif;}
		</style>
		<script>
		
		</script>
	</head>
	<body>
		<%@ include file="header.jspf"%>
		<section>
			<%@ include file="sidebar.jspf"%>
			<h1>회사소개</h1><hr/>
			<div class="divForm">
				우리 구트투어는 다양한 테마(수학여행,체험학습 등)의 여행을 기준으로 사용자가 원하는 여행을 제공하고,<br/>
				정해져 있는 여행이 아닌 사용자가 원하는 여행을 직접 만들어 여행할 수 있게 도와드리고 있습니다.<br/><br/>
				단체여행을 중점으로 다른 여행에 비해 저렴한 가격으로 고객님께서 이용하실 수 있고,<br/>
				해외여행 을 추구하는 최근 경향 과 다르게 국내의 다양한 장소를 사용자가 경험할 수 있게 하는 것을 목표로 하고있습니다. 
			</div>
			<h1>회사개요</h1><hr/>
			<div class="divForm">
				<table id="summary">
					<tr>
						<td>회사명</td>
						<td>구트투어</td>
					</tr>
					<tr>
						<td>소재지</td>
						<td>서울시 구로구 구로동</td>
					</tr>
					<tr>
						<td>대표이사</td>
						<td>누구</td>
					</tr>
					<tr>
						<td>전화번호</td>
						<td>00-0000-0000</td>
					</tr>
					<tr>
						<td>설립일</td>
						<td>2200.01.01</td>
					</tr>
					<tr>
						<td>주요사업</td>
						<td>사업자등록번호:123-45-67890/국내관광업</td>
					</tr>
					<tr>
						<td>주요서비스</td>
						<td>일반여행업(제76호)</td>
					</tr>
				</table>
			</div>
			<h1>회사연혁</h1><hr/>
			<div class="divForm">
				<table id="history">
					<tr>
						<td>2200.01</td>
						<td>회사설립<br/>
							첫계약성사<br/>
							폐업
						</td>
					</tr>
					<tr>
						<td>2200.02</td>
						<td>회사설립</td>
					</tr>
					<tr>
						<td>2200.03</td>
						<td>폐업</td>
					</tr>
					<tr>
						<td>2200.04</td>
						<td>회사설립</td>
					</tr>
					<tr>
						<td>2200.10</td>
						<td>폐업</td>
					</tr>
					<tr>
						<td>2300.11</td>
						<td>회사설립</td>
					</tr>
					<tr>
						<td>3019.09</td>
						<td>폐업</td>
					</tr>
				</table>
			</div>
			<h1>오시는길</h1><hr/>
			<div class="divForm">
				<div id="goottMap">
					<!--
						* 카카오맵 - 약도서비스
						* 한 페이지 내에 약도를 2개 이상 넣을 경우에는
						* 약도의 수 만큼 소스를 새로 생성, 삽입해야 합니다.
					-->
					<!-- 1. 약도 노드 -->
					<div id="daumRoughmapContainer1569207905305" class="root_daum_roughmap root_daum_roughmap_landing"></div>
					
					<!-- 2. 설치 스크립트 -->
					<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
					
					<!-- 3. 실행 스크립트 -->
					<script charset="UTF-8">
						new daum.roughmap.Lander({
							"timestamp" : "1569207905305",
							"key" : "v53e",
							"mapWidth" : "640",
							"mapHeight" : "360"
						}).render();
					</script>
				</div>
			</div>		
		</section>
		<%@ include file="footer.jspf"%>
>>>>>>> refs/remotes/origin/master
	</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String pageName = "상세 리스트";
	String pageSideName = "구트투어 여행";
	String pageImage = "mainimg4.jpg";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name = "viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link rel="stylesheet" href="headerFooterStyle.css" type="text/css"/>

<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="product_detail.css" type="text/css"/>
<title>상품 상세 페이지</title>
</head>


<body>
<%@ include file="header.jspf"%>

<div class="container">
		<div id="detail-content"> 	
			<div class="page_location">
				<a href="<%=request.getContextPath()%>/index.jsp">홈></a><a href="#">1박2일</a>
			</div>
			<div class="sec_div">
				<div class="gall_big">
					<div class="w3-content w3-section" style="max-width:500px">
					  <img class="mySlides w3-animate-fading" src="<%=request.getContextPath()%>/image/mainimg1.jpg" style="width:100%">
					  <img class="mySlides w3-animate-fading" src="<%=request.getContextPath()%>/image/mainimg2.jpg" style="width:100%">
					  <img class="mySlides w3-animate-fading" src="<%=request.getContextPath()%>/image/mainimg3.jpg" style="width:100%">
					  <img class="mySlides w3-animate-fading" src="<%=request.getContextPath()%>/image/mainimg4.jpg" style="width:100%">
					</div>
				</div>
				<div class="title_text" style="text-align: left">
					<div class="circle_heart"><a href="">&#9825;</a></div>
					<div class="title_name"><h1 style="text-align: left; padding-right: 40px; font-size:30px; font-weight: 600;">남쪽 나라의 명소! 남해+여수+순천 (1박2일)</h1></div>
					<div class='code' style="text-align: left"> ( 상품코드: AAPP33 )</div>
					<div class="product_list">
						<ul class="product_menu">
							<li><span>출발일자</span>2019.11.29일</li>
							<li><span>상품가격</span>200,000,000원</li>
							<li><span>여행지역</span>경주</li>
							<li><span>여행기간</span>2019.11.29~2019.11.30</li>
						</ul>
					</div>
					<div class="btn_menu">
						<button class="btn-1" >장바구니</button>
						<button class="btn-2" >예약하기</button>
					</div>
				</div>
			</div>
		</div>

	<div class="tb_1">
		<table class="table_01">
		    <tr>
		        <th scope="row">항목명</th>
		        <td>내용이 들어갑니다.</td>
		    </tr>
		    <tr>
		        <th scope="row">항목명</th>
		        <td>내용이 들어갑니다.</td>
		    </tr>
		    <tr>
		        <th scope="row">항목명</th>
		        <td>내용이 들어갑니다.</td>
		    </tr>
		</table>
	</div>
</div>

	<script>
		var myIndex = 0;
		carousel();
		
		function carousel() {
		  var i;
		  var x = document.getElementsByClassName("mySlides");
		  
		  for (i = 0; i < x.length; i++) {
		    x[i].style.display = "none";  
		  }
		  myIndex++;
		  if (myIndex > x.length) {myIndex = 1}    
		  x[myIndex-1].style.display = "block";  
		  setTimeout(carousel, 9000);    
		}
	</script>
<%@ include file="footer.jspf"%>
</body>
</html>
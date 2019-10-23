<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String pageName = "예약확인";
	String pageSideName = "구트투어 예약확인";
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
		<link rel="stylesheet" href="reservationchk.css" type="text/css"/>
		<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
		<style>
     	 *{font-family:'Noto Sans KR',sans-serif;} 
     	 </style>
	</head>
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
	<body>
		<%@ include file="header.jspf"%>
		<section>
			<%@ include file="sidebar.jspf"%>
			<div id='rev-main'>
			<!-- 제목   -->
			<h1>예약확인</h1>
			<hr class="hrStyle"/>
				<div id='top-main'> 
					<div class='card' id='acc'>
						<div class='card-header'><a href='#memo1' data-toggle='collapse' data-parent='#acc' style='font-size:30px; color:red'> ※유의사항※ </a></div>
						<div id='memo1' class='collapse show'>
							<ol>
								<li>예약접수가 되면 24시간 이내에 담당자가 예약 확인 후 결제문자를 보내 드립니다.</li>
								<li>결제문자를 받으시면 결제 후 (주)좋은여행사로 전화하셔서 입금 확인 해주셔야 합니다.
								모든 예약건의 처리는 입금 선착순으로 처리됩니다.
								<br>　　 입금 후 전화를 안 하실 경우 선착순 처리에 의해 여행이 불가능할 수 있습니다.</li>
								<li> 결제 내역은 입금 완료 후 익일부터 홈페이지 예약확인 부분에서 확인이 가능합니다.</li>
								<li> 예약이 완료되면 여행출발 3~4일전 전화와 문자로 집결장소 또는 개별탑승 안내 해드립니다.</li>
								<li> 출발당일 안내해 드린 시간에 맞춰서 미팅 또는 개별탑승의 경우 개별탑승하시면 됩니다.</li>
							</ol>  
						</div>
				  	</div>
				</div>
				<p>▶좋은여행사 예약</p>
				<div class="table">
			    <table class="table table-bordered">
			        <thead>
			        <tr>
			          <th style='width:150px;'>예약날짜</th> 
			          <th style='width:140px;'>상품코드</th>
			          <th style='width:240px;'>상품명</th>
			          <th style='width:100px;'>결제금액</th>
			          <th style='width:60px;'>인원</th>
			          <th >출발일</th>
			          <th >여행도우미</th>
			          <th >예약상태</th>
			          <th >상품평</th>
			        </tr>  
			      </thead>
			      <tbody>
			      <tr>
			          <td>2019년9월19일</td>
			          <td><a href='#'>AAP0921TWB</a></td>
			          <td>제주도 5일_준특급 신라호텔제주도 5일_준특급 신라호텔</td>
			          <td>350,000</td>
			          <td>20</td>
			          <td>2019년12월20일</td>
			          <td>Female</td>
			          <td>Yes</td>
			          <td><button class='btn'>작성하기 </button></td>
			        </tr>
			      </tbody>
			    </table>
			  </div>
			 <hr>
			  	<p>▶자유여행 예약</p> 
			  		<div class="table-responsive">
			    <table class="table table-bordered">
			      <thead>
			        <tr>
			          <th style='width:150px;'>예약날짜</th> 
			          <th style='width:140px;'>상품코드</th>
			          <th style='width:240px;'>상품명</th>
			          <th style='width:100px;'>결제금액</th>
			          <th style='width:60px;'>인원</th>
			          <th >출발일</th>
			          <th >여행도우미</th>
			          <th >예약상태</th>
			          <th >상품평</th>
			        </tr>
			      </thead>
			      <tbody id='rev-body'>
			        <tr>
			          <td>2019년9월19일</td>
			          <td><a href='#'>AAP3412TWB</a></td>
			          <td>제주도 5일_특급 신라호텔 바로출발제주도 5일_준특급 신라호텔</td>
			          <td>500,000</td>
			          <td>2</td>
			          <td>2019년10월20일</td>
			          <td>man</td>
			          <td>Yes</td>
			          <td><button class='btn'>작성하기 </button></td>
			        </tr>
			      </tbody>
			    </table>
			  </div>
			</div>
		</section>
		<%@ include file="footer.jspf"%>
	</body>
</html>
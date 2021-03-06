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
<script src="https://kit.fontawesome.com/6a894ec103.js" crossorigin="anonymous"></script>

<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="product_detail.css" type="text/css"/>
<title>상품 상세 페이지</title>
<style>
	ul,li{margin:0px;}
	#revDetailTable *{text-align:left; margin-top:0px;}
	#revDetailTable table{margin:0px auto 30px auto; background-color:#fff}
	
	.circleIco{width:20px; height:20px; border-radius:20px; background-color:#aaa; border:5px solid #ddd; position:absolute; left:170px; z-index:2}
	.tableLeftMargin{margin-left:30px; margin-bottom:10px;}
	.tableBar{position:absolute; width:2px; height:213px; background-color:#ddd; z-index:1; left:179px;}
	.m-tTen{margin-top:20px;}
	.dayVal{background:#aaa; color:white; font-size:1.1em; font-weight:bold; z-index:2}
	
	#revDetailTable table tr:first-child td{border-bottom:0px;}
	.dayTable td{width:100px; padding:20px; border:1px solid #ccc;}
	.dayTable td:last-child{width:1000px;}
	#revDetailTable button:focus { outline:none;}
	.btStyle {margin-left: 20px; width:15px; height:15px; font-size:15px; border: 0; background:none;}
	.btStylePlus {margin-left: 20px; width:25px; height:25px; font-size:25px; border: 0; background:none;}
</style>
<c:set var="day" value="${2}"/>
<script>
	$(function(){
		var clickYN = true;
			$("#gg").click(function(){
				if(clickYN){
					clickYN = false;
					$(".OkClose").css("display","none");
					$(".btnClose").css("visibility","hidden");
				}else{
					clickYN = true;
					$(".OkClose").css("display","block");
					$(".btnClose").css("visibility","visible");
				}
				
				for(i=1; i<=${day}; i++){
					$("#"+i+"DayPan tr td .tableBar").height($("#"+i+"DayPan").height()-65);
				}
			});
	});
	function revDetailInsert()	{
		//이벤트가 발생한 버튼
		var targetButton = $(event.target);
		//이벤트가 발생한 작성 Div
		var targetDiv = targetButton.parent().parent();
		//이벤트가 발생한 테이블
		var targetTable = targetDiv.parent().parent().parent();
		var inputData = targetButton.siblings("input").val();
		console.log(inputData);
		
		if(inputData!=null && inputData!=""){
			var txt =  "<div><div class='circleIco'></div><div class='tableLeftMargin'>";
			txt+= "<strong>"+inputData+"</strong><button class='btStyle btnClose' onclick='revDetailDelete()'>x</button>";
			var revContent = targetButton.siblings("textarea").val().replace(/\n/g,"<br/>");
			txt+= "<div class='m-tTen'>"+revContent+"</div>";
			txt+= "</div>"
			
			targetButton.siblings().val("");
			
			$(txt).insertBefore(targetDiv);
			
			targetTable.children().children().children(".tableBar").height(targetTable.height()-65);
		}
	}
	function revDetailDelete() {
		//이벤트가 발생한 버튼
		var targetButton = $(event.target);
		//이벤트가 발생한 작성 Div
		var targetDiv = targetButton.parent().parent();
		//이벤트가 발생한 테이블
		var targetTable = targetDiv.parent().parent().parent();
		
		var targetDiv = event.target.parentElement.parentElement.remove();
		targetTable.children().children().children(".tableBar").height(targetTable.height()-65);
	}
</script>
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
					<div class="circle_heart">
					<input type="checkbox" id="cart1" style="display:none;"/>
									<label for="cart1"><i class="fas fa-heart"></i></label>
					</div>
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

	<div class="tb_alldiv">
		<table class="table_01">
		    <tr>
		        <th class="tb1" scope="row">일정</th>
		        <td><span>1박 2일 </span> <span><button class="btn-3">다르 출발일 보기</button></span>
		        <br>
		        <ul>
		        	<li>11월 19일 (화) 00:00 남쪽나라 출발 - 11월 19일 (화) 00:00 도착</li>
		        	<li>11월 20일 (수) 00:00 KTX 출발 - 11월 20일 (수) 00:00 도착</li>
		        </ul>
		        </td>
		    </tr>
		    <tr>
		        <th class="tb2" scope="row">방문도시</th>
		        <td>포항, 울산, 경주</td>
		    </tr>
		    <tr>
		        <th class="tb3" scope="row">예약인원</th>
		        <td>현재 8명 (여유 좌석 0 / 최소 출발 인원 4명)</td>
		    </tr>
		</table>
	</div>
	
	<div class="tb_alldiv2">
		<h3 style="text-align:left; font-weight: 600;">상품 체크 포인트</h3> 
				<table class="table_02">
		    <tr>
		        <th scope="row">(아이콘)<br>보험</th>
		        <td class="row1">
		        	<ul>
		        		<li>[여행자보험] 미가입</li>
		        		<li>[영업보증보험] 가입</li>
		        		<li>[기획여행 보증보험] 가입</li>
		        	</ul>
			    </td>
		    </tr>
		    <tr>
		        <th scope="row">(아이콘)<br>인솔자</th>
		        <td class="row2">[인솔자] 0명이 넘으면 인솔자가 배정될 예정입니다.</td>
		    </tr>
		    <tr>
		        <th scope="row">(아이콘)<br>투어마일리지</th>
		        <td class="row3">
					<ul>
						<li>여행자 성인1인 기준 2,570 마일 적립 예정<br>
						(모두멤버스회원 한정, 출발 전 여행자 개별 가입 필수, 출발일 + 10일 후 적립)</li>
						<li>예상 적립 마일리지 금액은 프로모션 적용 및 결제방법에 따라 변동될 수 있음</li>
						<li>투어마일리지 제휴카드 : 1,000원당 최대 30마일 추가 적립 예정</li>
					</ul>
						
				</td>
		    </tr>
		</table>
	</div>
	
	<div class="rev_div"> 
	
		<h3>(아이콘) 예약시 유의사항</h3>
		<P>
			- 해당 상품은 같은 일정의 상품들과 항공좌석을 공유하므로 타코드 선모객시 조기마감될 수 있습니다.<br>
			- 여권 상의 영문과 예약 시의 영문이 다를 경우 항공 좌석이 취소될 수 있으며 이에 따른 취소료 또는 추가 차액이 발생할 수 있으니 반드시 예약처에 재확인 하시기 바랍니다.<br>
			- 기내서비스는 최소 출발 3일전 신청해주세요.<br>
			- 상품가격은 성인 2인 1실 사용 시 1인 기준입니다.<br>
			- 아동 No Bed 요금은 성인2인과 같은 방을 사용하며, 엑스트라베드가 제공되지 않는 요금입니다.<br>
			<br>
			
			▶ 중국의 식수는 별로 좋지 못하므로 가급적 차나 생수, 음료수 등으로 대체하도록 합니다.<br>
			▶ 중국의 국제전화는 한국에 비해 70% 이상 비싸므로, 수신자 부담서비스를 이용하시는게 좋습니다.<br>
			▶ 중국민항 패키지의 경우 특성상 항공티켓 발권은 통상 출발 3일전입니다. 발권 후 취소하시면 항공료 부분의 환불이 불가하오니 이점 유의하시기 바랍니다.<br>
			<br>
			※ 중국단체비자 유의사항<br>
			☞ 단체비자 특성상 비자에 기재되어 있는 성명 순서대로 중국 입/출국 수속 및 티케팅을 하셔야 하므로,수속시간이 다소 지연될수 있사오니 양해바랍니다.<br>
			그러므로,단체비자를 발급받으신 고객님께서는 인천공항 미팅시간을 꼭 지켜주시기 바랍니다.<br>
			☞ 골프상품은 인솔자가 동반하지 않으므로 공항 입출국시에 고객님께서 단체비자를 보관하셔야 합니다.<br>
			☞ 현지에서 여권,단체비자 분실 시에 중국 입국/출국의 문제가 발생 하며, 분실시 발생되는 모든 비용은 개인비용으로 부담되오니 분실하지 않도록 각별한 주의를 부탁드립니다.
		</P>
	</div>
	
	<!-- 탭누르면 탭메뉴 시작  -->
	
	<div class="mt-3">
		  <!-- Nav tabs -->
		  <ul class="nav nav-tabs nav-tabs1">
		    <li class="nav-item">
		      <a class="nav-link active" href="#home">일정표</a>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link" href="#menu1">여행약관&참고사항</a>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link" href="#menu2">여행안전정보</a>
		    </li>
		  </ul>
		
		  <!-- Tab panes -->
		  <div class="tab-content">
		    <div id="home" class="tab-pane active"><br>
		      <div id="revDetailTable" style="position:relative">
				<c:forEach var="dayFor" begin="1" end="${day}">
					<table id="${dayFor}DayPan" class="dayTable">
						<tr>
							<td colspan="1" class="dayVal">&nbsp;&nbsp;${dayFor}일차</td>
							<td><div>2019년 11월 26일 화요일</div></td>
						</tr>
						<tr><td colspan="2" style="padding:0px; border:0px; height:0px;"><div class="tableBar"></div></td></tr>
						<tr>
							<td colspan="2">
								<div class="OkClose">
									<div class="circleIco"></div><!-- 동그라미 아이콘 -->
									<div class="tableLeftMargin" style="float:left">
										<input type="text" placeholder="일정제목" style="width:600px; margin-bottom:20px"/><br/>
										<textarea cols="100" rows="5" placeholder="일정내용" style="resize:none"></textarea><button class="btStylePlus btnClose" onclick="revDetailInsert()">+</button>
									</div>
								</div>
							</td>
						</tr>
					</table>
				</c:forEach>
				</div>
				<button id="gg">클릭~</button>
		    </div>
		    <div id="menu1" class="tab-pane fade"><br>
		      <h3>Menu 1</h3>
		      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
		    </div>
		    <div id="menu2" class="tab-pane fade"><br>
		      <h3>Menu 2</h3>
		      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
		    </div>
		  </div>
	</div>
	
	<!-- 탭누르면 나오는 div menu1, menu2, menu3 끝 -->
	
	
		
		<!-- 상품문의  -->
			
		<div class="que_div" style="border: 4px solid gray;">
			<h3>상품문의</h3>
				<div class="reply-div" style="text-align: left; border:3px solid red"> 
					<!-- 댓글 달기  -->
						<form method="post"	 id="replyFrm" onsubmit="return false" >
							<textarea class="comment" name="coment" id="coment"></textarea>
							<input type="submit" value="등록"/>
							<input type="hidden" name="num"	 value="${vo.num }" /> <!-- 현재글 글번호  -->
						</form>
			
					<c:if test="${userId == vo.userId }">
						<a href="/WebMVC/board/edit.do?pageNum=${vo.pageNum }&num=${vo.num}">수정</a>
						<a href="javascript:delChk()">삭제</a>
					</c:if>
					<hr/>
					
			</div>
		
		</div>
			<!-- 상품문의 끝  -->
	
</div>

	<script>
	$(document).ready(function(){
	  $(".nav-tabs a").click(function(){
	    $(this).tab('show');
	  });
	});
	</script>

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
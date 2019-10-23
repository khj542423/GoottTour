<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String pageName = "상품정보";
	String pageSideName = "여행 상품 정보";
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name = "viewport" content="width=device-width,initial-scale=1">
		<title>Insert title here</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
		<link rel="stylesheet" href="headerFooterStyle.css" type="text/css"/>
		<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
		<style>
		*{font-family:'Noto Sans KR',sans-serif;}
		</style>
		<style>
			#a1{width : 100px;}
			#main{margin : 0px auto; width : 1200px ;height : 600px;}
			#a1{margin : 0px auto; width : 100%; height:50px; line-height:50px; font-size:20px;}
			#main2>div{float : left; width : 550px; height : 500px;}
			#imgslide, #select{border:1px solid #ddd; border-radius:5px; margin-top:20px; padding:10px}
			#imgslide{margin-right:20px}
			#select>div:nth-child(1){margin : 50px 0px;}
			#select>div:nth-child(3){margin-top : 50px; height : 200px;}
			#select select{width : 100%}
			#count{margin-top : 40px; margin-left : 20px;}
			#count>div{float : left; text-align:center}
			#count>div:nth-child(2n + 1){width : 30px;}
			#count>div:nth-child(2n){width : 40px;}
			#price{text-align : right;font-size:2.5em; margin-top : 10px;}
			#choice{padding : 10px; margin-left : 250px;}
			#choice>button{padding : 20px 20px; margin-left : 20px;}
			#prospec{height : 500px; margin : 0px auto; width : 1200px;}
			#tabmenu>div{border:1px solid #ddd; width : 33.33%; float : left;}
			#list1,#list2,#list3{height : 500px;}
			#tabmenu>div:nth-child(1){background : #00a7f0; color:white}
			#list2,#list3{display : none;}
			hr{margin:10px 5px;}
		</style>
		<script>
			$(function(){
				var x = parseInt($("#count>div:nth-child(2)").html());
				
				$("#count>div").on("click",function(){
					if($("#count>div:nth-child(2)").html() >= 0 && $("#count>div:nth-child(2)").html() <=99 && $(this).index() == 2){
						var cnt = x+=1
						$("#count>div:nth-child(2)").text(cnt);
						$("#price>span").text(parseInt($("#price>span").html())+92000)
					}
					if($("#count>div:nth-child(2)").html() <= 100 &&$("#count>div:nth-child(2)").html() > 0 && $(this).index() == 0){
						var cnt = x-=1
						$("#count>div:nth-child(2)").text(cnt);
						$("#price>span").text(parseInt($("#price>span").html())-92000)
						
					}
				})
				$("#tabmenu>div").on("click",function(){
					if($(this).index() == 0){
						$(this).css("background","#00a7f0").css("color","#fff");
						$("#tabmenu>div").not($(this)).css("background","white").css("color","#000");
						$("#list1").css("display","block")
						$("#list2").css("display","none")
						$("#list3").css("display","none")
					}
					if($(this).index() == 1){
						$(this).css("background","#00a7f0").css("color","#fff");
						$("#tabmenu>div").not($(this)).css("background","white").css("color","#000");
						$("#list1").css("display","none")
						$("#list2").css("display","block")
						$("#list3").css("display","none")
					}
					if($(this).index() == 2){
						$(this).css("background","#00a7f0").css("color","#fff");
						$("#tabmenu>div").not($(this)).css("background","white").css("color","#000");
						$("#list1").css("display","none")
						$("#list2").css("display","none")
						$("#list3").css("display","block")
					}
				})
<<<<<<< HEAD
				
				var sectionHeight = $("section").height();
				var sideBarHeight = $("#sideBar").height();
				
=======

>>>>>>> refs/remotes/origin/master
			})
		</script>
	</head>
	<body>
		<%@ include file="header.jspf"%>
		<section>
			<%@ include file="sidebar.jspf"%>
			<div id = "main"> <!-- 윗칸 을 담고 있는 div -->
				<div id = "a1"><!-- 상품제목 -->신나는 가을바다</div>
				<hr/>
				<div id = "main2">
					<div id = "imgslide"><!-- 상품 img 슬라이드 div -->
						<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" style = "width : 400px ;margin : 50px auto" >
	  							<ol class="carousel-indicators">
								    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
								    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
								    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
								  </ol>
								  <div class="carousel-inner">
								    <div class="carousel-item active">
								      <img class="d-block w-100" src="../image/sangfum_01.jpg" alt="First slide">
								    </div>
								    <div class="carousel-item">
								      <img class="d-block w-100" src="../image/sangfum_01.jpg" alt="Second slide">
								    </div>
								    <div class="carousel-item">
								      <img class="d-block w-100" src="../image/sangfum_01.jpg" alt="Third slide">
								    </div>
								  </div>
								  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
								    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
								    <span class="sr-only">Previous</span>
								  </a>
								  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
								    <span class="carousel-control-next-icon" aria-hidden="true"></span>
								    <span class="sr-only">Next</span>
								  </a>
						</div>
					</div>
					<!-- 가격 및 인원수 설정 및 버튼 -->
					<div id = "select" style="width:630px">
						<div>제목제목<hr></div>
						<div>
								<select name='options'>
								  <option value='' selected>-- 선택 --</option>
								  <option value='gg'>유아 : 3000</option>
								  <option value='zzz'>청소년 : 12000</option>
								  <option value='sss'>성인 : 30000</option>
								</select>
						</div>
						<div style="text-align : center">
							옵션을 선택해주세요!<br>
							<div id="count">
								<div>-</div>
								<div>0</div>
								<div>+</div><br>
							</div>
							<div id = "price"><span>0</span>원</div>
							<div id = "choice"><button>예약하기 </button><button>장바구니 </button></div>
						</div>
					</div>
				</div>
			</div>
			<!-- 상품 상세 설명 탭메뉴 -->
			<div id = "prospec">
				<div id = "tabmenu">
					<div>상세정보</div>
					<div>상품정보</div>
					<div>질문답변</div>
				</div>
				<div id = "list1">
					상세정보
				</div>
				<div id = "list2">
					상품정보
				</div>
				<div id = "list3">
					질문답변
				</div>
			</div>
		</section>
		<%@ include file="footer.jspf"%>
	</body>
</html>
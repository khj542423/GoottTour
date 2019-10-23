<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name = "viewport" content="width=device-width,initial-scale=1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link rel="stylesheet" href="project/headerFooterStyle.css" type="text/css"/>
<link rel="stylesheet" href="project/Main.css" type="text/css"/>

</head>
	<script>
		function setImage(){
			
			var imglist = '';
			var url = ['project/sangfum1.jsp','project/sangfum1.jsp','project/sangfum1.jsp','project/sangfum1.jsp','project/sangfum1.jsp',
						'project/sangfum1.jsp','project/sangfum1.jsp','project/sangfum1.jsp','project/sangfum1.jsp']
			for(i=1; i<=9; i++){
				imglist += '<div><a href="'+url[i-1]+'"><img src="image/main_img_banner_';
				if(i<=9)
				imglist += i;
			imglist+='.jpg"/></a>'+url[i-1]+'</div>'
			}
	
			document.getElementById('cjimg').innerHTML=imglist;
		}
	</script>
	<script>
		var imgNum = 1;
		$(function(){
			var sectionHeight = $("section").height();
			var sideBarHeight = $("#sideBar").height();
			
			if(sideBarHeight>=sectionHeight){
				$("section")};
			
			var imgBannerTextWidth = $("#imgBanner>div").width();
			$("#imgBanner>div").css("left",(1920-imgBannerTextWidth)/2+"px");
			
			//배너 이미지 변경
			$("#bannerImg").click(function(){
				$("#bannerImg").attr("src","image/main"+imgNum+".jpg");
				imgNum++;
				if(imgNum>7)imgNum=1;
			});
			
			//자동이벤트 발생
			setInterval(function(){
					//						이벤트.
					$("#bannerImg").trigger("click");
			}, 4000);
			
		});
		
		$(window).scroll(function(){
			//bar 이동
			var mainban = $('#mainbanner').css('display')
			var scrollTop = $(window).scrollTop();//스크롤 정보
			var topSpace = 0;
		
			if(mainban =='block'){
				topSpace = 100;
			}
			
			//console.log(h1+','+scrollTop);
			if(scrollTop==topSpace){
				$('#bar').css('top',scrollTop-topSpace+'px');
				$('#bannerLeft').css('top',scrollTop-topSpace+'px');
				$('#bannerRight').css('top',scrollTop-topSpace+'px');
			}else{
				//bar , bannerleft, bannerright
				$('#mainbanner').css('top','-100');
			}
		});
		
	</script>
<body onload='setImage();'>
		<header class="navbar navbar-expand-lg" id='mainbanner'>
			<div>
				<div id="mainMenu">
					<!-- 작은메뉴 -->
					<ul id="miniMenu" class="navbar-header">
						<li class="nav-item"><a href="project/InfoCenter.jsp">고객센터</a></li>
						<li class="nav-item"><a href="project/shoppingbasket.jsp">여행바구니</a></li>
						<li class="nav-item"><a href="project/new.jsp">회원가입</a></li>
						<li class="nav-item"><a href="project/login.jsp">로그인</a></li>
					</ul>
				<!-- 주메뉴 -->
					<ul class="navbar-header">
						<li class="nav-brand"><a href="index.jsp" id='mainlogo' style="font-size:40px;">GooTTour</a></li>
						<li class="nav-item"><a href="project/sangfum_list.jsp">수학여행</a></li>
						<li class="nav-item"><a href="project/sangfum_list.jsp">현장학습</a></li>
						<li class="nav-item"><a href="project/sangfum_list.jsp">1박2일</a></li>
						<li class="nav-item"><a href="project/sangfum_list.jsp">기업/단체</a></li>
						<li class="nav-item"><a href="project/make_trip.jsp">여행만들기</a></li>
						<li class="nav-item"><a href="project/sangfum_list.jsp">출발지</a></li>
						<li class="nav-item"><a href="project/reviewPage.jsp">여행후기</a></li>
						<li class="nav-item"><div><input type="text" style="border:none; border-radius: 15px 0 0 15px"><input type="submit"  style="background-image:url('image/magno.png'); color:transparent; background-size: 20px 20px;vertical-align: 2px; background-position:center; background-color:white; border:none; background-repeat:no-repeat; border-radius:0 15px 15px 0;"></div></li>
					</ul>
				</div>
			</div>
		</header> 
	<section>
		<!-- 이미지배너 --> 
		<div id="imgBanner">
			<img src="image/main1.jpg" id="bannerImg"/>
			
			<div> 
																														<!-- 이동만 보려고 임시로 클릭이벤트로 해놓음. -->
			<input type="text" style="border:none; border-radius: 15px 0 0 15px; font-size:150%"><input type="submit" onclick="location.href='project/search.jsp'" style="background-image:url('image/magno.png'); color:transparent; background-size: 40px 40px; background-position:center; background-color:white; border:none; background-repeat:no-repeat; border-radius:0 15px 15px 0; vertical-align: 3px;">
			 
			</div>
		</div>
		<div id = "imgslide"><!-- 이벤트 이미지 슬라이드 -->
			<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
			  <div class="carousel-inner">
			    <div class="carousel-item active">
			      <img class="d-block w-100" src="image/event_01.jpg" alt="First slide">
			    </div>
			    <div class="carousel-item">
			      <img class="d-block w-100" src="image/event_01.jpg" alt="Second slide">
			    </div>
			    <div class="carousel-item">
			      <img class="d-block w-100" src="image/event_01.jpg" alt="Third slide">
			    </div>
			  </div>
			  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
			    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			    <span class="sr-only">Previous</span>
			  </a>
			  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
			    <span class="carousel-control-next-icon" aria-hidden="true"></span>
			    <span class="sr-only">Next</span>
			  </a>
			</div>
		</div>
		<div id='top-h1'>
		<h1 style="font-family: fantasy; font-size: 50px;"><span style='color:red;font-family: fantasy;'>HOT</span> Destination</h1><br><h5>인기 여행지로 즐거운 여행을 즐겨보세요.</h5>
		</div>
		<!-- 여기부터 작업해주시면 됩니당 ^^ -->
		<div style="margin-bottom:50px;">
			<div class='row' id='rowdiv'>
				
				<div id='hot1' style='background-image:url(image/jeju.jpg); background-size:100%;  height:250px; background-repeat: no-repeat; '>
					<h1 style="color:white"><a href="#">경주(Gyeongju)</a></h1>
					
				</div>
				
				<div id='hot2' style='background-image:url(image/gyeongju.jpg); background-size:100%;  height:250px; background-repeat: no-repeat; '>
					<h1 style="color:white"><a href="#">제주(Jeju)</a></h1>
					
				</div>
				
				<div id='hot3' style='background-image:url(image/seoul.jpg); background-size:100%;  height:250px; background-repeat: no-repeat; '>
					<h1 style="color:white"><a href="#">서울(Seoul)</a></h1>
					 
				</div>
				
			
			</div> 
		</div> 
			<hr class="hrStyle"/>
			
			
			 <div style="margin-top:50px">
				<h1 style="font-family: fantasy; font-size: 50px;"> <span style='color:red; font-family: fantasy;'>HOT</span> Recommend</h1><br>
			 	<h5> 추천여행지로 원하시는 여행을 즐겨보세요. </h5>
			 	<div id='cjimg' style='margin-top:50px;'></div>
			 </div>
	
		

	</section>
		<%@ include file="project/footer.jspf" %>
</body>
</html>
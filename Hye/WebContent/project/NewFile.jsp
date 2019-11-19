<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String pageName = "상품정보";
	String pageSideName = "여행 상품 정보";
	String pageImage = "main_img_banner_6.jpg";
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
			#main2>div{float : left; height : 500px;}
			#imgslide, #select{border:1px solid #ddd; margin-top:20px; padding:20px}
			#imgslide{margin-left:20px;border-radius:5px 0px 0px 5px;width:400px; }
			#select{margin-right:20px;border-radius:0px 5px 5px 0px;width:750px;height:500px;padding:0px; }
			
			#img1{width:350px; height:200px;}
			#img1>img{width:350px; height:200px;}
			#imgslide ul, #imgslide li{clear:left;}
			
			#month{width:750px;height:70px;margin:0px auto;}
			#month>input, #month>div{height:70px;float:left;}
			#month>div{width:710px;overflow:hidden;}
			#allMonth{width:1640px;height:70px;position:relative;}
			#allMonth div{float:left;width:236.3px;height:70px;line-height:70px;border:1px solid red;background:lightgray;}
			
		</style>
		<script>
			function setCal(){
		 		var List="";
				for(i=1; i<=12; i++){
					List += "<div>"+i+"월</div>";
				}
				document.getElementById("allMonth").innerHTML = List;
			
			}
			
			function imageMove(){
				$("#allMonth div").first().appendTo("#allMonth");
				//$("#allMonth div:first").animate({marginLeft:"100px"}, 1000, 'easeOutBounce');
			}
			function imageMove2(){
				$("#allMonth div").last().prependTo("#allMonth");
			}
			
			
		</script>
	</head>
	<body onload="setCal();">
		<section>
			
			<div id = "main"> <!-- 윗칸 을 담고 있는 div -->
				<div id = "a1"><!-- 상품제목 -->♥협곡열차①♥ [무궁화호] 3도 (강원+경북+충북) 명소</div>
				<hr/>
				<div id = "main2">
					
					<!-- 달력 -->
					<div id = "select">
						<div id="month">
							<input type="button" id="up" name="up" value="◁"/>
							<div id="cal"><div id="allMonth"></div>
							</div>
							<input type="button" id="down" name="down" value="▷"/>
						</div>
						<div style='clear:left;height:430px;background-color:red;'></div>
					</div>
				</div>
			</div>
			
		</section>
	</body>
</html>
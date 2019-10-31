<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String pageName = "여행리스트";
	String pageSideName = "구트투어 여행";
	String pageImage = "main_img_banner_6.jpg";
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name = "viewport" content="width=device-width,initial-scale=1">
		<title>구트투어 상품리스트</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
		<link rel="stylesheet" href="headerFooterStyle.css" type="text/css"/>
		<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
		<style>
		*{font-family:'Noto Sans KR',sans-serif;}
		</style>
		<style>
			#tabmenu{ position: absolute; margin-left: 30%; top: 700px;  left: 100px;  width: 105px;  height: 100px; margin: 0px auto; border: 1px solid #ddd;}
			#tabmenu>div{float : left; width : 100px; height : 50px; text-align : center; line-height:50px; font-size:1.1em}
			#tabmenu>div:nth-child(1){background : #00a7f0; color:white}
			#list1, #list2{width : 100%; height : 1500px; margin : 0px auto; margin-top:20px; border:1px solid #ddd}
			#list2{display : none;}
			#full-div{width:1200px;}
		</style>
		<script>
			$(function(){
				$("#tabmenu>div").on("click",function(){
					if(($(this).index() == 1)){
						$(this).css("background","#00a7f0").css("color","white")
						$("#tabmenu>div").not($(this)).css("background","white").css("border-bottom","1px solid #ddd").css("color","black")
						$("#list2").css("display","block")
						$("#list1").css("display","none")
					}
					else{
						$(this).css("background","#00a7f0").css("color","white")
						$("#tabmenu>div").not($(this)).css("background","white").css("border-bottom","1px solid #ddd").css("color","black")
						$("#list1").css("display","block")
						$("#list2").css("display","none")
					}
				})

			})
		</script>
	</head>
	<body>
		<%@ include file="header.jspf"%>
		<section>
		<%@ include file="sidebar.jspf"%>
			<!-- 탭메뉴 인기상품 특가상품 -->
			<div id="full-div">
				<div id = "tabmenu">
						<div>구트여행목록</div>
						<div>수학여행</div>
						<div>1박2일</div>
				</div>
				<div>
					<div id = "list1">
					<!-- 인기상품 -->인기인기
					</div>
					<div id = "list2">
					<!-- 특가상품 -->특가특가
					</div>
				</div>
			</div>
		</section>
		<%@ include file="footer.jspf"%>
	</body>
</html>
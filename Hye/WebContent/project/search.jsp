<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String pageName = "검색";
	String pageSideName = "구트투어 검색결과";
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name = "viewport" content="width=device-width,initial-scale=1">
		<title>Insert title here</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<link rel="stylesheet" href="jquery-ui.min.css" type="text/css"/>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="jquery-ui.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
		<link rel="stylesheet" href="headerFooterStyle.css" type="text/css"/>
		<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
		<style>
			*{font-family:'Noto Sans KR',sans-serif;}
		</style>
		<style>
			#searchPan{width:100%;}
			#searchPan>h3{text-align:left}
			#search{width:100%; height:50px; border:3px solid #00a7f0; text-align:left; padding-left:10px; padding-right:10px; margin-bottom:20px}
			#searchPan>ul{width:100%;}
			#searchPan>ul>li{border-bottom:1px solid #ddd; width:100%; height:50px; line-height:50px; text-align:left}
		</style>
		<script>
			$(function(){
				var sectionHeight = $("section").height();
				var sideBarHeight = $("#sideBar").height();
				
				if(sideBarHeight>=sectionHeight){
					$("section").height("750px")};
				
			});
		</script>
	</head>
	<body>
		<%@ include file="header.jspf"%>
		<section>
			<%@ include file="sidebar.jspf"%>
			<div id="searchPan">
				<input type="text" id="search"/>
				<input type="submit" id="searchButton" style="position:relative; left:570px; top:-57px; background-image:url('../image/magno.png'); color:transparent; background-size: 20px 20px; background-position:center; background-color:white; border:none; background-repeat:no-repeat;">
				<h3>검색결과(4건)</h3>
				<ul>
					<li>검색결과1</li>
					<li>검색결과2</li>
					<li>검색결과3</li>
					<li>검색결과4</li>
				</ul>
			</div>
		</section>
		<%@ include file="footer.jspf"%>
	</body>
</html>
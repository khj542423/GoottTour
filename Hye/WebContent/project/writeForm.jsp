<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String name = "글쓰기";
	String sideName = "구트투어 글 쓰기";
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
		<script type="text/javascript" src="../ckeditor/ckeditor.js"></script>
		<link rel="stylesheet" href="headerFooterStyle.css" type="text/css"/>
		<link rel="stylesheet" href="writeFormStyle.css" type="text/css"/>
		<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
		<style>
			*{font-family:'Noto Sans KR',sans-serif;}
		</style>
		<script>
		$(function(){
			CKEDITOR.replace( 'writeText' );
		});
		
		</script>
	</head>
<script>
			$(function(){
				var sectionHeight = $("section").height();
				var sideBarHeight = $("#sideBar").height();
				
				if(sideBarHeight>=sectionHeight){
					$("section").height("750px")};
	
			});
		</script>
	<body>
		<%@ include file="header.jspf" %>
		<section>
			<div id="sideMenu">
				<div>커뮤니티</div>
				<ul id="reviewList">
					<li><a>여행후기</a></li>
				</ul>
			</div>
			<div id="reviewPan">
				<div id="reviewTab1"><h4>여행후기</h4><hr style='border:0; height:3px; background:#ccc; linear-gradient(to right, rgba(0,0,0,0), rgba(0,0,0, 0.75), rgba(0,0,0,0))'>
					<div id="reviewWrite">
						<table>
							<tr>
								<td>이름</td>
								<td><input type="text" class="bora" id="writer"/></td>
							</tr>
							<tr>
								<td>대분류</td>
								<td><select id="lCategory" class="bora"><option>==대분류==</option></select></td>
							</tr>
							<tr>
								<td>소분류</td>
								<td><select id="sCategory" class="bora"><option>==소분류==</option></select></td>
							</tr>
							<tr>
								<td>제목</td>
								<td><input type="text" class="bora" id="writeTitle"/></td>
							</tr>
							<tr>
								<td>내용</td>
								<td><textarea id="writeText" name="writeText"></textarea></td>
								
							</tr>
						</table>
					</div>
					<div id="button">
						<button>돌아가기</button>
						<button>글작성</button>
					</div>
				</div>
			</div>
		</section>
		<%@ include file="footer.jspf" %>
	</body>
</html>
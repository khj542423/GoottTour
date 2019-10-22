<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String pageName = "게시글보기";
	String pageSideName = "구트투어 게시글보기";
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
		<link rel="stylesheet" href="postStyle.css" type="text/css"/>
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
			});
		</script>
	</head>
	<body>
		<%@ include file="header.jspf"%>
		<section>
			<%@ include file="sidebar.jspf"%>
			<div id="sideMenu">
				<div>커뮤니티</div>
				<ul id="reviewList">
					<li><a>여행후기</a></li>
				</ul>
			</div>
			<div id="reviewPan">
				<div id="reviewTab1"><h4>여행후기</h4><hr class="hrStyle"/>
					<div id="posting">
						<table>
							<tr>
								<td colspan="4">
									여행후기제목
								</td>
							</tr>
							<tr>
								<td>글쓴이</td>
								<td>구트투어</td>
								<td>이메일</td>
								<td>aaaa@aaaa.aaa</td>
							</tr>
							<tr>
								<td>날  짜</td>
								<td>2019-09-22</td>
								<td>조회수</td>
								<td>1001</td>
							</tr>
						</table>
						<table>
							<tr>
								<td colspan="4">
<pre>
여행가고싶다 보내주세요
여행가고싶다
돈이없다
로또1등당첨되고싶다
로또1등당첨되면 여행간다
</pre>
								</td>
							</tr>
						</table>
					</div>
					<hr/>
					<button>목록보기</button>
				</div>
			</div>
		</section>
		<%@ include file="footer.jspf"%>
	</body>
</html>
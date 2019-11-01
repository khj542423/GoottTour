<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String pageName = "게시글수정";
	String pageSideName = "구트투어 게시글수정";
	String pageImage = "main_img_banner_6.jpg";
%>
<c:if test="${userId!=vo.userId}">
	<script>
		alert("로그인페이지로 이동합니다.");
		location.href="<%=request.getContextPath()%>/project/register/login.do";
	</script>
</c:if>
<c:if test="${userId==vo.userId}">
	<!DOCTYPE html>
	<html>
		<head>
			<meta charset="UTF-8">
			<title>Insert title here</title>
			<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
			<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
			<script type="text/javascript" src="../../ckeditor/ckeditor.js"></script>
			<link rel="stylesheet" href="../headerFooterStyle.css" type="text/css"/>
			<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
			<style>
				*{font-family:'Noto Sans KR',sans-serif;}
				section{margin-bottom:50px}
				#reviewPan{width:100%;}
				#reviewPan h4{text-align:left; margin-left:30px; margin-top:20px}
				#reviewWrite{width:80%; margin:0px auto; margin-bottom:20px; border-top: 1px solid #ddd; border-bottom:1px solid #ddd}
				#reviewWrite table tr{height:60px}
				#reviewWrite table tr td:first-child{width:100px; background:#00a7f0; color:white;; border-bottom:1px solid white}
				#reviewWrite table tr td:last-child{width:90%; padding:20px; border-bottom:1px solid #ddd; text-align:left;}
				#reviewWrite table tr:last-child td:first-child{border-bottom:0px}
				#reviewWrite table tr:last-child td:last-child{border-bottom:0px}
				#button{width:98%}
				#button input:nth-child(1){margin-top:20px; float:left}
				#button input:nth-child(2){margin-top:20px; float:right}
				
				#subject{width:400px; text-align:left; border:1px solid #ddd; border-radius:3px;}
			</style>
			<script>
			$(function(){
				CKEDITOR.replace('content');
			});
			
			function backPage(){
				history.back();
			}
			</script>
		</head>
		<body>
			<%@ include file="../header.jspf" %>
			<section>
				<c:if test="${commuPage=='reviewPage'}">
					<%@ include file="reviewSide.jspf" %>
				</c:if>
				<c:if test="${commuPage=='InfoCenter' || commuPage=='travelQ'}">
					<%@ include file="InfoSide.jspf" %>
				</c:if>
				<div id="reviewPan">
					<div id="reviewTab1"><h4><c:if test="${commuPage=='reviewPage'}">여행후기</c:if><c:if test="${commuPage=='InfoCenter'}">공지사항</c:if><c:if test="${commuPage=='travelQ'}">여행문의</c:if></h4><hr class="hrStyle">
						<form id="reviewWrite" method="post" action="<%=request.getContextPath()%>/project/board/editOk.do">
							<table>
								<tr>
									<td>작성자</td>
									<td><input type="hidden" id="userId" name="userId" value="${userId}"/>${userId}</td>
								</tr>
								<tr>
									<td>제목</td>
									<td><input type="text" class="bora" id="subject" name="subject" value="${vo.subject}"/></td>
								</tr>
								<tr>
									<td>내용</td>
									<td><textarea id="content" name="content">${vo.content}</textarea></td>
								</tr>
							</table>
							<input type="hidden" id="num" name="num" value="${vo.num}"/>
							<input type="hidden" id="pageNum" name="pageNum" value="${vo.pageNum}"/>
							<input type="hidden" id="commuPage" name="commuPage" value="${vo.commuPage}"/>	
							<div id="button">
								<input type="button" value="돌아가기" onclick="backPage()"/>
								<input type="submit" value="수정"/>
							</div>
						</form>
					</div>
				</div>
			</section>
			<%@ include file="../footer.jspf" %>
		</body>
	</html>
</c:if>
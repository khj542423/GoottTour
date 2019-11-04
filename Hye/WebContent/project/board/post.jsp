<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String pageName = "게시글보기";
	String pageSideName = "구트투어 게시글보기";
	String pageImage = "main_img_banner_6.jpg";
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
		<link rel="stylesheet" href="../headerFooterStyle.css" type="text/css"/>
		<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
		<style>
			*{font-family:'Noto Sans KR',sans-serif;}
			section{margin-bottom:50px}
			#reviewPan{width:100%;}
			#reviewPan h4{text-align:left; margin-left:30px; margin-top:20px}
			#posting table{width:80%;margin:0px auto;margin-bottom:20px;}
			#posting table:first-child{border-top:1px solid #ddd;}
			#posting table:first-child tr{height:40px;}
			#posting table:first-child tr:last-child {border-bottom:0px}
			#posting table:first-child tr td:nth-child(2n+1){width:100px; background:#00a7f0; color:white;border-bottom:1px solid #fff;}
			#posting table:first-child tr td:nth-child(2n){text-align:left; padding-left:20px;border-bottom:1px solid #ddd;}
			#posting table:first-child tr:last-child td{border-bottom:1px solid #ddd}
			#postContent {overflow:hidden;}
			#postContent *{text-align:left}
			#button{width:80%; margin:0px auto; }
			#button input{float:right; margin-right:10px}
			#button input:last-child{float:left}
		</style>
		<script>
			function delChk(){
				if(confirm("삭제하시겠습니까?")){
					location.href="<%=request.getContextPath()%>/project/board/delOk.do?pageNum=${vo.pageNum}&num=${vo.num}&commuPage=${vo.commuPage}";
				};
			}
			
			function backPage(){
				history.back();
			}
		</script>
	</head>
	<body>
		<%@ include file="../header.jspf"%>
		<section>
			<%@ include file="boardSide.jspf" %>
			<div id="reviewPan">
				<div id="reviewTab1"><h4><c:if test="${vo.commuPage=='reviewPage'}">여행후기</c:if><c:if test="${vo.commuPage=='InfoCenter'}">공지사항</c:if><c:if test="${vo.commuPage=='travelQ'}">여행문의</c:if></h4><hr class="hrStyle">
					<div id="posting">
						<table>
							<tr>
								<td colspan="4">
									${vo.subject}
								</td>
							</tr>
							<tr>
								<td>번  호</td>
								<td>${vo.no}</td>
								<td>글쓴이</td>
								<td>${vo.userId}</td>
							</tr>
							<tr>
								<td>날  짜</td>
								<td>${vo.regDate}</td>
								<td>조회수</td>
								<td>${vo.hit}</td>
							</tr>
						</table>
						<table>
							<tr>
								<td colspan="4" id="postContent">${vo.content}</td> 
							</tr>
						</table>
					</div>
					<hr/>
					<div id= "button">
						<c:if test="${userId == vo.userId}">
							<input type="button" class="btn btn-secondary" value="삭제" onclick="delChk()"></input>
							<input type="button" class="btn btn-secondary" value="수정" onclick="location.href='<%=request.getContextPath()%>/project/board/edit.do?pageNum=${vo.pageNum}&num=${vo.num}&commuPage=${vo.commuPage}'"></input>
						</c:if>
						<input type="button" class="btn btn-secondary" value="목록보기" onclick="backPage()"></input>
					</div>
				</div>
			</div>
		</section>
		<%@ include file="../footer.jspf"%>
	</body>
</html>
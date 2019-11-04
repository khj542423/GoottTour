<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	String pageName = "커뮤니티";
	String pageSideName = "여행 후기";
	String pageImage = "mainimg3.jpg";
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
			#reviewPan{width:100%; height:1000px}
			#reviewPan h4{text-align:left; margin-left:30px; margin-top:20px}
			#reviewPage{width:100%;}
			#reviewTable{border:1px solid #bbb; width:90%;margin:0px auto;margin-bottom:20px; table-layout: fixed;}
			thead{border-bottom:3px double gray}
			#searchNwrite{width:90%; margin:0px auto;}
			#reviewSearch{float:left; text-align:left; width:95%;}
			#reviewSearch input{text-align:left}
			#write{text-align:right; }
			
			#reviewTable tr th:nth-child(1),#reviewTable tr th:nth-child(5){width:8%;} 
			#reviewTable tr th:nth-child(2){width:50%;}
			#reviewTable td{white-space:nowrap; text-overflow:ellipsis; overflow:hidden;} 
			
			.page-link{color:black;}
		</style>
	</head>
	<body>
		<%@ include file="../header.jspf"%>
		<section>
			<%@ include file="boardSide.jspf" %>
			<div id="reviewPan">
				<div id="reviewTab1"><h4>여행후기</h4><hr class="hrStyle"/>
					<div id="reviewTab">
						<table id="reviewTable" class="table table-striped">
							<thead class="table table-secondary">
								<tr>
					  				<th>번호</th>
					  				<th>제목</th>
					  				<th>글쓴이</th>
					  				<th>날짜</th>
					  				<th>조회수</th>
				  				</tr>
							</thead>
							<tbody>
							<c:forEach var="v" items="${lst}">
								<tr>
				  					<td>${v.no}</td>
				  					<td><a href="<%=request.getContextPath()%>/project/board/post.do?num=${v.num}&pageNum=${vo.pageNum}&commuPage=${vo.commuPage}&no=${v.no}">${v.subject}</a></td>
				  					<td>${v.userId}</td>
				  					<td>${v.regDate}</td>
				  					<td>${v.hit}</td>
				  				</tr>
				  			</c:forEach>
							</tbody>
						</table>
					</div>
					<div>
						<ul id="reviewPage" class="pagination pagination-sm justify-content-center">
							<li class="page-item <c:if test="${vo.pageNum<=1}">disabled</c:if>">
								<a href="<%=request.getContextPath()%>/project/board/list.do?commuPage=${vo.commuPage}&pageNum=${vo.pageNum-1}" class="page-link">◀</a>
							</li>
							<c:forEach var="i" begin="${vo.startPage}" end="${vo.startPage+vo.onePageMax-1}">
								<c:if test="${i<=vo.totalPage}">
									<c:if test="${i==vo.pageNum}"><li class="page-item active"><a href="<%=request.getContextPath()%>/project/board/list.do?commuPage=${vo.commuPage}&pageNum=${i}" class="page-link">${i}</a></li></c:if>
									<c:if test="${i!=vo.pageNum}"><li class="page-item"><a href="<%=request.getContextPath()%>/project/board/list.do?commuPage=${vo.commuPage}&pageNum=${i}" class="page-link">${i}</a></li></c:if>
								</c:if>
							</c:forEach>
							<li class="page-item <c:if test="${vo.pageNum==vo.totalPage}">disabled</c:if>">
							<a href="<%=request.getContextPath()%>/project/board/list.do?commuPage=${vo.commuPage}&pageNum=${vo.pageNum+1}" class="page-link">▶</a></li>
						</ul>
					</div>
				<div id="searchNwrite">
					<form id="reviewSearch">
						<select name ="searchKey">
							<option value="userId">작성자</option>
							<option value="subject">제목</option>
							<option value="content">글내용</option>
						</select>
						<input type="text" name="searchWord"/>
						<input type="hidden" name="commuPage" value="${vo.commuPage}"/>
						<input type="submit" value="검색" onclick="location.href='<%=request.getContextPath()%>/project/board/list.do?'"/>
					</form>
					<button id="write" onclick="location.href='<%=request.getContextPath()%>/project/board/write.do?commuPage=${vo.commuPage}'">글쓰기</button>
				</div>
				</div>
			</div>
		</section>
		<%@ include file="../footer.jspf"%>
	</body>
</html>
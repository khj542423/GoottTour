<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	String pageName = "커뮤니티";
	String pageSideName = "여행 후기";
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
			#sideMenu{width:130px; position:absolute; left:220px; top:653px;}
			#reviewList{width:130px; float:bottom; border:1px solid #00a7f0}
			#reviewList li{width:130px; height:50px; line-height:50px; border-bottom:1px dotted #ddd;}
			#reviewList li:last-child{border-bottom:0px}
			#sideMenu div:first-child{height:80px; font-size:1.2em; font-weight:bold; text-align:center; line-height:80px; background:#00a7f0; color:white}
			#reviewList{float:bottom}
			#reviewPan{width:100%; height:1000px}
			#reviewPan h4{text-align:left; margin-left:30px; margin-top:20px}
			#reviewPage{width:100%;}
			#reviewTable{border:1px solid #bbb; width:80%;margin:0px auto;margin-bottom:20px}
			thead{border-bottom:3px double gray}
			#reviewSearch{width:100%; text-align:left; padding-left:120px}
			#write{position:relative; left:610px}
			
			.page-link{color:black;}
		</style>
	</head>
		<script>

		</script>
	<body>
		<%@ include file="../header.jspf"%>
		<section>
			<div id="sideMenu">
				<div>커뮤니티</div>
				<ul id="reviewList">
					<li><a>여행후기</a></li>
				</ul>
			</div>
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
				  					<td><a href="<%=request.getContextPath()%>/project/board/post.do?num=${v.num}&pageNum=${vo.pageNum}">${v.subject}</a></td>
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
					<div id="reviewSearch">
					<select><option>작성자</option><option>제목</option></select>
					<input type="text"/>
					<button>검색</button>
					<button id="write" onclick="location.href='writeForm.jsp'">글쓰기</button>
					</div>
				</div>
			</div>
		</section>
		<%@ include file="../footer.jspf"%>
	</body>
</html>
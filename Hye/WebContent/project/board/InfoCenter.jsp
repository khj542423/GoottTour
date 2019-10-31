<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String pageName = "고객센터";
	String pageSideName = "구트투어 고객센터";
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
			#sideMenu{width:130px; position:absolute; left:220px; top:653px;}
			#sideMenu div:first-child{height:80px; font-size:1.2em; font-weight:bold; text-align:center; line-height:80px; background:#00a7f0}
			#infoList{width:130px; float:bottom; border:1px solid #00a7f0}
			#infoList li{margin-left:20px; height:50px; line-height:50px; border-bottom:1px dotted #ddd;}
			#infoList li:last-child{border-bottom:0px}
			#infoPan{width:100%; height:1000px}
			#infoPan h4{text-align:left; margin-left:30px; margin-top:20px}
			#infoPage{width:100%;}
			#infoTable{border:1px solid #bbb; width:90%;margin:0px auto;margin-bottom:20px; table-layout: fixed;}
			thead{border-bottom:3px double gray}
			#searchNwrite{width:90%; margin:0px auto;}
			#infoSearch{float:left; text-align:left; width:95%; }
			#write{text-align:right; }
			hr{border:0; height: 3px; background:#ccc linear-gradient(to right, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0));}
			
			#infoTable tr th:nth-child(1), #infoTable tr th:nth-child(5){width:8%;}
			#infoTable tr th:nth-child(2){width:50%;}
			#infoTable td{white-space:nowrap; text-overflow:ellipsis; overflow:hidden;} 
		</style>
		<script>

		</script>
	</head>
	<body>
		<%@ include file="../header.jspf"%>
		<section>
			<div id="sideMenu">
				<div style="color:white">고객센터</div>
				<ul id="infoList">
					<li><a>공지사항</a></li>
					<li><a>여행문의</a></li>
					<li><a>환불규정</a></li>
					<li><a>자주묻는질문</a></li>
				</ul>
			</div>
			<div id="infoPan">
				<div id="infoTab1"><h4>공지사항</h4><hr/>
					<div id="infoTab">
						<table id="infoTable" class="table table-striped">
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
						<ul id="infoPage" class="pagination pagination-sm justify-content-center">
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
				</div>
				<div id="searchNwrite">
					<div id="infoSearch">
						<select><option>작성자</option><option>제목</option></select>
						<input type="text"/>
						<button>검색</button>
					</div>
					<button id="write" onclick="location.href='<%=request.getContextPath()%>/project/board/write.do?commuPage=${vo.commuPage}'">글쓰기</button>
				</div>
			</div>
		</section>
		<%@ include file="../footer.jspf"%>
	</body>
</html>
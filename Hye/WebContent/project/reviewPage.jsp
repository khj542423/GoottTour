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
		<link rel="stylesheet" href="headerFooterStyle.css" type="text/css"/>
		<link rel="stylesheet" href="reviewPageStyle.css" type="text/css"/>
		<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
		<style>
			*{font-family:'Noto Sans KR',sans-serif;}
			#sideMenu{width:130px; position:absolute; left:220px; top:304px;}
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
		<%@ include file="header.jspf"%>
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
					  				<td>번호</td>
					  				<td>제목</td>
					  				<td>글쓴이</td>
					  				<td>날짜</td>
					  				<td>조회수</td>
				  				</tr>
							</thead>
							<tbody>
								<tr>
				  					<td>10</td>
				  					<td><a href="post.jsp">추석이 다 지나고 공지를 올려서 죄송합니다.</a></td>
				  					<td>구트투어</td>
				  					<td>2019-09-22</td>
				  					<td>1000</td>
				  				</tr>
				  				<tr>
				  					<td>9</td>
				  					<td>추석 휴일 안내</td>
				  					<td>구트투어</td>
				  					<td>2019-09-22</td>
				  					<td>10</td>
				  				</tr>
				  				<tr>
				  					<td>8</td>
				  					<td>제대로적겠습니다</td>
				  					<td>네..</td>
				  					<td>2019-09-21</td>
				  					<td>100</td>
				  				</tr>
				  				<tr>
				  					<td>7</td>
				  					<td>제대로 써야하는데</td>
				  					<td>다음엔</td>
				  					<td>2019-09-21</td>
				  					<td>2</td>
				  				</tr>
				  				<tr>
				  					<td>6</td>
				  					<td>제목짓기가가장귀찮다</td>
				  					<td>이름적기도귀찮다</td>
				  					<td>2019-09-20</td>
				  					<td>1</td>
				  				</tr>
				  				<tr>
				  					<td>5</td>
				  					<td>제목좀잘써라</td>
				  					<td>글쓴애</td>
				  					<td>2019-09-19</td>
				  					<td>10</td>
				  				</tr>
								<tr>
				  					<td>4</td>
				  					<td>제목입니다</td>
				  					<td>글쓴이</td>
				  					<td>2019-09-18</td>
				  					<td>1</td>
				  				</tr>
								<tr>
				  					<td>3</td>
				  					<td>제목뭐쓰지</td>
				  					<td>아까걔</td>
				  					<td>2019-09-17</td>
				  					<td>0</td>
				  				</tr>
								<tr>
				  					<td>2</td>
				  					<td>제목제목</td>
				  					<td>전게시글쓴애</td>
				  					<td>2019-09-17</td>
				  					<td>1</td>
				  				</tr>
								<tr>
				  					<td>1</td>
				  					<td>첫번째게시글</td>
				  					<td>김혜진</td>
				  					<td>2019-09-16</td>
				  					<td>3</td>
				  				</tr>
							</tbody>
						</table>
					</div>
					<div>
						<ul id="reviewPage" class="pagination pagination-sm justify-content-center">
							<li class="page-item disabled"><a href="#" class="page-link">◀</a></li>
							<li class="page-item active"><a href="#" class="page-link">1</a></li>
							<li class="page-item"><a href="#" class="page-link">2</a></li>
							<li class="page-item"><a href="#" class="page-link">3</a></li>
							<li class="page-item"><a href="#" class="page-link">4</a></li>
							<li class="page-item"><a href="#" class="page-link">5</a></li>
							<li class="page-item"><a href="#" class="page-link">6</a></li>
							<li class="page-item"><a href="#" class="page-link">7</a></li>
							<li class="page-item"><a href="#" class="page-link">8</a></li>
							<li class="page-item"><a href="#" class="page-link">9</a></li>
							<li class="page-item"><a href="#" class="page-link">▶</a></li>
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
		<%@ include file="footer.jspf"%>
	</body>
</html>
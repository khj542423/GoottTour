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
			#sideMenu{width:130px; position:absolute; left:220px; top:304px;}
			#reviewList{width:130px; float:bottom; border:1px solid #00a7f0;}
			#reviewList li{margin-left:20px; height:50px; line-height:50px; border-bottom:1px dotted #ddd;}
			#reviewList li:last-child{border-bottom:0px}
			#sideMenu div:first-child{height:80px; font-size:1.2em; font-weight:bold; text-align:center; line-height:80px; background:#00a7f0; color:white}
			#reviewList{float:bottom}
			#reviewPan{width:100%;}
			#reviewPan h4{text-align:left; margin-left:30px; margin-top:20px}
			#posting table{width:80%;margin:0px auto;margin-bottom:20px;}
			#posting table:first-child{border-top:1px solid #ddd;}
			#posting table:first-child tr{height:40px;}
			#posting table:first-child tr:last-child {border-bottom:0px}
			#posting table:first-child tr td:nth-child(2n+1){width:100px; background:#00a7f0; color:white;border-bottom:1px solid #fff;}
			#posting table:first-child tr td:nth-child(2n){text-align:left; padding-left:20px;border-bottom:1px solid #ddd;}
			#posting table:first-child tr:last-child td{border-bottom:1px solid #ddd}
			#posting table tr td pre{padding-top: 20px}
		</style>
		<script>
			function backPage(){
				history.back();
			}
		</script>
	</head>
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
					<input type="button" value="목록보기" onclick="backPage()"></input>
				</div>
			</div>
		</section>
		<%@ include file="../footer.jspf"%>
	</body>
</html>
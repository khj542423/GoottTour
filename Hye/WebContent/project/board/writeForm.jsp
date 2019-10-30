<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String pageName = "글쓰기";
	String pageSideName = "구트투어 글 쓰기";
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
		<script type="text/javascript" src="../../ckeditor/ckeditor.js"></script>
		<link rel="stylesheet" href="../headerFooterStyle.css" type="text/css"/>
		<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
		<style>
			*{font-family:'Noto Sans KR',sans-serif;}
			section{margin-bottom:50px}
			#sideMenu{width:130px; position:absolute; left:220px; top:304px;}
			#reviewList{width:130px; float:bottom; border:1px solid #00a7f0;}
			#reviewList li{margin-left:20px; height:50px; line-height:50px; border-bottom:1px dotted #ddd;}
			#reviewList li:last-child{border-bottom:0px}
			#sideMenu div:first-child{height:80px; font-size:1.2em; font-weight:bold; text-align:center; line-height:80px; background:#00a7f0; color:white;}
			#reviewList{float:bottom}
			#reviewPan{width:100%;}
			#reviewPan h4{text-align:left; margin-left:30px; margin-top:20px}
			#reviewWrite{width:80%; margin:0px auto; margin-bottom:20px; border-top: 1px solid #ddd; border-bottom:1px solid #ddd}
			#reviewWrite table tr{height:60px}
			#reviewWrite table tr td:first-child{width:100px; background:#00a7f0; color:white;; border-bottom:1px solid white}
			#reviewWrite table tr td:last-child{width:90%; padding:20px; border-bottom:1px solid #ddd; text-align:left;}
			#reviewWrite table tr:last-child td:first-child{border-bottom:0px}
			#reviewWrite table tr:last-child td:last-child{border-bottom:0px}
			#button{margin-left:10%; text-align:left}
			#button button:last-child{position:relative; left:835px}
			
			.bora{border:1px solid #ddd; border-radius:3px}
			#writer{width:200px; text-align:left;}
			#writeTitle{width:400px; text-align:left}
		</style>
		<script>
		$(function(){
			CKEDITOR.replace( 'writeText' );

		});
		
		function backPage(){
			history.back();
		}
		</script>
	</head>
	<body>
		<%@ include file="../header.jspf" %>
		<section>
			<div id="sideMenu">
				<div>커뮤니티</div>
				<ul id="reviewList">
					<li><a>여행후기</a></li>
				</ul>
			</div>
			<div id="reviewPan">
				<div id="reviewTab1"><h4>여행후기</h4><hr class="hrStyle">
					<div id="reviewWrite">
						<table>
							<tr>
								<td>이름</td>
								<td><input type="text" class="bora" id="writer"/></td>
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
						<input type="button" value="돌아가기" onclick="backPage()"></input>
						<button>글작성</button>
					</div>
				</div>
			</div>
		</section>
		<%@ include file="../footer.jspf" %>
	</body>
</html>
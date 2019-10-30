<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String pageName = "회원등급";
	String pageSideName = "구트투어 회원등급과 혜택";
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
		<link rel="stylesheet" href="headerFooterStyle.css" type="text/css"/>
		<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
		<style>
	     	 *{font-family:'Noto Sans KR',sans-serif;}
	     	 #row-span{ text-align:center; padding-top:30px; width:100px; font-size:25px;}
			#diamond ~ th{width:200px; }
			#top-table{margin-bottom:50px; }
			h1{text-align:left; margin-bottom:0; margin-top:15px;}
			#top-p, #bot-p{font-size:20px; width:200px; height:50px; text-align:center; 
							font-weight:bold; line-height:50px; background:#00a7f0; color:white;}
			#last-row{height:70px; font-size:20px; padding-top:20px;}
			#last-row ~ td{padding-top:20px}
			hr{border:0; height: 3px; background:#ccc linear-gradient(to right, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0));}
			section th{background:#ddd;}
			section tr th:first-child{background:#ddd;border-bottom:1px solid white}
			section table tr:nth-child(2) td:first-child{border-bottom:1px solid white; border-right:1px solid white}
			section table tr:nth-child(2) td:nth-child(2){background:#ddd; border-bottom:1px solid white}
			section tr td:first-child{background:#ddd;border-bottom:1px solid white}
     	 </style>
     	 <script>

		</script>
	</head>
	<body>
		<%@ include file="header.jspf"%>
		<section>
			<%@ include file="sidebar.jspf"%>
			<h1>회원등급기준</h1><br>
			<hr>		
			<p id='top-p'>구트패키지고객</p>
			<table class='table table-bordered table-md' id='top-table'>
				<tr>
					<th colspan='2' style='width:20px;'id='diamond'>등급</th>
					<th>다이아몬드</th>
					<th>플레티넘</th>
					<th>골드</th> 
					<th>실버</th>
					<th>브론즈</th>
				</tr>
				<tr>
					<td rowspan='2' id='row-span'>조건</td>
					<td>예약건수</td>
					<td>6</td>
					<td>4</td>
					<td>2</td>
					<td>2</td>
					<td>1</td>
				</tr>
				<tr>
					<td>이용금액</td>
					<td>2,000,000원</td>
					<td>1,000,000원</td>
					<td>500,000원</td>
					<td>-</td>
					<td>-</td>
				</tr>				
				<tr>
					<td colspan='2' id='last-row'>혜택</td>
					<td>20%할인 쿠폰X2장</td>
					<td>20%할인 쿠폰</td>
					<td>10%할인 쿠폰</td>
					<td>10,000원 할인 쿠폰</td>
					<td>5,000원 할인 쿠폰</td>
				</tr>
			</table>
				<p id='bot-p'>자유여행고객</p>
				<table class='table table-bordered table-md'>
				<tr>
					<th colspan='2' style='width:20px;'id='diamond'>등급</th>
					<th style=''>다이아몬드</th>
					<th>플레티넘</th>
					<th>골드</th> 
					<th>실버</th>
					<th>브론즈</th>
				</tr>
				<tr>
					<td rowspan='2' id='row-span'>조건</td>
					<td>예약건수</td>
					<td>3</td>
					<td>4</td>
					<td>5</td>
					<td>6</td>
					<td>6</td>
				</tr>
				<tr>
					<td>이용금액</td>
					<td>200,000</td>
					<td>100,000</td>
					<td>50,000</td>
					<td>30,000</td>
					<td>10,000</td>
				</tr>	
				<tr>
					<td colspan='2' id='last-row'>혜택</td>
					<td>20%할인 쿠폰X2장</td>
					<td>20%할인 쿠폰</td>
					<td>10%할인 쿠폰</td>
					<td>10,000원 할인 쿠폰</td>
					<td>5,000원 할인 쿠폰</td>
				</tr>
			</table>
		</section>
		<%@ include file="footer.jspf"%>
	</body>
</html>
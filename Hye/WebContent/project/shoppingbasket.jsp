<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String pageName = "여행바구니";
	String pageSideName = "구트투어 여행바구니";
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta  name='viewport' content='width=device-width, initial-scale=1'/>
		<title>Insert title here</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
		<link rel="stylesheet" href="headerFooterStyle.css" type="text/css"/>
		<link rel="stylesheet" href="shoppingbasketStyle.css" type="text/css"/>
		<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
		<style>
	   		 *{font-family:'Noto Sans KR',sans-serif;} 
	   	 </style>
		<script>
			$(function(){
				$('#chk_all').change(function(){
					if(this.checked){
						$('#body td input').prop('checked', true);
						
					}else{
						
						$('#body td input').prop('checked', false);
					}
				});
			});
		</script>
	</head>
	<body>
		<%@ include file="header.jspf" %>
		<section>
			<%@ include file="sidebar.jspf" %>
			<!-- 장바구니   -->
			<div id='con'>
			<h1 style='text-align:left; margin-top:20px'>장바구니</h1>
			<hr class='my-h1'>
			  <div class="table-responsive">
			    <table class="table table-bordered">
			      <thead>
			        <tr>
			          <th id='chk1'>선택<br><input type='checkbox' id='chk_all' class='chk' style='width:20px;height:20px;'></input></th>
			          <th style='width:500px; line-height:48px;'>상품명</th>
			          <th style='width:200px; line-height:48px;'>출발일</th>
			          <th style='width:100px; line-height:48px;'>인원수</th>
			          <th style='width:100px; line-height:48px;'>예약상태</th>
			          <th style='width:200px; line-height:48px;'>가격</th>
			        </tr>
			      </thead>
			      <tbody id='body'>
			        <tr> 
			          <td style= 'width:80px; text-align:center ' ><input type='checkbox' id='chk1' style='width:20px;height:20px;'></td>
			          <td><a href='#'>지상최대 지상낙원</a></td>       
			          <td>2019년9월22일</td> 
			          <td>10명</td>
			          <td>대기</td>
			          <td>220,000원</td>
			        </tr>
			         <tr>
			          <td style= 'width:80px; text-align:center ' ><input type='checkbox' id='chk2' style='width:20px;height:20px;'></td>
			          <td></td>       
			          <td></td> 
			          <td></td>
			          <td></td>
			          <td></td>
			        </tr>
			        <tr>
			          <td style= 'width:80px; text-align:center'><input type='checkbox' id='chk3' style='width:20px;height:20px;'></td>
			          <td></td>       
			          <td></td> 
			          <td></td>
			          <td></td>
			          <td></td>
			        </tr>
			      </tbody>
			    </table>
			    <div id='bottombt'>
			    	<p id='count'>총금액=<input type='text' id='textbox'></p>
			     	<button class='btn active'>삭제하기</button>
			     	<button class='btn active' onclick="location.href='reservation.jsp'">예약하기</button>
			    </div>
			  </div>
			</div>
		</section>
		<%@ include file="footer.jspf" %>
	</body>
</html>
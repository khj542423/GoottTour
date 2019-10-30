<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String pageName = "여행만들기";
	String pageSideName = "구트투어 여행만들기";
	String pageImage = "main_img_banner_6.jpg";
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name = "viewport" content="width=device-width,initial-scale=1">
		<title>Insert title here</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<link rel="stylesheet" href="jquery-ui.min.css" type="text/css"/>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="jquery-ui.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
		<link rel="stylesheet" href="headerFooterStyle.css" type="text/css"/>
		<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
		<style>
			*{font-family:'Noto Sans KR',sans-serif;}
		</style>
		<style>
			#makeTrip{width:100%; border:1px solid #ddd; border-radius:5px; padding:10px}
			#makeTrip table tr td{padding:10px}
			#makeTrip button{width:100px; height:80px; border-radius:5px; background:#00a7f0; color:white; border:0px}
			#startingDay{width:100%}
			
			#rlSelect{margin-top:20px; width:100%}
			#routeSelect{border:1px solid #ddd; border-radius:5px; width:800px; height:650px; padding:10px}
			#lodgingSelect{border:1px solid #ddd; border-radius:5px; width:380px; height:650px; padding:10px}
			
			.modal{z-index:10001}
			#selectLodgingList{margin-top:20px; width:100%}
			#selectLodgingList tr{width:10%; height:50px; border-bottom:1px solid #ddd}
			#selectLodgingList tr td:first-child{width:55%}
			#selectLodgingList tr td:nth-child(2){width:30%}
			#selectLodgingList tr td:last-child{width:15%}
			
			#lodgingModal>div>div,#lodgingDetailModal>div>div{width:800px; height:500px;}
			#lodgingModal *{text-align:left}
			/*body.modal-open{overflow:scroll}*/
			
			
		</style>
		<script>
			$(function(){
				//날짜선택
				$("#depDate").datepicker();
				$("#delDate").datepicker();
				
			})
			
			$(document).ready(function(){
				$("#lodgingSelectDiv").click(function(){
					$("#lodgingDetailModal").modal();
				});
				
				$("#lodgingSelectBtn").click(function(){
					$("#lodgingModal").modal();
				});
			});
		</script>
	</head>
	<body>
		<%@ include file="header.jspf"%>
		<section>
			<%@ include file="sidebar.jspf"%>
			<h3 style="text-align:left">여행만들기</h3>
			<hr class="hrStyle"/>
			<div id="makeTrip">
				<form>
				<table>
					<tr>
						<td>출발지역</td>
						<td colspan="3">
							<select id="startingDay">
								<option>김포출발</option>
							</select>
						</td>
						<td>출발일자</td>
						<td><input type="text" id="depDate"/></td>
						<td>도착일자</td>
						<td><input type="text" id="delDate"/></td>
						<td rowspan="2"><button>적용</button></td>
					</tr>
					<tr>
						<td>출발인원</td>
						<td><select><option>성인 1명</option></select></td>
						<td><select><option>소아 1명</option></select></td>
						<td><select><option>유아 1명</option></select></td>
						<td colspan="4" style="text-align:left; font-size:0.9em">(성인 : 만 13세이상 / 소아 : 만2세~12세 / 유아 : 만24개월미만)</td>
					</tr>
				</table>
				</form>
			</div>
			<table id="rlSelect">
				<tr>
					<td>
						<div id="routeSelect" style="margin-right:20px">
							<h4 style="text-align:left">여행지</h4>
							<hr style="margin-top:0px"/>
							<div style="text-align:left; margin:2%">
							<h5 style="text-align:left">지역선택</h5>
							<select style="width:100%; margin-right:2%">
								<option>지역 설정</option>
							</select>
							</div>
							<div style="margin:2%; width: 96%; border:1px solid #ddd; height:300px">지도이미지 나오는 div</div>
							<h5 style="text-align:left; margin-left:2%">경로</h5>
							<div style="overflow-y:scroll; margin:2%; width:96%; border:1px solid #ddd; height:130px">경로가 글로 나오는 div</div>
						</div>
					</td>
					<td>
						<div id="lodgingSelect">
							<h4 style="text-align:left">숙소</h4>
							<hr style="margin-top:0px"/>
							<table id="selectLodgingList">
								<tr>
									<td>선택된 숙박이 없습니다.</td>
									<td>[선택날짜]</td>
									<td><button id="lodgingSelectBtn">선택</button> <!-- 누르면 숙소 모달 --></td>
								</tr>
							</table>
						</div>
					</td>
				</tr>
			</table>		
			<div id="lodgingModal" class="modal fade">
				<div class="modal-dialog" style="background-color:#fff">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title">숙소</h4><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						</div>
						<div class="modal-body">
							<div class="form-group">
								유형별
								<input type="radio" name="restType" checked/>전체보기
								<input type="radio" name="restType"/>호텔클래식
								<input type="radio" name="restType"/>호텔캐쥬얼
								<input type="radio" name="restType"/>리조트클래식
								<input type="radio" name="restType"/>리조트캐쥬얼
								<input type="radio" name="restType"/>실속형펜션
								<input type="radio" name="restType"/>골프텔
							</div>
							<div>숙소명<input type="text"/><input type="button" value="검색"/></div>
							<div class="form-group">
								<div id="lodgingSelectDiv">숙소 클릭 시 숙소 상세 div</div>
							</div>
							<hr/>
							<input type="submit" value="선택"/>
						</div>
					</div>
				</div>
			</div>
			
			<div id="lodgingDetailModal" class="modal fade">
				<div class="modal-dialog" style="background-color:#fff">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title">숙소</h4><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						</div>
						<div class="modal-body">
							<div class="form-group">
								유형별
								<input type="radio" name="restType" checked/>전체보기
								<input type="radio" name="restType"/>호텔클래식
								<input type="radio" name="restType"/>호텔캐쥬얼
								<input type="radio" name="restType"/>리조트클래식
								<input type="radio" name="restType"/>리조트캐쥬얼
								<input type="radio" name="restType"/>실속형펜션
								<input type="radio" name="restType"/>골프텔
							</div>
							<div>숙소명<input type="text"/><input type="button" value="검색"/></div>
							<div class="form-group">
								설정에 따른 이미지
							</div>
							<hr/>
							<input type="submit" value="선택"/>
						</div>
					</div>
				</div>
			</div>
		</section>
		<%@ include file="footer.jspf"%>
</body>
</html>
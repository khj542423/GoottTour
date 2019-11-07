<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String pageName = "예약페이지";
	String pageSideName = "여행 예약페이지";
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
			#tbid{width:100%; margin-top:10px; }
			#trid th{font-size:25px; font-weight:bold; }
			h1{text-align:left; margin-top:10px;}
			a:link, a:visited{color:red; text-decoration:none;}
			a:hover{color:blue; text-decoration:underline;}
			#join form, #join p{text-align:left; font-weight:bold; font-size: 20px;}
			#join input{margin-bottom:10px}
			#telid{width:20px;}  
			#btn-rev{text-align:center; marign:50px auto; }
			#btn-rev button{margin:50px auto; width:100px; height:50px; background:#00a7f0; color:white}
			#rev-tel, #trv-tel{width:91px; height:34px; text-align:center; } 
			#email-bar, #email-bar2, #email-bar3, #email-bar4{width:181px; height:34px;text-align:left;}
			#rev-name, #trv-name{text-align:left;} 
     	</style>
    	
    	<script type="text/javascript">
     	
    	$(function(){
/*     		var same = $(this).checked;
    		$('#samecheck').click(function(){
    			var temp = document.getElementById('rev-name').value
    			var temp2 = document.getElementById('rev-tel').value
    			var temp3 = document.getElementById('rev-tel2').value
    			document.getElementById('trv-name').value=temp;
    			document.getElementById('trv-tel').value=temp2;
    			document.getElementById('trv-tel2').value=document.getElementById('rev-tel2').value;
    			document.getElementById('trv-tel3').value=document.getElementById('rev-tel3').value;
    			if(same===true){
    				$('#samecontent input').filter('input:text')
    				.attr('disabled','disabled')
    				.css('opactiy', 0.5);
    			}else	
	    			$('#samecontent input').filter('input:text').attr('readonly',false)
	    			.css('opacity', 1);
    		}); */
    		
			$('#btn1').on('click',function(){
				$(this).css('background-color','orange').css('color','#fff');
				alert('예약이완료됨.');
			});
				
			$("#samecheck").change(function(){
				if(this.checked){
					for(i=1; i<=6; i++){
						$("#sameFrm input:nth-of-type("+i+")").val($("#reserFrm input:nth-of-type("+i+")").val());
					}
					$("#sameFrm input").prop("readonly",true);
				}else{
					$("#sameFrm input").val("");
					$("#sameFrm input").prop("readonly",false);
				}
			});
    	}); 
     	</script>
	</head>
	<body>
		<%@ include file="header.jspf"%>
	<section>
		<%@ include file="sidebar.jspf"%>
	<div id='main'>
	<h1 id='rev-h1'>예약하기</h1>
	<hr class="hrStyle"/>
		<table class="table table-bordered" style="table-layout:fixed">
			<thead>
			  <tr>
				<th style='width:145px;'>예약날짜</th> 
				<th style='width:130px;'>상품코드</th>
				<th style='width:200px;'>상품명</th>
				<th style='width:100px;'>결제금액</th>
				<th style='width:60px;'>인원</th>
			    <th style='width:145px;'>출발일</th>
			    <th>여행도우미</th>
			    <th style="width:90px">예약상태</th>
			    <th>상품평</th>
			  </tr>
			</thead>
			<tbody id='rev-body'>
			  <tr>
			    <td>2019년9월19일</td>
			    <td><a href='#'>AAP3412TWB</a></td>
			    <td style="width:240px; white-space:nowrap; overflow:hidden; text-overflow:ellipsis">제주도 5일_특급 신라호텔 바로출발제주도 5일_준특급 신라호텔</td>
			    <td>500,000</td>
			    <td>2</td>
			    <td>2019년10월20일</td>
			    <td>man</td>
			    <td>Yes</td>
			    <td><button class='btn btn-secondary'>작성하기 </button></td>
			  </tr>
			</tbody>
		</table>
	<div id='join'>
	
	<form id="reserFrm">
	예약자<br/><input type="text" name='rev-name' size='10' maxlength='5' required placeholder="이름" id='rev-name'/><br/>
	연락처<br/><input type='text' name='rev-tel' id='rev-tel' style="margin-right:5px"/>
				- <input type="text" name='rev-tel2' size='2'maxlength='4' id='rev-tel2' style='margin-left:5px; margin-right:5px;'/>
				- <input type="text" name='rev-tel3' size='2'id='rev-tel3' maxlength='4' style='margin-left:5px;'/><br/>
	이메일<br/><input type='text' name='txt5' size='15' maxlength='15' id="email-bar" style='margin-right:5px'/>@
	<input type='text' name='txt5' size='15' maxlength='15' id="email-bar2" style='margin-right:5px'/>
	</form>		
		 
		 
	<hr style='margin:10px auto;'/>
	<br/> 
	<div id='samecontent'>
	<p style='margin-top: -15px; font-size:15px'><input type='checkbox' id='samecheck' >실제 여행자와 예약자가 동일하면 체크해주세요.</p>
	</div>
	<hr style='margin:10px auto;'/>
	<form id="sameFrm">
	여행자<br/><input type="text" name='trv-name' size='10' maxlength='5' required placeholder="이름" id='trv-name'/><br/>
	연락처<br/><input type='text' name='trv-tel' id='trv-tel' style='margin-right:5px'/>
				- <input type="text" id=trv-tel2 name='trv-tel2' size='2' maxlength='4' style='margin-left:5px; margin-right:5px;'/>
				- <input type="text"  id='trv-tel3' name='trv-tel4' size='2' maxlength='4' style='margin-left:5px'/><br/>
	이메일<br/><input type='text' name='txt5' size='15' maxlength='15' id=email-bar3 style='margin-right:5px'/>@
			<input type='text' name='txt5' size='15' maxlength='15' id=email-bar4 style='margin-right:5px'/><br/>
	요청사항 & 문의사항<br/><textarea name='content' rows='5' cols='50' style='text-align:left' required placeholder="1000자이내로 입력해주세요."></textarea>
	<div id='btn-rev'>
	<a href='https://www.naver.com'>
	<button class='btn active' id='btn1'>예약하기</button>
	</a>
	</div>
	</form>
	</div>	
	</div>	
	</section>
		<%@ include file="footer.jspf"%>
	</body>
</html>
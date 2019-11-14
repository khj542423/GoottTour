<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Dokdo|Jua|Poor+Story&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/uikit@3.2.2/dist/css/uikit.min.css" />
<script defer src="all.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/uikit@3.2.2/dist/js/uikit.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/uikit@3.2.2/dist/js/uikit-icons.min.js"></script>

<style>
	*{margin:0 auto;padding:0 auto;text-decoration:none;list-style-type:none;}
	.container{width:800px;height:1000px;}
	table{width:800px;height:40px;padding-top:20px;}
	#counselingImg{width:800px;height:100px;padding-top:50px;}
	#counselingImg h3{height:100px;line-height:70px;padding-left:20px;color:gray;font-weight:bold;}
	#counselingImg>div:nth-child(2){float:left;height:100px;line-height:100px;}
	#counselingImg>div:nth-child(3){float:left;margin:0 auto;text-align:center;}
	#counselingComent{height:50px;text-align:center;}
	a:hover{font-weight:bold}
	#counselingList{position:relative;}
	#counselingList ul{float:left;}
	#counselingList>ul li:first-of-type{position:relative;text-align:center;margin-bottom:10px;font-weight:bold;}
	#quo, #quo2{font-size: 15px;line-height: 40px;height: 35px;}
	h2{font-size:1.3em;padding:0 auto;margin:0 auto;text-align: center;font-family: 'Poor Story', cursive;}

</style>
</head>
<body>
<div class="container">
	<table>
		<tr id="counselingTop">
			<td style="font-size:20px;color:lightblack;font-weight:bold">일반/기업 단체</td>
		</tr>
	</table>
	<div id="counselingImg">
		<div><a href=""><img src="../image/MenuLogo.png" style="width:200px;float:left;border-right:1px solid lightgray;" ></a></div>
		<div><h3>여행 컨설팅 제안</h3></div>
	</div>
    <div style="padding:10px;text-align:left;" id="counselingCenter">
         <p style="font-family: 'Poor Story', cursive;font-size:28px;text-align:center;background:lightblue;border-radius:15px"><i id="quo" class="fas fa-quote-left" style=""></i>목적과 참가자들에게 적합한 여행/연수 설계 <i id="quo2" class="fas fa-quote-right"></i></p>   
    </div>
    <h2 style="color:orange;margin-bottom:10px;"><i class="fas fa-hashtag" style="font-size:15px;"></i> 학생 단체여행, 일반 단체여행, 기업 단체여행, 연수까지!</h2>
  	<h2 style="color:brown"><i class="fas fa-hashtag" style="font-size:15px;"></i> 단체 맞춤 여행 컨설팅 전문기업</h2>
    <div id="counselingList" class="uk-child-width-1-3@m" uk-grid uk-scrollspy="cls: uk-animation-slide-bottom; target: .uk-card; delay: 300; repeat: true"> 	
    	<ul class="uk-card uk-card-default uk-card-body" style="border-radius:15px">
    		<li style="color:#fff;background:red;border-radius:10px">여행/연수 목적</li>
    		<li style="color:black;font-weight:bold;margin-left:50px;"><i class="far fa-circle" style="font-size:10px;position:relative;top:-2px;"></i> 문화유적답사</li>
    		<li style="color:black;font-weight:bold;margin-left:50px;"><i class="far fa-circle" style="font-size:10px;position:relative;top:-2px;"></i> 자연생태답사</li>
    		<li style="color:black;font-weight:bold;margin-left:50px;"><i class="far fa-circle" style="font-size:10px;position:relative;top:-2px;"></i> 기업 워크샵</li>
    		<li style="color:black;font-weight:bold;margin-left:50px;"><i class="far fa-circle" style="font-size:10px;position:relative;top:-2px;"></i> 리더십 캠프</li>
    	</ul>
    	<ul class="uk-card uk-card-default uk-card-body" style="border-radius:15px">
    		<li style="color:#fff;background:blue;border-radius:10px">여행/연수 참가구성원</li>
    		<li style="color:black;font-weight:bold;margin-left:50px;"><i class="far fa-circle" style="font-size:10px;position:relative;top:-2px;"></i> 학생</li>
    		<li style="color:black;font-weight:bold;margin-left:50px;"><i class="far fa-circle" style="font-size:10px;position:relative;top:-2px;"></i> 동호회</li>
    		<li style="color:black;font-weight:bold;margin-left:50px;"><i class="far fa-circle" style="font-size:10px;position:relative;top:-2px;"></i> 기업 직장인</li>
    		<li style="color:black;font-weight:bold;margin-left:50px;"><i class="far fa-circle" style="font-size:10px;position:relative;top:-2px;"></i> 성인</li>
    	</ul>
    	<ul class="uk-card uk-card-default uk-card-body" style="border-radius:15px">
    		<li style="color:#fff;background:green;border-radius:10px">여행/연수 희망지역</li>
    		<li style="color:black;font-weight:bold;margin-left:50px;"><i class="far fa-circle" style="font-size:10px;position:relative;top:-2px;"></i> 국내내륙여행</li>
    		<li style="color:black;font-weight:bold;margin-left:50px;"><i class="far fa-circle" style="font-size:10px;position:relative;top:-2px;"></i> 국내 섬 여행</li>
    		<li style="color:black;font-weight:bold;margin-left:50px;"><i class="far fa-circle" style="font-size:10px;position:relative;top:-2px;"></i> 해외여행</li>
    		<li style="color:black;font-weight:bold;margin-left:50px;"><i class="far fa-circle" style="font-size:10px;position:relative;top:-2px;"></i> 리더십 캠프</li>
    	</ul> 	
    </div>
    <div style="text-align: center;" class="uk-child-width-1-2@m uk-grid-match" style="">
    	<button class="uk-button uk-button-primary" class="uk-card uk-card-default uk-card-body" uk-scrollspy="cls: uk-animation-slide-left; repeat: true" style="width:165px;border-radius:10px;top:30px;position:relative;margin:0 auto;left:-15px;">상담/신청하기 ></button>
    </div>
</div>
</body>
</html>
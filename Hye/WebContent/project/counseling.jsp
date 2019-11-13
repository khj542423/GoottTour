<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Dokdo|Jua|Poor+Story&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/uikit@3.2.2/dist/css/uikit.min.css" />
<script	src="https://cdn.jsdelivr.net/npm/uikit@3.2.2/dist/js/uikit.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/uikit@3.2.2/dist/js/uikit-icons.min.js"></script>

<style>
	*{margin:0 auto;padding:0 auto;text-decoration:none;list-style-type:none;}
	.container{width:800px;height:1000px;}
	table{width:800px;height:40px;padding-top:20px;}
	#counselingImg{width:800px;height:100px;padding-top:50px;}
	#counselingImg h3{height:100px;line-height:70px;padding-left:20px;color:gray;}
	#counselingImg>div:nth-child(2){float:left;height:100px;line-height:100px;}
	#counselingImg>div:nth-child(3){float:left;margin:0 auto;text-align:center;}
	#counselingComent{height:50px;text-align:center;}
	a:hover{font-weight:bold}
	#counselingList{text-align:center;position:relative;}
	#counselingList ul{float:left;}
	#counselingList>ul>li:first-of-type {margin-bottom:10px;font-weight:bold;
	
}
</style>
</head>
<body>
<div class="container">
	<table>
		<tr id="counselingTop">
			<td style="font-size:20px;color:lightblack;font-weight:bold">일반/기업 단체</td>
			<td align="right" class="uk-list uk-link-text"><a href="">HOME</a> > 학교/단체 > 일반/기업 단체</td>
		</tr>
	</table>
	<div id="counselingImg">
		<div><a href=""><img src="../image/MenuLogo.png" style="width:200px;float:left;border-right:1px solid lightgray;" ></a></div>
		<div><h3>여행 컨설팅 제안</h3></div>
	</div>
	<div>
        <div style="padding:10px;text-align:left;">
            <p style="left:30px;position:relative;font-family: 'Poor Story', cursive;font-size:28px;text-align:center;background:lightblue;border-radius:15px">목적과 참가자들에게 적합한 여행/연수 설계</p>
        </div>
    </div>
    <div id="counselingList"  class="uk-child-width-1-3@m" uk-grid uk-scrollspy="cls: uk-animation-fade; target: .uk-card; delay: 500; repeat: true">
    	<ul class="uk-card uk-card-default uk-card-body" style="border-radius:15px">
    		<li style="color:#fff;background:red;border-radius:10px">여행/연수 목적</li>
    		<li>문화유적답사</li>
    		<li>자연생태답사</li>
    		<li>기업 워크샵</li>
    		<li>리더십 캠프</li>
    	</ul>
    	<ul class="uk-card uk-card-default uk-card-body" style="border-radius:15px">
    		<li style="color:#fff;background:blue;border-radius:10px">여행/연수 참가구성원</li>
    		<li>학생</li>
    		<li>동호회</li>
    		<li>기업 직장인</li>
    		<li>성인</li>
    	</ul>
    	<ul class="uk-card uk-card-default uk-card-body" style="border-radius:15px">
    		<li style="color:#fff;background:green;border-radius:10px">여행/연수 희망지역</li>
    		<li>국내내륙여행</li>
    		<li>국내 섬 여행</li>
    		<li>해외여행</li>
    		<li>리더십 캠프</li>
    	</ul> 	
    </div>
    <div style="text-align: center;">
    	<button class="uk-button uk-button-primary" style="border-radius:10px;margin-top:50px;">상담/신청하기 ></button>
    </div>
</div>
</body>
</html>
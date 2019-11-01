<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String pageName = "여행리스트";
	String pageSideName = "구트투어 여행";
	String pageImage = "mainimg4.jpg";
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name = "viewport" content="width=device-width,initial-scale=1">
		<title>구트투어 상품리스트</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
		<link rel="stylesheet" href="headerFooterStyle.css" type="text/css"/>
		<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
		<style>
		*{font-family:'Noto Sans KR',sans-serif;}
		</style>
		<style>
			#tabmenu{ position: absolute; margin-left: 30%; top: 700px;  left: 100px;  width: 105px;  height: 100px; margin: 0px auto; border: 1px solid #ddd;}
			#tabmenu>div{float : left; width : 100px; height : 50px; text-align : center; line-height:50px; font-size:1.1em}
			#tabmenu>div:nth-child(1){background : #00a7f0; color:white}
			#list1, #list2{width : 100%; height : 1500px; margin : 0px auto; margin-top:20px; border:1px solid #ddd}
			#list2{display : none;}
			.container {margin-top:200px; max-width: 1400px;}
			.col-lg-3{max-width: 200px;}
			.img-fluid{width:1225px;}
			a:link, a:hover, a:visited{text-decoration: none;}
			#sidebar-wrapper{width:200px;}
			#sidebar-top{text-align: left;  height: 50px;  line-height: 40px; font-size: 30px;}
			#sidebar-content a{text-align: left;}
			.col-lg-9  {flex: 0 0 90%; max-width: 75%; min-width: 992px;  margin: 22px 5px;} 
			section{width:1400px; margin: 0; padding:0;}
}
			
			
		</style>
		<script>
			$(function(){
				$("#tabmenu>div").on("click",function(){
					if(($(this).index() == 1)){
						$(this).css("background","#00a7f0").css("color","white")
						$("#tabmenu>div").not($(this)).css("background","white").css("border-bottom","1px solid #ddd").css("color","black")
						$("#list2").css("display","block")
						$("#list1").css("display","none")
					}
					else{
						$(this).css("background","#00a7f0").css("color","white")
						$("#tabmenu>div").not($(this)).css("background","white").css("border-bottom","1px solid #ddd").css("color","black")
						$("#list1").css("display","block")
						$("#list2").css("display","none")
					}
				})

			})
		</script>
	</head>
	<body>
		<%@ include file="header.jspf"%>
		
		
  <!-- Page Content -->
  <div id="listAll" class="container">
  		<%@ include file="sf_list_sidebar.jspf"%>

    <div class="row">

<!--       <div class="col-lg-3">

       	 <b class="list-group-item">여행목록</b>
        <div class="list-group">
          <a href="#" class="list-group-item">구트여행</a>
          <a href="#" class="list-group-item">Category 2</a>
          <a href="#" class="list-group-item">Category 3</a> 
        </div>

      </div> -->
      
       		<!-- Sidebar -->
    <div id="sidebar-wrapper">
      <div id="sidebar-top" class="sidebar-heading">TOUR LIST </div>
      <div id="sidebar-content" class="list-group list-group-flush">
      	<a href="#" class="list-group-item list-group-item-action">수학여행</a>
      	<a href="#" class="list-group-item list-group-item-action">현장학습</a>
        <a href="#" class="list-group-item list-group-item-action">가족여행</a>
        <a href="#" class="list-group-item list-group-item-action">기업/일반 단체</a>
      </div>
    </div>
    
    	
      <!-- /.col-lg-3 -->

      <div class="col-lg-9">

        <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner" role="listbox">
            <div class="carousel-item active">
              <img class="d-block img-fluid" src="http://placehold.it/900x350" alt="First slide">
            </div>
            <div class="carousel-item">
              <img class="d-block img-fluid" src="http://placehold.it/900x350" alt="Second slide">
            </div>
            <div class="carousel-item">
              <img class="d-block img-fluid" src="http://placehold.it/900x350" alt="Third slide">
            </div>
          </div>
          <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>

        <div class="row">

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">Item One</a>
                </h4>
                <h5>30,000원</h5>
                <p class="card-text">남한산성과 수원화성 - 성남시, 수원시</p>
              </div>
              <div class="card-footer">
               <a href="#"><small class="text-muted">&#9825;</small></a> 
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">Item Two</a>
                </h4>
                <h5>-</h5>
                <p class="card-text">없음</p>
              </div>
              <div class="card-footer">
               <a href="#"><small class="text-muted">&#9825;</small></a> 
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">Item Three</a>
                </h4>
                <h5>-</h5>
                <p class="card-text">없음</p>
              </div>
              <div class="card-footer">
               <a href="#"><small class="text-muted">&#9825;</small></a> 
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">Item Four</a>
                </h4>
                <h5>-</h5>
                <p class="card-text">없음</p>
              </div>
              <div class="card-footer">
                <a href="#"><small class="text-muted">&#9825;</small></a> 
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">Item Five</a>
                </h4>
                <h5>$-</h5>
                <p class="card-text">없음</p>
              </div>
              <div class="card-footer">
                <small class="text-muted">&#9825;</small>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">Item Six</a>
                </h4>
                <h5>$-</h5>
                <p class="card-text">없음</p>
              </div>
              <div class="card-footer">
                <a href="#"><small class="text-muted">&#9825;</small></a> 
              </div>
            </div>
          </div>

        </div>
        <!-- /.row -->

      </div>
      <!-- /.col-lg-9 -->

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->
		<%@ include file="footer.jspf"%>
		
		
	</body>
</html>
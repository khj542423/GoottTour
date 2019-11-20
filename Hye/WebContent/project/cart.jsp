<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="cart.css" type="text/css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>


<script>
var check = false;

function changeVal(el) {
  var qt = parseFloat(el.parent().children(".qt").html());
  var price = parseFloat(el.parent().children(".price").html());
  var eq = Math.round(price * qt * 100000) / 100;
  
  el.parent().children(".full-price").html( eq + "원" );
  
  changeTotal();            
}

function changeTotal() {
  
  var price = 0;
  
  $(".full-price").each(function(index){
    price += parseFloat($(".full-price").eq(index).html());
  });
  
  price = Math.round(price * 100) / 100;
  /* var tax = Math.round(price * 0.05 * 100) / 100
  var shipping = parseFloat($(".shipping span").html()); */
  var fullPrice = Math.round((price) *100) / 100;
  
  if(price == 0) {
    fullPrice = 0;
  }

  
  $(".subtotal span").html(price);
  /* $(".tax span").html(tax); */
  $(".total span").html(fullPrice);
}

$(document).ready(function(){
  
  $(".remove").click(function(){
    var el = $(this);
    el.parent().parent().addClass("removed");
    window.setTimeout(
      function(){
        el.parent().parent().slideUp('fast', function() { 
          el.parent().parent().remove(); 
          if($(".product").length == 0) {
            if(check) {
              $("#cart").html("<h1>The shop does not function, yet!</h1><p>If you liked my shopping cart, please take a second and heart this Pen on <a href='https://codepen.io/ziga-miklic/pen/xhpob'>CodePen</a>. Thank you!</p>");
            } else {
              $("#cart").html("<h1>상품이 없습니다. 상품을 추가해주세요!</h1>");
            }
          }
          changeTotal(); 
        });
      }, 200);
  });
  
  $(".qt-plus").click(function(){
    $(this).parent().children(".qt").html(parseInt($(this).parent().children(".qt").html()) + 1);
    
    $(this).parent().children(".full-price").addClass("added");
    
    var el = $(this);
    window.setTimeout(function(){el.parent().children(".full-price").removeClass("added"); changeVal(el);}, 150);
  });
  
  $(".qt-minus").click(function(){
    
    child = $(this).parent().children(".qt");
    
    if(parseInt(child.html()) > 1) {
      child.html(parseInt(child.html()) - 1);
    }
    
    $(this).parent().children(".full-price").addClass("minused");
    
    var el = $(this);
    window.setTimeout(function(){el.parent().children(".full-price").removeClass("minused"); changeVal(el);}, 150);
  });
  
  window.setTimeout(function(){$(".is-open").removeClass("is-open")}, 1200);
  
  $(".btn").click(function(){
    check = true;
    $(".remove").click();
  });
});
</script>
</head>
<body>
<header id="site-header">
        <div class="container">
            <h1>Shopping cart <span>[</span> <em><a href="https:" target="_blank">CodePen Challange</a></em> <span class="last-span is-open">]</span></h1>
        </div>
    </header>
    <div class="container">
        <section id="cart"> 
            <article class="product">
                <header>
                    <a class="remove">
                        <img src="../image/jejuMain.jpg" alt="">
                        <h3 style="text-align:center;">상품삭제</h3>
                    </a>
                </header>
                <div class="content">
                    <h1>제주도</h1>
					외돌개, 비자림, 다희연, 산굼부리, 협재해변, 올레7코스로 이어지는 3일 알찬코스! <br/>연인, 가족과 행복한 제주도 여행!
                    <div title="You have selected this product to be shipped in the color yellow." style="top: 0" class="color yellow"></div>
                    <div style="top: 43px" class="type small">2019-11-19</div>
                </div>
                <footer class="content">
                	<span class="qt-people">인원 : </span>
                    <span class="qt-minus">-</span>
                    <span class="qt">1</span>
                    <span class="qt-plus">+</span>
                    <h2 class="full-price">
                        29,000원
                    </h2>
                    <h2 class="price">
                        29,000원
                    </h2>
                </footer>
            </article>
       <!--      <article class="product">
                <header>
                    <a class="remove">
                        <img src="../image/seoul.jpg" alt="">
                        <h3>Remove product</h3>
                    </a>
                </header>
                <div class="content">
                    <h1>Lorem ipsum dolor</h1>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta, numquam quis perspiciatis ea ad omnis provident laborum dolore in atque.
                    <div title="You have selected this product to be shipped in the color red." style="top: 0" class="color red"></div>
                    <div title="You have selected this product to be shipped sized Small."  style="top: 43px" class="type small">Small</div>
                </div>
                <footer class="content">
                    <span class="qt-minus">-</span>
                    <span class="qt">1</span>
                    <span class="qt-plus">+</span>
                    <h2 class="full-price">
                        110,000원
                    </h2>
                    <h2 class="price">
                        110,000원
                    </h2>
                </footer>
            </article>
            <article class="product">
                <header>
                    <a class="remove">
                        <img src="../image/vivaldi.png" alt="">

                        <h3>Remove product</h3>
                    </a>
                </header>
                <div class="content">
                    <h1>Lorem ipsum dolor ipsdu</h1>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta, numquam quis perspiciatis ea ad omnis provident laborum dolore in atque.
                    <div title="You have selected this product to be shipped in the color blue." style="top: 0" class="color blue"></div>
                    <div style="top: 43px" class="type small">Large</div>
                </div>
                <footer class="content">                  
                    <span class="qt-minus">-</span>
                    <span class="qt">1</span>
                    <span class="qt-plus">+</span>
                    <h2 class="full-price">
                        99,000원
                    </h2>
                    <h2 class="price">
                        99,000원
                    </h2>
                </footer>
            </article> -->
        </section>
    </div>
    <footer id="site-footer">
        <div class="container clearfix">
            <div class="left">
                <h2 class="subtotal" style="border-bottom:1px solid black;">총 금액: <span>29,000</span>원</h2>
               <!--  <h3 class="tax">Taxes (5%): <span>8.2</span>원</h3>
                <h3 class="shipping">Shipping: <span>5.00</span>원</h3> -->
            </div>
            <div class="right">
                <h1 class="total">Total: <span>29,000</span>원</h1>
                <a class="btn" style="font-weight:bold">예약하기</a>
            </div>
        </div>
    </footer>
</body>
</html>
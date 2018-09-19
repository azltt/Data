﻿<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<meta charset="utf-8" />
		<title>商城</title>
		<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/img/icon.ico"/>
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/index.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/store.css"/>		
		<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
	<body>
		<!--导航条-->
		<div class="header container">
			<div class="row">
				<h1 class="logo pull-left"><a href="index.jsp">logo</a></h1>				
				<div class="icons nav pull-right">
					<a href="#" class="hidden-xs"><span class="glyphicon glyphicon-search"></span></a>
					<div class="shopAll">
						<a href="#"><span class="shopCart glyphicon glyphicon-shopping-cart"></span></a>
						<div class="shopMarket">
							<h2>您的购物车里没有商品</h2>
						</div>
					</div>						
					<a href="#"><span class="glyphicon glyphicon-user"></span></a>
					<a href="#"><span class="glyphicon glyphicon-align-justify visible-xs-inline-block"></span></a>
				</div>				
				<div class="clearfix visible-xs"></div>				
				<nav class="nav menu">
					<div class="drow-menu">
						<ul class="menu-ul">
							<li><a href="#">OnePlus5</a></li>
							<li><a href="${pageContext.request.contextPath}/store">商城</a></li>
							<li><a href="${pageContext.request.contextPath}/service">服务</a></li>
							<li><a href="#">博客</a></li>
							<li><a href="#">论坛</a></li>
						</ul>
						<div class="showMenu" style="display: none;">
							<span class="spanFont glyphicon glyphicon-chevron-up"></span>
						</div>
						<form class="search">
							<input type="text" placeholder="搜索您的商品名称" class="col-xs-11" />
							<i class="glyphicon glyphicon-search" class="col-xs-1"></i>
						</form>
					</div>	
				</nav>	
				
				<!--<form class="otherSearch">
					<div class="inputBox">
						<a href="#" class="searchPic glyphicon glyphicon-search"></a>
						<input type="text" class="searchInput" placeholder="搜索您的商品名称" />
							
					</div>
					<div class="searchCon">
						<li><a href="#">a</a></li>
						<li><a href="#">b</a></li>
						<li><a href="#">c</a></li>
						<li><a href="#">d</a></li>
						<li><a href="#">e</a></li>
					</div>	
				</form>-->
			</div>	
		</div>	
		<div class="Reapt" style="display: none;"></div>		
		<script type="text/javascript">
			$(function () {
            	$(".shopMarket").hide();
		        $(".shopAll").hover(function () {
		        	$(".shopMarket").fadeIn(500);
		        	}, function () {
		        	$(".shopMarket").fadeOut(500);
		    	});
		    	// 鼠标移动到list的div上的时候里面的div不会被隐藏
		    	$(".shopMarket").hover(function () {
		       		$(".shopMarket").fadeIn(500);
		       	 	}, function () {
		        	$(".shopMarket").fadeOut(500);
		    	});
				$(".glyphicon-align-justify").click(function(){
					if(($(".header nav").is(":hidden")) && ($(".search").is(":hidden"))){
						$(".menu-ul").show();
						$(".search").show();
						$(".showMenu").hide();
						$(".header nav").slideDown();
//						$("body").css("position","fixed");
						$("body").css("overflow","hidden");
						$(".Reapt").show();
					}
					else{
						$(".header nav").slideUp();
						$(".Reapt").hide();
						$("body").css("overflow","initial");
					}	
				});	
				$(".search").click(function(){
					$(".spanFont").removeClass("glyphicon-chevron-down");
					$(".spanFont").addClass("glyphicon-chevron-up");
					$(".showMenu").css("display","block");
					$(".menu-ul").slideUp();					
				});
				$(".showMenu").click(function(){
					$(".spanFont").toggleClass("glyphicon-chevron-up");
	 				$(".spanFont").toggleClass("glyphicon-chevron-down");
	 				$(".showMenu").delay(200).hide(0);
					$(".menu-ul").slideDown();
				});
			});
		</script>
		
		
		
		<div class="store1">
			<div class="storeAll">	
				<div class="store1Con">
					<div class="store1Part store1Part1">
						<a href="#">
							<span class=""></span>
							<h2>手机</h2>
						</a>
					</div>
					<div class="store1Part store1Part2">
						<a href="#">
							<span class=""></span>
							<h2>耳机/音箱</h2>
						</a>
					</div>
					<div class="store1Part store1Part3">
						<a href="#">
							<span class=""></span>
							<h2>壳/后盖/膜</h2>
						</a>
					</div>
					<div class="store1Part store1Part4">
						<a href="#">
							<span class=""></span>
							<h2>适配器/数据线</h2>
						</a>
					</div>
					<div class="store1Part store1Part5">
						<a href="#">
							<span class=""></span>
							<h2>套装</h2>
						</a>
					</div>
					<div class="store1Part store1Part6">
						<a href="#">
							<span class=""></span>
							<h2>生活馆</h2>
						</a>
					</div>
					<div class="clearfix"></div>
				</div>	
			</div>
		</div>
		<div class="store1Nav">
				<div class="store1NavOne">
					<div>
						<a href="">手机</a>
					</div>
					<div>
						<a href="">耳机/音箱</a>
					</div>
					<div>
						<a href="">壳/后盖/膜</a>
					</div>
					<div>
						<a href="">适配器/数据线</a>
					</div>
					<div>
						<a href="">套装</a>
					</div>
					<div>
						<a href="">生活馆</a>
					</div>
					<!--<a href="#"><span class="store1NavTwo glyphicon glyphicon-menu-down"></span></a>-->
				</div>
				<a href="#" class="store1NavTwo"><span class="glyphicon glyphicon-menu-down"></span></a>
		</div>
		
		
		<div class="store2">
			<span class="store4Pic">
				<a class="store4Big" href="#"></a>
				<a class="store4Small" href="#">
					<img src="${pageContext.request.contextPath}/img/store3.2.1.small.jpg" />
				</a>
			</span>
		</div>
		
				
		<!--store4 begin-->
		<div class="store4">
			<div class="storeAll">
				<div class="store4One">
					<h3>OnePlus 5 热销配件</h3>
					<div class="store4Con">
						<div class="store4Part">
							<a href="#">
								<img src="${pageContext.request.contextPath}/img/store3.4.1.png" />
								<h2>OnePlus 5 个性保护壳</h2>
								<span>¥&nbsp;99</span>
							</a>
						</div>
						<div class="store4Part">
							<a href="#">
								<img src="${pageContext.request.contextPath}/img/store3.4.2.png" />
								<h2>一加银耳 2</h2>
								<span>¥&nbsp;99</span>
							</a>
						</div>
						<div class="store4Part">
							<a href="#">
								<img src="${pageContext.request.contextPath}/img/store3.4.3.png" />
								<h2>一加车载闪充</h2>
								<span>¥&nbsp;99</span>
							</a>
						</div>
						<div class="store4Part">
							<a href="#">
								<img src="${pageContext.request.contextPath}/img/store3.4.4.png" />
								<h2>OnePlus 5 芳纶纤维全包保护壳</h2>
								<span>¥&nbsp;99</span>
							</a>
						</div>
						<div class="store4Part">
							<a href="#">
								<img src="${pageContext.request.contextPath}/img/store3.4.4.png" />
								<h2>OnePlus 5 芳纶纤维全包保护壳</h2>
								<span>¥&nbsp;99</span>
							</a>
						</div>
						<div class="store4Part">
							<a href="#">
								<img src="${pageContext.request.contextPath}/img/store3.4.4.png" />
								<h2>OnePlus 5 芳纶纤维全包保护壳</h2>
								<span>¥&nbsp;99</span>
							</a>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				
				<div class="store4Two">
					<h3>一加生活周边</h3>
					<div class="store4Con">
						<div class="store4Part">
							<a href="#">
								<img src="${pageContext.request.contextPath}/img/store3.4.5.png" />
								<h2>一加旅行双肩包</h2>
								<span>¥&nbsp;99</span>
							</a>
						</div>
						<div class="store4Part">
							<a href="#">
								<img src="${pageContext.request.contextPath}/img/store3.4.6.png" />
								<h2>出行套装</h2>
								<span>¥&nbsp;99</span>
							</a>
						</div>
						<div class="store4Part">
							<a href="#">
								<img src="${pageContext.request.contextPath}/img/store3.4.7.png" />
								<h2>一加真皮钱包</h2>
								<span>¥&nbsp;99</span>
							</a>
						</div>
						<div class="store4Part">
							<a href="#">
								<img src="${pageContext.request.contextPath}/img/store3.4.8.png" />
								<h2>一加旅行袋</h2>
								<span>¥&nbsp;99</span>
							</a>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>
		<!--store4 end-->
		
		<!--section7 begin-->
    	<div class="footer">
    		<div class="footContent">
    			<div class="footer-top clearfix">
    				<div class="footer-left col-lg-8 col-md-8 col-sm-8 col-xs-12">    	
    					<div class="leftContent col-lg-4 col-md-4 col-sm-4 col-xs-12">
    						<p id="first">
    							一加产品
    							<span class="font glyphicon glyphicon-chevron-down"></span>
    							<!--<span class="font glyphicon glyphicon-chevron-up hidden"></span>-->
    						</p>
    						<ul class="leftDown" id="leftDown1">
    							<li><a href="#">OnePlus 5</a></li>
    							<li><a href="#">一加手机 3T</a></li>
    							<li><a href="#">一加手机 3</a></li>
    						</ul>
    					</div>
    					<div class="leftContent col-lg-4 col-md-4 col-sm-4 col-xs-12">
    						<p id="two">关于一加<span class="font glyphicon glyphicon-chevron-down"></span></p>
    						<ul class="leftDown" id="leftDown2">
    							<li><a href="#">了解一加</a></li>
    							<li><a href="#">加入一加</a></li>
    							<li><a href="#">H2OS</a></li>
    						</ul>
    					</div>
    					<div class="leftContent col-lg-4 col-md-4 col-sm-4 col-xs-12">
    						<p id="three">服务支持<span class="font glyphicon glyphicon-chevron-down"></span></p>
    						<ul class="leftDown" id="leftDown3">
    							<li><a href="#">自助服务</a></li>
    							<li><a href="#">技术支持</a></li>
    							<li><a href="#">售后服务</a></li>
    							<li><a href="#">一加加多保</a></li>
    						</ul>
    					</div>
    				</div>	
    				<div class="footer-right col-lg-4 col-md-4 col-sm-4 col-xs-12">
    					<div class="rightContent">
    						<p><span>客服电话：</span>400-888-1111</p>
    						<p class="pright"><span>Change location</span><a href="#"><img src="${pageContext.request.contextPath}/img/seciton6.2.png" class="img-responsive"/></a></p>
    						<button type="button" class="btn-online">在线客服</button>
    					</div>
    				</div>
    			</div>
    		</div>
    		<div class="footer-bottom">
    			<div class="changbg">
    				<div class="footContent">
    					<p class="fifth fifth1"><img src="${pageContext.request.contextPath}/img/section6.4.png"/>粤公网安备 44030402000178号</p>	
    					<span class="bottomFirst">© 2013-2017 OnePlus. All Rights Reserved. <a href="#">(粤ICP备13088308号-1) </a></span>
						<p class="other2 clearfix">备案号：<a href="#">粤ICP备13088308号-1</a></p>
    					<p class="fifth fifth3"><img src="${pageContext.request.contextPath}/img/section6.4.png"/>粤公网安备 44030402000178号</p>	
    					<span class="secondImg img1"><a href="#"><img src="${pageContext.request.contextPath}/img/section6.2.png" /></a></span>
    					<span class="fourImg fourImg1">Change location<a href="#"><img src="${pageContext.request.contextPath}/img/seciton6.2.png" /></a></span>
    					<span class="secondImg img2"><a href="#"><img src="${pageContext.request.contextPath}/img/section6.3.png" /></a></span>
    					<p class="other1 clearfix">备案号：<a href="#">粤ICP备13088308号-1</a></p>
    					<p class="fifth fifth2"><img src="${pageContext.request.contextPath}/img/section6.4.png"/>粤公网安备 44030402000178号</p>	
    					<div class="last clearfix"></div>
    				</div>
    			</div>
    		</div>
    	</div>
    	<!--section7 end-->
    	<!--section7 jQuery begin-->
    	<script type="text/javascript">
    		$(function(){
    			$("#first").click(function(){
//  				console.log(0);
    				$("#leftDown1").slideToggle(800);
    				$("#first span").toggleClass("glyphicon-chevron-down");
	 				$("#first span").toggleClass("glyphicon-chevron-up");
//  				$("#first span").removeClass("glyphicon-chevron-down");
//  				$("#first span").addClass("glyphicon-chevron-up");
//  				$(this).children('.glyphicon-chevron-down').toggleClass('hidden');
//  				$(this).children('.glyphicon-chevron-up').toggleClass('hidden');
    			})
    			$("#two").click(function(){
    				$("#leftDown2").slideToggle(800);
    				$("#two span").toggleClass("glyphicon-chevron-down");
	 				$("#two span").toggleClass("glyphicon-chevron-up");
    			})
    			$("#three").click(function(){
    				$("#leftDown3").slideToggle(800);
    				$("#three span").toggleClass("glyphicon-chevron-down");
	 				$("#three span").toggleClass("glyphicon-chevron-up");
    			})
    		})
    	</script>
    	<!--section7 jQuery end-->
	</body>
</html>

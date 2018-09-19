﻿<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<meta charset="utf-8" />
		<title>一加手机 - 不将就</title>
		<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/img/icon.ico"/>
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/index.css"/>		
		<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
	</head>
	<body>
		<!--导航条-->
		<div class="header container">
			<div class="row">
				<h1 class="logo pull-left"><a href="#">logo</a></h1>				
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
					<a href="${pageContext.request.contextPath}/logout">退出</a>
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
		
		<!--导航条下面的图片-->
		<div class="section3">
			<div class="container-fluid">
				<div class="row two">
					<h1 class="pic"><a href="#"></a></h1>
				</div>
			</div>
		</div>
		
		<!--section3 begin-->
		<div class="section3 container-fluid">
			<div class="row">
				<div class="imgOne col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<h4 style="color:#fff">OnePlus 5 个性保护壳</h4>
					<a href="#" class="aOne"></a>
				</div>
				<div class="imgTwo col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<h4 style="color:#fff">花样晒单赢好礼</h4>
					<a href="#" class="aTwo"></a>
				</div>
				<div class="imgThree col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<h4 style="color:#fff">极速闪充的黄金搭档</h4>
					<a href="#" class="aThree"></a>
				</div>
			</div>
		</div>
		<!--section3 end-->
		
			
		<!--section4 begin-->
		<div class="section4">
			<div class="container-fluid">
				<div class="row four">
					<img src="${pageContext.request.contextPath}/img/section3.1.big.jpg" class="img-responsive" id="imgFirst1"/>
					<img src="${pageContext.request.contextPath}/img/section3.1.jpg" style="width: 100%;" id="imgFirst2"/>
					<div class="odop-text" style="color:#fff">
        	            <div class="h3">Shot on OnePlus</div>
        	            <div class="h4"></div>
        	            <button type="button" class="opod-btn">我要参加</button>
         	       </div>
				</div>
			</div>
		</div>
    	<!--section4 end-->
    	
    	<!--section5 begin-->
    	<div class="section5 bottom-part">
    		<div class="inner">
    			<div class="innerContent">
    				<a><img src="${pageContext.request.contextPath}/img/section5.1.jpg" /></a>
    				<div class="content">
    					<h4>博客</h4>
    					<p>OnePlus 又又又排队了，隔着屏幕都能感受到的热情</p>
    				</div>
    			</div>
    			<div class="innerContent">
    				<a><img src="${pageContext.request.contextPath}/img/section5.2.jpg" /></a>
    				<div class="content">
    					<h4>新闻</h4>
    						<p>OnePlus 5 的媒体评测汇总</p>
    				</div>
    			</div>
    			<div class="innerContent">
    				<a><img src="${pageContext.request.contextPath}/img/section5.3.jpg" /></a>
    				<div class="content">
    					<h4>视频</h4>
    					<p>OnePlus 5 新品发布会</p>
    				</div>
    			</div>
    		</div>
    	</div>
    	<!--section5 end-->
    	
    	<!--section6 begin-->
    	<div class="section6">
    		<div class="container part">
    			<!--<div class="row">-->
    				<div class="partContent col-lg-3 col-md-3 col-sm-3 col-xs-6">
    					<a href="#">
    						<h1 class="smallicon1"></h1>
    						<span>1小时售后派单响应</span>
    					</a>
    				</div>
    				<div class="partContent col-lg-3 col-md-3 col-sm-3 col-xs-6">
    					<a href="#">
    						<h1 class="smallicon2"></h1>
    						<span>7天无理由退货</span>
    					</a>
    				</div>
    				<div class="partContent col-lg-3 col-md-3 col-sm-3 col-xs-6">
    					<a href="#">
    						<h1 class="smallicon3"></h1>
    						<span>15天退货保障</span>
    					</a>
    				</div>
    				<div class="partContent col-lg-3 col-md-3 col-sm-3 col-xs-6">
    					<a href="#">
    						<h1 class="smallicon4"></h1>
    						<span>30天退货保障</span>
    					</a>
    				</div>
    			<!--</div>-->
    		</div>
    	</div>
    	<!--section6 end-->
    	
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

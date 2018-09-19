﻿<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<meta charset="utf-8" />
		<title>一加手机客户服务中心</title>
		<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/img/icon.ico"/>
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/index.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/service.css"/>	
		<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
	</head>
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
							<li><a href="${pageContext.request.contextPath}/index">OnePlus5</a></li>
							<li><a href="${pageContext.request.contextPath}/store">商城</a></li>
							<li><a href="#">服务</a></li>
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
		
		
		<!--service1 begin-->
		<section class="service1">
			<h2>OnePlus Service</h2>
		</section>
		<!--service1 end-->
		
		<!--service2 begin-->
		<section class="service2">
			<div class="container service2Con">
				<div class="serviceConone">
					<div class="row">
						<div class="sectiontwo twoone col-sm-3 col-xs-6">
							<a href="#">
								<span></span>
								<h2>防伪查询</h2>
							</a>
						</div>
						<div class="sectiontwo twotwo col-sm-3 col-xs-6">
							<a href="#">
								<span></span>
								<h2>一加加多保查询</h2>
							</a>
						</div>
						<div class="sectiontwo twothree col-sm-3 col-xs-6">
							<a href="#">
								<span></span>
								<h2>资源下载</h2>
							</a>
						</div>
						<div class="sectiontwo twofour col-sm-3 col-xs-6">
							<a href="#">
								<span></span>
								<h2>更多服务</h2>
							</a>
						</div>
					</div>
				</div>
				
				<!--重点-->
				<div class="serviceContwo">
					<div class="row">
						<div class="Bg col-sm-6">							
							<a href="#">
								<span class="BgFirst1"></span>
								<div class="BgCon BgCon1">
									<span></span>
									<h2>一加加多宝</h2>
								</div>
							</a>
						</div>
						<div class="Bg BgTwo col-sm-6">
							<a href="#">
								<span class="BgFirst2"></span>
								<div class="BgCon BgCon2">
									<span></span>
									<h2>一加加多宝</h2>
								</div>
							</a>
						</div>
					</div>
				</div>
				
				<!--敲黑板-->
				<div class="slideBegin">
					<div id="myCarousel" class="carousel slide">
  		   				<!-- 轮播（Carousel）项目 -->		   
						<div class="carousel-inner Bg">							
							<a href="#" class="item active">
								<span class="BgFirst1"></span>
								<div class="BgCon BgCon1">
									<span></span>
									<h2>一加加多宝</h2>
								</div>
							</a>
							<a href="#" class="item">
								<span class="BgFirst2"></span>
								<div class="BgCon BgCon2">
									<span></span>
									<h2>一加加多宝</h2>
								</div>
							</a>
						</div>
						<!-- 轮播（Carousel）导航 -->
						<ol class="carousel-indicators" id="otherIndicators">
			      			<li data-target="#myCarousel" data-slide-to="0" class="active" id="otherli1"></li>
			      			<li data-target="#myCarousel" data-slide-to="1" id="otherli2"></li>
			   			</ol> 
					</div>
					<!-- 轮播（Carousel）指标 -->
					<a class="slideOpen slidePre" href="#myCarousel" data-slide="prev">&lsaquo;</a>
			   		<a class="slideOpen slideNext" href="#myCarousel" data-slide="next">&rsaquo;</a>
				</div>	 
			</div>
		</section>
		<!--service2 end-->
		
		<!--service3 begin-->
		<section class="service3">
			<div class="container servic3Con">
				<div class="threeConfirst">
					<div class="row">
						<h1>售后服务<span></span></h1>
						<h3>退、换货及维修，在这里可以帮到您。</h3>
					</div>
				</div>
				<div class="threeConTwo">
					<div class="row">
						<button type="button">
							<i class="glyphicon glyphicon-search"></i>
							查询
						</button>
					</div>
				</div>
				<div class="threeConThree">
					<div class="row">
						<div class="threePart threePartone col-sm-6">
							<h1>一加网购买</h1>
							<div class="threeHeight"><h2>一加官网购买产品的退换货、维修问题，进入您的个人中心获得帮助，也可以拨打一加服务电话 400-888-1111 联系我们。</h2></div>
							<img src="${pageContext.request.contextPath}/img/service3.2.png" />
							<a href="#">
								<span class="caret"></span>
								查看个人中心
							</a>
						</div>
						<div class="threePart threeParttwo col-sm-6">
							<h1>非官网购买</h1>
							<div class="threeHeight"><h2>非一加官网购买产品的退换货服务请联系您的购买平台，如需维修服务，请拨打一加服务电话 400-888-1111 联系我们。</h2></div>
							<img src="${pageContext.request.contextPath}/img/service3.3.png" />
							<a href="#">
								<span class="caret"></span>
								查看售后流程
							</a>
						</div>
					</div>
				</div>
				
				<div class="slideThreeCon">
					<div id="myCarouselother" class="carousel slide">
						<!-- 轮播（Carousel）项目 -->
						<div class="threeSlide3">
							<div class="carousel-inner">					
								<div class="threePart threePartone col-sm-6 col-xs-12 item active">
									<h1>一加网购买</h1>
									<div class="threeHeight"><h2>一加官网购买产品的退换货、维修问题，进入您的个人中心获得帮助，也可以拨打一加服务电话 400-888-1111 联系我们。</h2></div>
									<img src="${pageContext.request.contextPath}/img/service3.2.png" />
									<a href="#">
										<span class="caret"></span>
											查看个人中心
									</a>
								</div>
								<div class="threePart threeParttwo col-sm-6 col-xs-12 item">
									<h1>非官网购买</h1>
									<div class="threeHeight"><h2>非一加官网购买产品的退换货服务请联系您的购买平台，如需维修服务，请拨打一加服务电话 400-888-1111 联系我们。</h2></div>
									<img src="${pageContext.request.contextPath}/img/service3.3.png" />
									<a href="#">
										<span class="caret"></span>
										查看售后流程
									</a>
								</div>
							</div>
						</div>
						<!-- 轮播（Carousel）导航 -->
						<ol class="carousel-indicators" id="otherIndicators">
			      			<li data-target="#myCarouselother" data-slide-to="0" class="active" id="otherli1"></li>
			      			<li data-target="#myCarouselother" data-slide-to="1" id="otherli2"></li>
			   			</ol> 
					</div>
					<!-- 轮播（Carousel）指标 -->
					<a class="slideOpen slidePre" href="#myCarouselother" data-slide="prev">&lsaquo;</a>
		   			<a class="slideOpen slideNext" href="#myCarouselother" data-slide="next">&rsaquo;</a>
				</div>	
			</div>
		</section>
		<!--service3 end-->
		<div class="clearfix"></div>
		<!--service4 begin-->
		<section class="service4">
			<div class="container service4Con">
				<div class="fourConfirst">
					<div class="row fourConborder">
						<h2>常见问题</h2>						
						<form class="formCon">
							<input type="text" placeholder="请输入要搜索的内容" class="col-sm-10 col-xs-8"/>
							<a href=""><span class="col-sm-2 col-xs-2 glyphicon glyphicon-search"></span></a>
						</form>
					</div>
				</div>
				<div class="fourContwo">
					<div class="row">
						<ul class="fourPart fourPartone col-sm-6">
							<li>
								<a href="#"><span class="spanSize glyphicon glyphicon-menu-right"></span>电子发票</a>
							</li>
							<li>
								<a href="#"><span class="spanSize glyphicon glyphicon-menu-right"></span>纳税人识别号</a>
							</li>
							<li>
								<a href="#"><span class="spanSize glyphicon glyphicon-menu-right"></span>一加手机5性能如何？</a>
							</li>
							<li>
								<a href="#"><span class="spanSize glyphicon glyphicon-menu-right"></span>一加手机5是全金属设计吗？</a>
							</li>
							<li>
								<a href="#"><span class="spanSize glyphicon glyphicon-menu-right"></span>一加手机5【一加加多保】服务保障条款</a>
							</li>						
						</ul>
						<ul class="fourPart fourParttwo col-sm-6">
							<li>
								<a href="#"><span class="spanSize glyphicon glyphicon-menu-right"></span>未付款的订单会保存多久？</a>
							</li>
							<li>
								<a href="#"><span class="spanSize glyphicon glyphicon-menu-right"></span>一加商城支持哪些在线支付方式？</a>
							</li>
							<li>
								<a href="#"><span class="spanSize glyphicon glyphicon-menu-right"></span>什么情况下可以申请退换货？</a>
							</li>
							<li>
								<a href="#"><span class="spanSize glyphicon glyphicon-menu-right"></span>一加手机5包装清单有哪些？</a>
							</li>
							<li>
								<a href="#"><span class="spanSize glyphicon glyphicon-menu-right"></span>一加手机5可以在哪些渠道购买？</a>
							</li>
						</ul>																	
					</div>					
				</div>
				<div class="row">
					<div class="fourConthree">
						<a href="#"><span class="picSize glyphicon glyphicon-triangle-right"></span>查看全部问题</a>
					</div>
				</div>
			</div>
		</section>
		<!--service4 end-->
		
		<!--service5 begin-->
		<section class="service5">
			<div class="container service5Con">
				<div class="row">
					<h1>联系我们<span></span></h1>
				</div>
				<div class="service5Part">
				<div class="row">
					<div class="fivePart fivePartone col-sm-3 col-xs-6">
						<a href="#">
							<span></span>
							<h2>QQ</h2>
						</a>
					</div>
					<div class="fivePart fiveParttwo col-sm-3 col-xs-6">
						<a href="#">
							<span></span>
							<h2>微信</h2>
						</a>
					</div>
					<div class="fivePart fivePartthree col-sm-3 col-xs-6">
						<a href="#">
							<span></span>
							<h2>微博</h2>
						</a>
					</div>
					<div class="fivePart fivePartfour col-sm-3 col-xs-6">
						<a href="#">
							<span></span>
							<h2>400-888-1111</h2>
						</a>
					</div>
					</div>
				</div>
			</div>
		</section>
		<!--service5 end-->
		
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

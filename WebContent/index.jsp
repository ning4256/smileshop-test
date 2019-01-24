<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

<style type="text/css">
#lunbobox {
	margin-left: 240px;
	width: 1000px;
	height: 465px;
	position: relative;
}

.lunbo img {
	width: 100%;
	height: auto;
	position: absolute;
	top: 0px;
	left: 0px;
}

#lunbobox ul {
	width: 80px;
	position: absolute;
	bottom: 10px;
	right: 43%;
	z-index: 5;
}

#lunbobox ul li {
	cursor: pointer;
	width: 10px;
	height: 4px;
	border: 1px solid #cccccc;
	float: left;
	list-style: none;
	background: #cccccc;
	text-align: center;
	margin: 0px 5px 0px 0px;
}

#lunbobox ul li:last-child {
	margin-right: 0px;
}

#toleft {
	display: none;
	width: 30px;
	height: 100px;
	font-size: 40px;
	line-height: 100px;
	text-align: center;
	color: #f4f4f4;
	position: absolute;
	top: 100px;
	left: 12px;
	cursor: pointer;
	z-index: 99;
	opacity: 0.4;
}

#toright {
	display: none;
	width: 30px;
	height: 100px;
	font-size: 40px;
	line-height: 100px;
	text-align: center;
	color: #f4f4f4;
	position: absolute;
	top: 100px;
	right: 0px;
	cursor: pointer;
	z-index: 99;
	opacity: 0.4;
}
</style>

<meta charset="UTF-8">
<title>小米商城</title>
<link rel="stylesheet" href="./css/bootstrap.min.css">

<script src="./js/jquery2.1.4.min.js"></script>
<script src="./src/bootstrap.min.js"></script>
<!--告诉IE浏览器以最高级模式渲染当前网页-->
<meta http-equiv="x-ua-compatible" content="IE=edge">
<!--meta name属性主要用于页面的关键字和描述，content是写给搜索引擎看的，-->
<meta name="keywords" content="小米，小米商城">
<meta name="description" content="小米,小米8,小米7,红米5Plus,小米MIX2,小米商城">
<!--<meta name="viewport" content="width=1226">-->
<link rel="icon" href="imgs/logo.png">
<link type="text/css" rel="stylesheet" href="css/index.css">

</head>
<body>


	<!--  1 顶部导航栏    -->
	<div class="topbar">
		<div class="container1">
			<!--导航-->
			<div class="topbar-nav">
				<!-- 2.行内元素 特点：在一行内展示，不能设置宽高，它的宽高时根据内容去填充 (a span )-->
				<a href="#">小米商城</a> <span class="sep">|</span> <a href="#">MIUI</a>
				<span class="sep">|</span> <a href="#">IoT</a> <span class="sep">|</span>
				<a href="#">云服务</a> <span class="sep">|</span> <a href="#">金融</a> <span
					class="sep">|</span> <a href="#">有品</a> <span class="sep">|</span>
				<a href="#">小爱开发平台</a> <span class="sep">|</span> <a href="#">政企服务</a>
				<span class="sep">|</span> <a href="#">下载app</a> <span class="sep">|</span>
				<a href="#">Select Region</a>
			</div>

			<!--购物车-->
			<div class="topbar-car">
				<a href="#"> <span class="icon"></span> <span class="shop-car">购物车(0)</span>
				</a>
			</div>

			<!--用户信息-->
			<div class="topbar-info">
				<a href="./login.jsp">登录</a> <span class="sep">|</span> <a
					href="./register.jsp">注册</a> <span class="sep">|</span> <a href="#">消息通知</a>
				<span class="sep" style="color: white;">在线人数：<%=application.getAttribute("onLineCount")%></span>
			</div>
		</div>
	</div>

	<!--2      导航栏     header-->
	<div class="header">
		<div class="container2">
			<!--小米logo-->
			<div class=" header-logo">
				<a href="#"> <img class="logo" src="./imgs/logo.png"
					alt="小米logo">
				</a>
			</div>
			<!--导航-->
			<div class="header-nav">
				<ul class="nav-list">
					<li><a href="#">小米手机</a></li>
					<li><a href="#">红米</a></li>
					<li><a href="#">电视</a></li>
					<li><a href="#">笔记本</a></li>
					<li><a href="#">空调</a></li>
					<li><a href="#">新品</a></li>
					<li><a href="#">路由器</a></li>
					<li><a href="#">智能硬件</a></li>
					<li><a href="#">服务</a></li>
					<li><a href="#">社区</a></li>
				</ul>
			</div>
			<!--搜索框-->
			<div class="header-search">
				<label for="search"></label> <input class="search-text" type="text"
					name="search" id="search"> <span class="hot-words">
					<a href="#">小米8 </a> <a href="#">小米MIX2S </a>
				</span> <input class="search-submit" type="submit" value="" id="submit">
			</div>
		</div>
	</div>
	<!----------- 3    中心内容区域 center-content------start-------->
	<div class="center-content">
		<div class="container3">
			<!--中心内容选购去分 上下两部分-->
			<div class="up-content">
				<!--内容列表-->
				<div class="list-content">
					<ul>
						<li><a href="#">手机&nbsp;电话卡</a><span>&gt;</span></li>
						<li><a href="#">电视&nbsp;盒子</a><span>&gt;</span></li>
						<li><a href="#">笔记本&nbsp;平板</a><span>&gt;</span></li>
						<li><a href="#">家电&nbsp;插电板</a><span>&gt;</span></li>
						<li><a href="#">出行&nbsp;穿戴</a><span>&gt;</span></li>
						<li><a href="#">智能&nbsp;路由器</a><span>&gt;</span></li>
						<li><a href="#">电源&nbsp;配件</a><span>&gt;</span></li>
						<li><a href="#">健康&nbsp;儿童</a><span>&gt;</span></li>

					</ul>
				</div>
				<!--图片展示-->












				<div class="photo-show">



					<div class="middle_right">
						<div id="lunbobox">
							<div id="toleft" style="display: block;">&lt;</div>
							<div class="lunbo">
								<a href="####" style="display: none;"><img
									src="./src/2019-home.jpg"></a> <a href="####"
									style="display: none;"><img src="./src/allopen-home.jpg"></a>
								<a href="####" style="display: none;"><img
									src="./src/online-home.jpg"></a> <a href="####"
									style="display: none;"><img src="./src/PEBT 5.0-home.jpg"></a>
								<a href="####" style="display: inline;"><img
									src="./src/true.jpg"></a>
							</div>
							<div id="toright" style="display: block; opacity: 0.3;">&gt;</div>
							<ul>
								<li
									style="background: rgb(204, 204, 204); border: 1px solid rgb(255, 255, 255);"></li>
								<li
									style="background: rgb(204, 204, 204); border: 1px solid rgb(255, 255, 255);"></li>
								<li
									style="background: rgb(204, 204, 204); border: 1px solid rgb(255, 255, 255);"></li>
								<li
									style="background: rgb(204, 204, 204); border: 1px solid rgb(255, 255, 255);"></li>
								<li
									style="background: rgb(153, 153, 153); border: 1px solid rgb(255, 255, 255);"></li>
							</ul>
							<span></span>
						</div>
					</div>
				</div>
			</div>
			<div class="down-content">
				<!--down-content 分为2个区域-->



				<input type='hidden' value='1' id='goodstypeid'>
				<div class='container' style='margin-top: 50px'>
					<div class='row' id='goods'>
						<div class='panel panel-default outer'>
							<div class='panel-body inner-img'>
								<a href='jsp/detail.jsp?goodsid=1'> <img
									src='imgs/flash3.png' class='img-tunmnail goodsImg'
									style='border: 0; height: 100%;' alt=''>

								</a>

							</div>

							<div class='panel-footer inner-footer'>
								<div style='float: left;'>
									<br /> RMB:280
								</div>
								<div style='float: right;' class='add'>
									<img id='addimg0' src='image/add.png'
										onmouseover='addImg("addimg0","imgs/add2.png")'
										onmouseout='addImg("addimg0","imgs/add.png")'
										onclick='addCart("+good.g_id+")' alt=''>

								</div>

							</div>

						</div>

					</div>




				</div>
				<div class="down-2">
					<!--style="height: 170px ;width: 314px"-->
					<ul>
						<li><a href="#"><img src="imgs/小米8青春版.jpg"></a></li>
						<li><a href="#"><img src="imgs/红米6.jpg"></a></li>
						<li><a href="#"><img src="imgs/小米净水器.jpg"></a></li>
					</ul>
				</div>

			</div>
		</div>
	</div>
	<!-----------4 闪购区域-------------->
	<div class="flash-shop">
		<!--分为上下两部分-->
		<div class="container4">

			<div class="flash-up">
				<div class="xiao-mi-flash">小米闪购</div>
				<div class="scroll-bar">
					<a href="#"><img src="imgs/scroll-bar.png" alt="滚动闪购图片"></a>
				</div>
			</div>

			<div class="flash-down">
				<ul>
					<li><a href="#"><img src="imgs/flash1.png"></a></li>
					<li><a href="#"><img src="imgs/flash2.png"></a></li>
					<li><a href="#"><img src="imgs/flash3.png"></a></li>
					<li><a href="#"><img src="imgs/flash4.png"></a></li>
					<li><a href="#"><img src="imgs/flash5.png"></a></li>
				</ul>
			</div>
		</div>
		<!-- 5 右侧固定栏-->
		<div class="fixed-nav">
			<ul>
				<li><div class='fixed-0'></div>
					<p>手机app</p></li>
				<li><div class='fixed-1'></div>
					<p>个人中心</p></li>
				<li><div class='fixed-2'></div>
					<p>联系客服</p></li>
				<li><div class='fixed-3'></div>
					<p>购物车</p></li>
				<li><div class='fixed-4'></div>
					<p>返回顶部</p></li>

			</ul>
		</div>
		<!-- 分页器 -->
		<div>
			<c:forEach begin="0" end="${page.totalPage-1}" varStatus="status">

				<c:if
					test="${status.count*page.count-page.start<=30 && status.count*page.count-page.start>=-10}">
					<li
						<c:if test="${status.index*page.count==page.start}">class="disabled"</c:if>>
						<a href="?page.start=${status.index*page.count}"
						<c:if test="${status.index*page.count==page.start}">class="current"</c:if>>${status.count}</a>
					</li>
				</c:if>
			</c:forEach>

		</div>







		<!----6------售后部分------------->
		<div class="after-sale">
			<!--分为上下两个部分-->
			<div class="after-sale-up">
				<ul>

					<li>
						<div class='sale-up-1'></div>
						<p>
							预约维修服务<span class="sep">|</span>
						</p>
					</li>

					<li><div class='sale-up-2'></div>
						<p>
							7天无理由退货<span class="sep">|</span>
						</p></li>

					<li><div class='sale-up-3'></div>
						<p>
							15天免费换货<span class="sep">|</span>
						</p></li>

					<li><div class='sale-up-4'></div>
						<p>
							满15元包邮<span class="sep">|</span>
						</p></li>

					<li><div class='sale-up-5'></div>
						<p>520余家售后网点</p></li>

				</ul>
			</div>
			<!--下-->
			<div class="after-sale-center">
				<div class="a1">
					<ul>
						<li class="li-a1"><a href="#">帮助中心</a></li>
						<li><a href="#">账户管理</a></li>
						<li><a href="#">购物指南</a></li>
						<li><a href="#">订单操作</a></li>
					</ul>
				</div>
				<div class="a2">
					<ul>
						<li class="li-a2"><a href="#">服务支持</a></li>
						<li><a href="#">售后政策</a></li>
						<li><a href="#">自主服务</a></li>
						<li><a href="#">相关下载</a></li>
					</ul>
				</div>
				<div class="a3">
					<ul>
						<li class="li-a3"><a href="#">线下门店</a></li>
						<li><a href="#">小米之家</a></li>
						<li><a href="#">服务网点</a></li>
						<li><a href="#">授权体验店</a></li>
					</ul>
				</div>
				<div class="a4">
					<ul>
						<li class="li-a4"><a href="#">关于小米</a></li>
						<li><a href="#">了解小米</a></li>
						<li><a href="#">加入小米</a></li>
						<li><a href="#">投资者关系</a></li>
					</ul>
				</div>
				<div class="a5">
					<ul>
						<li class="li-a5"><a href="#">关注我们</a></li>
						<li><a href="#">新浪微博</a></li>
						<li><a href="#">官方微信</a></li>
						<li><a href="#">联系我们</a></li>
					</ul>
				</div>
				<div class="a6">
					<ul>
						<li class="li-a6"><a href="#">特色服务</a></li>
						<li><a href="#">F码通道</a></li>
						<li><a href="#">礼物码</a></li>
						<li><a href="#">防伪查询</a></li>
					</ul>
				</div>
				<div class="a7">

					<ul>
						<li class="li-a7"><p>400-100-5678</p></li>
						<li><p>周一至周日 8:00-18:00</p></li>
						<li class="li-a7-1"><p>（仅收市话费）</p></li>
						<li class="li-a7-2"><span class="sale-phone"></span></li>
					</ul>
				</div>

			</div>
		</div>
		<!------------------------最后部分---------------------------->
		<div class="after-sale-down">
			<div class="page-bottom">
				<!--logo-->
				<div class="page-bottom-logo">
					<a href="#"> <img class="logo" src="./imgs/logo.png"
						alt="小米logo" style="vertical-align: middle">
					</a>
				</div>
				<!--第一行信息-->
				<div class="page-bottom-info-1">
					<a href='#'>小米商城</a> <span class="sep">|</span> <a href='#'>MIUI</a>
					<span class="sep">|</span> <a href='#'>米家</a> <span class="sep">|</span>
					<a href='#'>米聊</a> <span class="sep">|</span> <a href='#'>多看</a> <span
						class="sep">|</span> <a href='#'>游戏</a> <span class="sep">|</span>
					<a href='#'>路由器</a> <span class="sep">|</span> <a href='#'>米粉卡</a>
					<span class="sep">|</span> <a href='#'>政企服务</a> <span class="sep">|</span>
					<a href='#'>小米天猫店</a> <span class="sep">|</span> <a href='#'>隐私政策</a>
					<span class="sep">|</span> <a href='#'>问题反馈</a> <span class="sep">|</span>
					<a href='#'>廉政举报</a> <span class="sep">|</span> <a href='#'>Select
						Region</a>
				</div>
				<!--第二行信息-->
				<div class="page-bottom-info-2">
					<ul>
						<li><a href='#'>© mi.com 京ICP证110507号 京ICP备10046444号
								京公网安备11010802020134号 京网文[2017]1530-131号 </a></li>
						<li><a href='#'>（京）网械平台备字（2018）第00005号 互联网药品信息服务资格证 (京)
								-非经营性-2014-0090 营业执照 医疗器械公告 </a></li>
						<li><a href='#'>违法和不良信息举报电话：185-0130-1238，本网站所列数据，除特殊说明，所有数据均出自我司实验室测试</a></li>

					</ul>
				</div>
				<div class="Pictures-of-qualification">
					<ul>
						<li><a href='#'><img src='imgs/qualifity-1.png'
								alt="装逼图1"></a></li>
						<li><a href='#'><img src='imgs/qualifity-2.png'
								alt='装逼图2'></a></li>
						<li><a href='#'><img src='imgs/qualifity-3.png'
								alt='装逼图3'></a></li>
						<li><a href='#'><img src='imgs/qualifity-4.png'
								alt='装逼图4'></a></li>
						<li><a href='#'><img src='imgs/qualifity-5.png'
								alt='装逼图5'></a></li>
					</ul>
				</div>
			</div>
			<p>探索黑科技，小米为发烧而生！</p>
		</div>

	</div>


	<script>
		///轮播
		(function($) {
			var t;
			var index = 0;
			//自动播放
			t = setInterval(play, 3000)

			function play() {
				index++;
				if (index > 4) {
					index = 0
				}

				$("#lunbobox ul li").eq(index).css({
					"background" : "#999",
					"border" : "1px solid #ffffff"
				}).siblings().css({
					"background" : "#cccccc",
					"border" : ""
				})

				$(".lunbo a ").eq(index).fadeIn(1000).siblings().fadeOut(1000);
			}
			;

			//点击鼠标 图片切换
			$("#lunbobox ul li").click(function() {

				$(this).css({
					"background" : "#999",
					"border" : "1px solid #ffffff"
				}).siblings().css({
					"background" : "#cccccc"
				})
				var index = $(this).index();

				$(".lunbo a ").eq(index).fadeIn(1000).siblings().fadeOut(1000);
			});

			$("#toleft").click(function() {
				index--;
				if (index <= 0) {
					index = 4
				}

				$("#lunbobox ul li").eq(index).css({
					"background" : "#999",
					"border" : "1px solid #ffffff"
				}).siblings().css({
					"background" : "#cccccc"
				})

				$(".lunbo a ").eq(index).fadeIn(1000).siblings().fadeOut(1000);
			});
			$("#toright").click(function() {
				index++;
				if (index > 4) {
					index = 0
				}
				console.log(index);
				$(this).css({
					"opacity" : "0.5"
				})
				$("#lunbobox ul li").eq(index).css({
					"background" : "#999",
					"border" : "1px solid #ffffff"
				}).siblings().css({
					"background" : "#cccccc"
				})
				$(".lunbo a ").eq(index).fadeIn(1000).siblings().fadeOut(1000); // siblings  找到 兄弟节点(不包括自己）
			});
			$("#toleft,#toright").hover(function() {
				$(this).css({
					"color" : "black"
				})
			}, function() {
				$(this).css({
					"opacity" : "0.3",
					"color" : ""
				})
			})

			//鼠标移进  移出
			$("#lunbobox ul li,.lunbo a img,#toright,#toleft ").hover(
			//鼠标移进
			function() {
				$('#toright,#toleft').show()
				clearInterval(t);

			},
			//鼠标移开
			function() {
				t = setInterval(play, 3000);

			})

		})(jQuery)
	</script>
</body>
</html>
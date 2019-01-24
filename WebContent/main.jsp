<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="js/jquery-1.8.3.min.js"></script>
<script src="js/index.js"></script>
<link rel="stylesheet" href="css/main.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<title>首页</title>
</head>
<body>
	<div id="header">
		<div class="header-left">
			<div class="logo">
				<a href="main.jsp">MI</a>
			</div>
		</div>
		<div class="header-right">
			<ul class="header-link">
				<li><a href="/">手机</a></li>
				<li><a href="/">声学</a></li>
				<li><a href="/">配件</a></li>
				<li><a href="/">Flyme</a></li>
				<li><a href="/">服务</a></li>
				<li><a href="/">专卖店</a></li>
				<li><a href="/">社区</a></li>
				<li><a href="/">APP下载</a></li>
			</ul>
			
			<ul class="user-dropdown">
				<li><a href="login.jsp">立即登录</a></li>
				<li><a href="register.jsp">立即注册</a></li>
				<li><a href="/">我的订单</a></li>
			</ul>
		</div>
	</div>
	<div class="middle_right">
		<div id="lunbobox">
			<div id="toleft" style="display: block;">&lt;</div>
			<div class="lunbo">
				<a href="####" style="display: none;"><img src="./imgs/mi1.png"></a>
				<a href="####" style="display: none;"><img src="./imgs/mi2.png"></a>
				<a href="####" style="display: none;"><img src="./imgs/mi3.png"></a>
				<a href="####" style="display: none;"><img src="./imgs/mi4.png"></a>
				<a href="####" style="display: inline-block;"><img
					src="./imgs/mi5.png"></a>
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
	<div class="login-box" role="form">
		<h3>登录</h3>
		<div class="form-group">
			<input type="text" class="form-control" id="login_id"
				placeholder="手机号码">
		</div>

		<div class="form-group">
			<input type="password" class="form-control" id="password"
				placeholder="密码">
		</div>
		<button type="submit" class="btn btn-primary" id="submit">确定</button>
	</div>

	<div class="register-box" role="form">
		<h3>注册</h3>
		<div class="form-group">
			<input type="text" class="form-control" id="re_login_id"
				placeholder="手机号码">
		</div>

		<div class="form-group">
			<input type="password" class="form-control" id="re_password"
				placeholder="密码">
		</div>

		<div class="form-group">
			<input type="text" class="form-control" id="re_name" placeholder="姓名">
		</div>

		<div class="form-group">
			性别： <label class="radio-inline"> <input type="radio"
				name="sex" value="男" checked> 男
			</label> <label class="radio-inline"> <input type="radio" name="sex"
				value="女"> 女
			</label>
		</div>

		<div class="form-group">
			<input type="text" class="form-control" id="re_age" placeholder="年龄">
		</div>
		<button type="submit" class="btn btn-primary" id="submit-re">确定</button>
	</div>

	<div id="product-list">
		<ul>
			<!-- <li><a href='####'> <img src='img/note8.png'>

					<div class='p-info'>
						<span class='p-name'>魅族note8</span> <span class='p-desc'>人脸指纹双解锁</span>
						<span class='p-price'><i>￥</i>1498</span>
					</div>

			</a></li> -->

		</ul>
	</div>
	<script>
		//触发事件
		$(".usergo").mouseenter(function() {
			$(".user-dropdown").show();
		})
		$(".user-dropdown").mouseleave(function() {
			$(this).hide();
		})

		$(".user-dropdown li:first-child a").click(function() {
			$(".login-box").slideDown();
		})
		$(".user-dropdown li:nth-child(2) a").click(function() {
			$(".register-box").slideDown();
		})
		//login表单提交
		$("#submit").click(function() {
			$.ajax({
				url : "login",
				type : "post",
				data : {
					login_id : $("#login_id").val(),
					password : $("#password").val()
				},
				dataType : "json",
				success : function(data) {
					if (data == "success") {
						alert("登录成功");
						$(".login-box").hide();
					} else if (data == "fail") {
						alert("用户名或密码不正确");
					}

				}
			});
		});
		//register 表单提交
		$("#submit-re").click(function() {
			$.ajax({
				url : "register",
				type : "post",
				data : {
					login_id : $("#re_login_id").val(),
					password : $("#re_password").val(),
					name : $("#re_name").val(),
					sex : $("input[name='sex']:checked").val(),
					age : $("#re_age").val()
				},
				dataType : "json",
				success : function(data) {
					if (data == "success") {
						alert("注册成功");
						$(".register-box").hide();
					} else {
						alert("注册失败");
					}
				}
			});
		});

		//商品展示
		function showProducts(ppage) {
			$.ajax({
				url : "products",
				type : "post",
				data : {
					operType : "showProducts",
					page : ppage
				},
				dataType : "json",//期待的响应数据
				success : function(data) {
					var arr = data;
					var content = "";
					for (var i = 0; i < arr.length; i++) {
						var po=arr[i];
						content += "<li>" + "<a href='detail.jsp/?productid="+po.goodsId+"'>"
								+ "<img src='"+img+"'>"

								+ "<div class='p-info'>"
								+ "<span class='p-name'>"+po.goodsName+"</span>"
								+ "<span class='p-desc'>"+po.description+"</span>"
								+ "<span class='p-price'><i>￥</i>"+po.price+"</span>"
								+ "</div>"

								+ "</a>" + "</li>"

					}
					$("#product-list ul").html(content);
				}

			});
		}
		showProducts(1);
	</script>


</body>
</html>
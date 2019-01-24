<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<style>
/* ----------元素位置布局---------- */
* {
    margin: 0;
    padding: 0;
}
 
.login {
    width: 400px;
    height: 650px;
    box-shadow: 0 0 15px 3px rgba(51, 51, 51, 0.53);
    margin: 20px auto 0 auto;
    /* border: 1px solid aqua; */
    text-align: center;
}
 
#login-text,
#login-pwd {
    width: 350px;
    height: 30px;
    display: inline-block;
    margin-left: auto;
    margin-right: auto;
}
 
#login-sub {
    width: 364px;
    height: 30px;
    display: inline-block;
    margin-left: auto;
    margin-right: auto;
}
 
/* ----------样式设计---------- */
a {
    color: black;
    text-decoration: none;
}
 
.choose {
    display: inline-block;
    margin-top: 30px;
    font-size: 22px;
}
 
.left {
    color: #f56600;
    margin-right: 15px;
}
 
.right {
    margin-left: 15px;
}
 
#login-text,
#login-pwd {
    padding: 8px 5px;
    font-size: 16px;
    /* box-sizing: border-box; */
    outline: none;;
}
 
#login-text {
    margin-top: 35px;
}
 
#login-pwd {
    margin-top: 15px;
}
 
#login-sub {
    height: 50px;
    margin-top: 15px;
    border: none;
    outline: none;
    font-size: 20px;
    background-color: #f56600;
    color: white;
}
 
.forget {
    display: inline-block;
    margin-top: 15px;
    font-size: 13px;
    color: #e0e0e0;
}
 
.forget a {
    color: #999;
}
 
.forget a:hover {
    text-decoration: underline;
}
 
fieldset {
    display: inline-block;
    width: 364px;
    margin-top: 80px;
    color: #999;
    border: none;
    border-top: 1px solid #999
}
 
/* ------------icon---------- */
 
.icon {
    margin: 30px auto;
}
 
.qq,.weibo,.pay,.wechat {
    width: 18px;
    height: 18px;
    display: inline-block;
    margin: 0 20px;
    border-radius: 50%;
    background: gray url("images/icons_type.png");
}
 
.qq {
    background-position-x: -19px;
}
 
.weibo {
    background-position-x: -38px;
}
 
.pay {
    background-position-x: -59px;
}
 
.wechat {
    background-position-x: -87px;
}
 
.qq:hover,
.weibo:hover,
.pay:hover,
.wechat:hover{
    background-color: black;
}
</style>
<body>
<div class="login">
    <a href="#" class="choose left">账号登录</a>
    <span style="color: #e0e0e0">|</span>
    <a href="#" class="choose right">扫码登录</a>
    <form action="LoginServlet" method="post">
        <input type="text" placeholder="邮箱/手机号/小米账号" class="loginAcc" id="login-text" name="loginAcc">
        <input type="password" placeholder="密码" class="loginPass" id="login-pwd" name="loginPass"/>
        
<!-- 验证码输入栏 -->     
    
    <input type="text" placeholder="验证码" id="login-text" name="check" style="width:60%;">
    <img alt="验证码" src="/SmileShop-test/PictureCheckCodeServlet" id="rpicture" onclick="rturnCode()">
    
    <button onclick="login()">
    	<input type="button"  value="登录" id="login-sub">
    </button>
    
        
        
    </form>
    <span class="forget">
        <a href="register.jsp">注册小米账号</a>
        <span>|</span>
        <a href="#">忘记密码?</a></span>
    <fieldset>
        <legend>其他方式登录</legend>
    </fieldset>
    <div class="icon">
        <a href="#" class="qq"></a>
        <a href="#" class="weibo"></a>
        <a href="#" class="pay"></a>
        <a href="#" class="wechat"></a>
    </div>
</div>


<script src="./js/jquery1.11.min.js"></script>
<script type="text/javascript">
<!-- 登录方法,与servlet进行数据交互  --> 
function login() {
	$.ajax({
		url:"/SmileShop-test/LoginServlet",
		type:"post",
		data:{
			"loginAcc":$(".loginAcc").val(),
			"loginPass":$(".loginPass").val(),
			"checkcode":$(".check").val()
		},
		dataType:"json",
		success:function(data){	
			alter(111);

		}			
	});
}
</script>

<script>
//切换验证码
function turnCode() {
    document.getElementById('picture').src="/nicehome/check?a="+Math.random();

}
function rturnCode() {
    document.getElementById('rpicture').src="/nicehome/check?a="+Math.random();

}
</script>

</body>
</html>
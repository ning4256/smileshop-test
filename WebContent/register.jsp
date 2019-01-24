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
    height: 700px;
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
    <a href="#" class="choose left">账号注册</a>
    <span style="color: #e0e0e0">|</span>
    <a href="#" class="choose right">邮箱注册</a>
    <form action="RegisterServlet" method="post">
        <input type="text" placeholder="请输入注册账户名字" id="login-text" name="username">
        <input type="text" placeholder="注册手机号" id="login-pwd" name="phone">
        <input type="password" placeholder="注册密码" id="login-pwd" name="comfirmPass">
        <input type="password" placeholder="确认密码" id="login-pwd" name="loginPass">
        <input type="text" placeholder="用户地址" id="login-pwd" name="userAddress">
        <input type="submit" value="注册" id="login-sub">
    </form>

</div>
</body>
</html>
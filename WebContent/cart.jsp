<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%@inclube file='head.jsp' %>
	<div class='container' style='margin-top:80px'>
		<div class='row'>
			<table class='table table-hover text-center'>
				<thead>
					<tr>
						<th id='balance'>商品名称</th>
						<th>&nbsp;</th>
						<th>&nbsp;</th>
						<th>&nbsp;</th>
						<th>&nbsp;</th>
					</tr>
					<tr>
						<th>&nbsp;</th>
						<th>商品名称</th>
						<th>单价</th>
						<th>数量</th>
						<th>操作</th>					
					</tr>
				
				</thead>
				<tbody id='cart'>
					<tr>
						<td class='text-center'>&nbsp;</td>
						<td class='infor'>&nbsp;</td>
						<td class='infor text-right'>总价</td>
						<td class='infor text-left' style='color:red'>2018元</td>
						<td class='infor'>
						<button type='button' class='btn btn-danger'>结账</button>
						</td>
					</tr>
					
				</tbody>
				
				
				
			</table>
		</div>
	
	</div>



</body>
</html>
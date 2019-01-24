/**
 * 
 */
function showGoods(ppage) {
	$.ajax({
		url : "GoodsServlet",
		type : "post",
		data : {
			operType : 'showGoods',
			page : ppage
		},
		dataType : 'json',
		success : function(data) {
			var arr = data;
			var content = "";
			for (var i = 0; i < arr.length; i++) {
				content += "<div class='panel panel-default outer'>"
						+ "<div class='panel-body inner-img'>"
						+ "<a href='jsp/detail.jsp?goodsid="
						+ po.id
						+ "&name="
						+ po.name
						+ "&img="
						+ po.img
						+ "&count="
						+ po.count
						+ "&price"
						+ po.price
						+ "'> <img"
						+ "src='"
						+ po.img
						+ "' class='img-tunmnail goodsImg'"
						+ "style='border: 0; height: 100%;' alt=''>"

						+ "</a>"

						+ "</div>"

						+ "<div class='panel-footer inner-footer'>"
						+ "<div style='float: left;'>"
						+ po.name
						+ "<br /> RMB:"
						+ po.price
						+ "</div>"
						+ "<div style='float: right;' class='add'>"
						+ "<img id='addimg0' src='image/add.png'"
						+ "onmouseover='addImg(\"addimg"
						+ i
						+ "\",\"imgs/add2.png\")'"
						+ "onmouseout='addImg(\"addimg"
						+ i
						+ "\",\"imgs/add.png\")'"
						+ "onclick='addCart("
						+ po.id
						+ ")' alt=''>"

						+ "</div>"

						+ "</div>"
			}

		}

	});
}

function nextPage() {
	// 获取当前页码
	var current = parseInt($("#currentpage").html());
	// 获取总页码
	vat
	totalPage = parseInt($("#totalpage").html());
	if (current < totalPage) {
		showGoods(current + 1);
	}
}
function endPage() {
	var totalPage = parserInt($("#totalpage").html());
	showGoods(totalPage);
}

function addCart(pid, pname, pimg, pprice) {
	$.ajax({
		url : "GoodsServlet",
		type : "post",
		data : {
			operType : 'update',
			id:pid,
			name:pname,
			img:pimg,
			price:pprice
		},
		dataType : 'json',
		success : function(data) {
			var arr = data;
			var content = "";
			for (var i = 0; i < arr.length; i++) {
				content += "<div class='panel panel-default outer'>"
						+ "<div class='panel-body inner-img'>"
						+ "<a href='jsp/detail.jsp?goodsid="
						+ po.id
						+ "&name="
						+ po.name
						+ "&img="
						+ po.img
						+ "&count="
						+ po.count
						+ "&price"
						+ po.price
						+ "'> <img"
						+ "src='"
						+ po.img
						+ "' class='img-tunmnail goodsImg'"
						+ "style='border: 0; height: 100%;' alt=''>"

						+ "</a>"

						+ "</div>"

						+ "<div class='panel-footer inner-footer'>"
						+ "<div style='float: left;'>"
						+ po.name
						+ "<br /> RMB:"
						+ po.price
						+ "</div>"
						+ "<div style='float: right;' class='add'>"
						+ "<img id='addimg0' src='image/add.png'"
						+ "onmouseover='addImg(\"addimg"
						+ i
						+ "\",\"imgs/add2.png\")'"
						+ "onmouseout='addImg(\"addimg"
						+ i
						+ "\",\"imgs/add.png\")'"
						+ "onclick='addCart("
						+ po.id
						+ ")' alt=''>"

						+ "</div>"

						+ "</div>"
			}

		}

	});
	function showCart() {
		$.ajax({
			url : "GoodsServlet",
			type : "post",
			data : {
				operType : 'search',
				id:pid,
				name:pname,
				img:pimg,
				price:pprice
			},
			dataType : 'json',
			success : function(data) {
				var arr = data;
				var content = "";
				for (var i = 0; i < arr.length; i++) {
					content += "<div class='panel panel-default outer'>"
							+ "<div class='panel-body inner-img'>"
							+ "<a href='jsp/detail.jsp?goodsid="
							+ po.id
							+ "&name="
							+ po.name
							+ "&img="
							+ po.img
							+ "&count="
							+ po.count
							+ "&price"
							+ po.price
							+ "'> <img"
							+ "src='"
							+ po.img
							+ "' class='img-tunmnail goodsImg'"
							+ "style='border: 0; height: 100%;' alt=''>"

							+ "</a>"

							+ "</div>"

							+ "<div class='panel-footer inner-footer'>"
							+ "<div style='float: left;'>"
							+ po.name
							+ "<br /> RMB:"
							+ po.price
							+ "</div>"
							+ "<div style='float: right;' class='add'>"
							+ "<img id='addimg0' src='image/add.png'"
							+ "onmouseover='addImg(\"addimg"
							+ i
							+ "\",\"imgs/add2.png\")'"
							+ "onmouseout='addImg(\"addimg"
							+ i
							+ "\",\"imgs/add.png\")'"
							+ "onclick='addCart("
							+ po.id
							+ ")' alt=''>"

							+ "</div>"

							+ "</div>"
				}

			}

		});
}

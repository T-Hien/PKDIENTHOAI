<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 

<head>
<link rel="stylesheet"
	href="<c:url value="/templates/user/access/js/owlcarousel/owl.carousel.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/templates/user/access/js/owlcarousel/owl.theme.default.min.css"/>">
<script src="<c:url value="/templates/user/access/js/Jquery/Jquery.min.js"/>"></script>
<script src="<c:url value="/templates/user/access/js/owlcarousel/owl.carousel.min.js"/>"></script>

<!-- tidio - live chat -->
<!-- <script src="//code.tidio.co/bfiiplaaohclhqwes5xivoizqkq56guu.js"></script> -->

<!-- our files -->
<!-- css -->

<link rel="stylesheet" href="<c:url value="/templates/user/access/css/home_products.css"/>"/>
<link rel="stylesheet" href="<c:url value="/templates/user/access/css/chitietsanpham.css"/>"/>
<link rel="stylesheet" href="<c:url value="/templates/user/access/css/footer.css"/>"/>
<link rel="stylesheet" href="<c:url value="/templates/user/access/css/style.css"/>"/>
<link rel="stylesheet" href="<c:url value="/templates/user/access/css/topnav.css"/>"/>
<link rel="stylesheet" href="<c:url value="/templates/user/access/css/header.css"/>"/>
<link rel="stylesheet" href="<c:url value="/templates/user/access/css/home.css"/>"/>

<link rel="stylesheet" href="<c:url value="/templates/user/access/css/banner.css"/>"/>
<link rel="stylesheet" href="<c:url value="/templates/user/access/css/taikhoan.css"/>"/>
<link rel="stylesheet" href="<c:url value="/templates/user/access/css/trangchu.css"/>"/>
<link rel="stylesheet"
	href="<c:url value="/templates/user/access/css/home_products.css"/>"/>
<link rel="stylesheet"
	href="<c:url value="/templates/user/access/css/pagination_phantrang.css"/>"/>
<link rel="stylesheet" href="<c:url value="/templates/user/access/css/footer.css"/>"/>
<!-- js -->
<script src="<c:url value="/templates/user/accessjs/chitietsanpham.js"/>"></script>
<script src="<c:url value="/templates/user/access/js/classes.js"/>"></script>
<script src="<c:url value="/templates/user/access/js/trangchu.js"/>"></script>
<!-- GIOHANG -->
<link href="<c:url value="/templates/cart-pays/assets/ico/Technology.ico"/>"rel="shortcut icon"/>
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css">
<!-- Bootstrap styles -->
<link href="<c:url value='/templates/cart-pays/assets/dist/css/bootstrap.min.css'/>" rel="stylesheet">

<!-- font awesome styles -->

<link href="<c:url value='/templates/cart-pays/assets/dist/style.css'/>" rel="stylesheet">
<title>Thế giới phụ kiện điện thoại</title>
</head>
<body>
<%@ include file="/common/web/header.jsp"%>
<br>
<script>
function changetValue() {
  var input = document.getElementById('newQuantity');
  var value = parseInt(input.value, 10);
  value = isNaN(value) ? 0 : value;
  value--;
  input.value = value;
  
}

</script>
<div class="container solid black">
	<div class="row solid black">
	
<!--  SẢN PHẨM TRONG GIỎ HÀNG -->

  		<div class="col-9 mbg-azure py-2">
  		
  		
  			<table class="table mb-0">
			<thead>
			    <tr class="table-info">
				    <th class="col-4 text-left">Sản phẩm</th>
				    <th class="col-2 text-center">Đơn giá</th>
				    <th class="col-2 text-center">Số lượng</th>
				    <th class="col-2 text-center">Số tiền</th>
					<th class="col-1 text-center">Xóa</th>				    
			    </tr>
			</thead>

 <c:set var="sum" value="0" />	
			<tbody>
				<c:forEach var="lc" items="${listCart}">
					<c:set var="sum" value="${sum + (lc.product.price*lc.quantity)}" />
					<tr>
						<td class="py-1">
							<div class="row">
								<div class="col-auto">
									<a href="home/product.htm?id=${lc.product.id }" target="_blank">
										<img src= "<c:url value= "/templates/images/${lc.product.image }"/>" style="width: 70px; height: 90px;">
									</a>
								</div>
								<div class="col py-2">${lc.product.name}</div>
							</div>
						</td>
						
						<td align="center">
						<div style="width: 100px; margin-bottom: 10px; padding-top: .9rem;">
							<fmt:formatNumber value="${lc.product.price}" type="currency" currencySymbol="" maxFractionDigits="0"></fmt:formatNumber> đ
						</div>
						</td>
						
						<!-- TANG GIAM SO LUONG -->
						<td align="center" class="py-3 edit-product">
							<form action="/cart-pay/cart/upanddown" method="post">
								<input type="hidden" name="cartDetailId" value="${lc.cart.id}"> 
								<input type="hidden" id="input-value" name="productId" value="${lc.product.id}">						
								<input style=" border: 1px solid black; height: 30px; width: 60px; border-radius: 7px;" id="${lc.product.id}" type="number" name="newQuantity" value="${lc.quantity }" min="1" step="1" class="text-center fw-bolder" />
								
								<button id="btn" data-type="decrease"type="submit" onclick="changetValue()" style=" margin-left: 5px; font-size: 18px; height: 30px; width: 30px; border: none; border-radius: 5px;" >
									<i class="fa fa-recycle link-dark" aria-hidden="true"></i>
								</button>
							</form>
						</td>
						
						<td align="center">
							<div style="width: 100px; margin-bottom: 10px; padding-top: .9rem;">
								<fmt:formatNumber value="${lc.product.price*lc.quantity}" type="currency" currencySymbol="" maxFractionDigits="0"></fmt:formatNumber> đ
							</div>	
						</td>
	    		 			
				    		
				    	<!--NÚT XÓA-->
				    	<td class="text-center py-3 edit-product">
					    	<form action="/cart-pay/cart/remove" method="post">
								<input type="hidden" name="cartDetailId" value="${lc.cart.id}"> 
								<input type="hidden" id="input-value" name="productId" value="${lc.product.id}">
								<button type="submit" class="fas fa-trash-alt link-danger">
									<span class="icon-remove"></span>
								</button>
							</form>
					    </td>
					</tr>
				</c:forEach>
			</tbody>
			</table>
  		</div>
<!--  ĐỊA CHỈ + THÀNH TIỀN -->
		<div class="col-3">
			<div class="mbg-azure p-3 mb-0"> <!-- Địa chỉ -->
				<div class="fs-6 fw-bold">Giao tới:</div>
				<div class="h6 ps-1 fw-bold">${User.surname} ${User.name}</div>
				<div class="text-secondary">Số điện thoại: ${User.sdt}</div>
				<div class="text-secondary fst-italic">Địa chỉ: ${User.address}</div>
			</div>
			<div class="mbg-azure p-3 mb-0"> <!-- Bảng giá -->

				<div class="row fw-bolder">
					<div class="col">Tổng cộng:</div>
					<div class="col text-end">
						<fmt:formatNumber value="${sum}" type="currency" currencySymbol="" maxFractionDigits="0"></fmt:formatNumber> đ
					</div>	
				</div>
			</div>
			<br>
			<div class=" p-2 mb-2"> <!-- Bảng giá -->
			<div class="p-2 d-grid"> <!-- Button -->
				<a class="btn btn-warning bg-gradient" href="<c:url value='/user/product'/>" role="button">Tiếp tục mua sắm</a>
			</div>
			<div class="p-2 d-grid"> <!-- Button -->
				<a class="btn btn-danger bg-gradient" href="./pays" role="button">Mua hàng</a>
			</div>
			</div>

	</div>
</div>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<%@ include file="/common/web/footer.jsp"%>
<div class="plc">
	<section>
		<ul class="flexContain">
			<li>Giao hàng hỏa tốc trong 1 giờ</li>
			<li>Thanh toán linh hoạt: tiền mặt, visa / master, trả góp</li>
			<li>Trải nghiệm sản phẩm tại nhà</li>
			<li>Lỗi đổi tại nhà trong 1 ngày</li>
			<li>Hỗ trợ suốt thời gian sử dụng. <br>Hotline: <a
				href="tel:12345678" style="color: #288ad6;">12345678</a>
			</li>
		</ul>
	</section>
</div>
</body>

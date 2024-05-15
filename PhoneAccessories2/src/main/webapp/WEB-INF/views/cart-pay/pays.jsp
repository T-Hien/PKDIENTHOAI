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
<div class="container">	
	<div class="mbg-azure py-2 px-4 mb-2">
		<div class="row">			
			<div class="col">
				<div class="fw-bold text-primary"><i class="fas fa-map-marker-alt"></i> Địa chỉ nhận hàng</div>
			</div>
			
			<div class="col text-end">
				<a class="btn btn-outline-primary btn-sm" href="/cart-pay/address" role="button">Thay đổi</a>
			</div>
		</div>
		<div class="h6 ps-3 fw-bold">${User.surname} ${User.name}</div>
		<div class="ps-3 text-secondary">Số điện thoại: ${User.sdt }</div>
		<div class="ps-3 text-secondary fst-italic">Địa chỉ: ${User.address }</div>
	</div>
	
	<div class="mbg-azure py-8 px-4 mb-2">
		<table class="table">
		
		<thead>
			<tr class="table-primary">
				<th scope="col" class="col-6 fw-bold">Sản phẩm</th>
				<th scope="col" class="col-2 fw-bold">Đơn giá</th>
				<th scope="col" class="col-2 fw-bold text-center">Số lượng</th>
				<th scope="col" class="col-2 fw-bold text-center">Thành tiền</th>
			</tr>
		</thead>
 <c:set var="sum" value="0" />			
		<tbody>
			<!-- Sau ghép JSTL vào -->
			<c:forEach var="lc" items="${list}">
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
						<td><fmt:formatNumber value="${lc.product.price}" type="currency" currencySymbol="" maxFractionDigits="0"></fmt:formatNumber> đ</td>
						<td align="center">${lc.quantity }</td>
						
						<td align="center" class="py-3">
							<fmt:formatNumber value="${lc.product.price*lc.quantity}" type="currency" currencySymbol="" maxFractionDigits="0"></fmt:formatNumber> đ
							</td>
					</tr>
			</c:forEach>
			<!-- ////////////////////////////////////////// -->
		</tbody>
		
		
		</table>
			
	</div>
	<form action="/cart-pay/pays/save" method="post">
	
		<div class="row">
			<div class=" fw-bold py-2 px-9 mb-2" align="right">Chọn hình thức thanh toán:
					<select name="Pays" id="Pays">
						<c:forEach var="lc" items="${pay}">
							<option value="${lc.id }" id="Idpays">${lc.typePay}</option>
						</c:forEach>
					</select>
		</div>
			<div class="col-6 ">
				<div class="mbg-azure py-2 px-4 mb-2">
					<div class="fw-bold">Giảm phí vận chuyển:</div> 
					<div class="fst-italic">Không có</div>				
						
				</div>
				<div class="alert-warning border border-warning rounded m-1 p-2" role="alert"> 
				<!-- Thêm chơi để dằn mặt mấy thím thích boom hàng :v -->
					Nhấn vào đặt hàng đồng nghĩa với việc bạn đồng ý với các điều khoản của Shop và có trách nhiệm với đơn hàng của mình.
				</div> <!-- Copy của Shopee >.o -->
			</div>
			
			<div class="col-6">
				<div class="mbg-azure py-2 px-4 mb-2">
					<div class="row">
						<div class="col">Tổng tiền hàng:</div>
						<div class="col text-end">
							<fmt:formatNumber value="${sum}" type="currency" currencySymbol="" maxFractionDigits="0"></fmt:formatNumber> đ
						</div>
					</div>
					<div class="row">
						<div class="col">Phí vận chuyển:</div>
						<div class="col text-end">+
							<fmt:formatNumber value="0" type="currency" currencySymbol="" maxFractionDigits="0"></fmt:formatNumber> đ
						</div>
					</div>
					<hr>
					<div class="row fw-bolder">
						<div class="col">Tổng cộng:</div>
						<div class="col text-end">
							<fmt:formatNumber value="${sum}" type="currency" currencySymbol="" maxFractionDigits="0"></fmt:formatNumber> đ
						</div>
					</div>
				</div>
				<div class="p-2 d-grid" type="submit"> <!-- Button -->
					<button type="submit" class="btn btn-danger bg-gradient">Đặt hàng</button>
				</div>
			</div>
		</div>
	</form>
</div>
<br>
<br>
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

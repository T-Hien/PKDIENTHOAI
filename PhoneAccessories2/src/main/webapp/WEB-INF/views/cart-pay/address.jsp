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

<div class="container">
<br>
	<div class="h4 text-uppercase"><b>Địa chỉ giao hàng</b></div>
	
	<div class="col-6 border-ship border-success px-3 pb-1 bg-light bg-gradient">
		<div class="text-end text-success sizemenu">Mặc định</div>
		<div class="h6 ps-1 fw-bold">${User.surname} ${User.name}</div>
		<div class="text-secondary">Số điện thoại: ${User.sdt}</div>
		<div class="text-secondary fst-italic">Địa chỉ: ${User.address}</div>
		
	</div>
	
	<div class="border my-3 p-2 bg-light bg-gradient">
	<h1>${message1 }</h1>
	<h2>${message2 }</h2>
	<div class="h5 text-center">Địa chỉ mới</div>
	
	<div class="col-6 mbg-azure py-2 px-4 mb-2 m-auto">
		<form action="/cart-pay/address/update" method="post">
			<input type="hidden" id="phoneold" name="phoneold" value="${User.sdt}">
			<input type="hidden" id="addressold" name="addressold" value="${User.address}">
			<div class="row mb-1">
	    		<label class="col-sm-4 col-form-label">Điện thoại di động: </label>
	    		<div class="col-sm-1">
	    			<input type="text" id="phone" name="phone" style="width: 200px; height: 30px;">
	    		</div>
  			</div>
  			
  			<div class="row mb-3">
	    		<label class="col-sm-4 col-form-label">Địa chỉ: </label>
	    		<div class="col-sm-5">
	    		<textarea id="address" name="address" style="width: 340px; height: 50px;"></textarea>
	    		</div>
  			</div>
			<div class="text-end">
				<button type="submit" class="btn btn-info text-white">Hoàn Thành</button>
			</div>
		</form> 
	</div>
	</div>
</div>
<br>
<br>
<br>
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


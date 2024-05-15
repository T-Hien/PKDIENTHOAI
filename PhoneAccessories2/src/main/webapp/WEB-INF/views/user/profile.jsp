<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<head>
<link rel="stylesheet"
	href="<c:url value="/templates/user/access/js/owlcarousel/owl.carousel.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/templates/user/access/js/owlcarousel/owl.theme.default.min.css"/>">
<script
	src="<c:url value="/templates/user/access/js/Jquery/Jquery.min.js"/>"></script>
<script
	src="<c:url value="/templates/user/access/js/owlcarousel/owl.carousel.min.js"/>"></script>

<!-- tidio - live chat -->
<!-- <script src="//code.tidio.co/bfiiplaaohclhqwes5xivoizqkq56guu.js"></script> -->
<link
	href="<c:url value="/templates/cart-pays/assets/ico/Technology.ico"/>"
	rel="shortcut icon" />
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css">
<!-- Bootstrap styles -->
<link
	href="<c:url value='/templates/cart-pays/assets/dist/css/bootstrap.min.css'/>"
	rel="stylesheet">

<!-- our files -->
<!-- css -->

<link rel="stylesheet"
	href="<c:url value="/templates/user/access/css/home_products.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/templates/user/access/css/chitietsanpham.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/templates/user/access/css/footer.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/templates/user/access/css/style.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/templates/user/access/css/topnav.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/templates/user/access/css/header.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/templates/user/access/css/home.css"/>" />

<link rel="stylesheet"
	href="<c:url value="/templates/user/access/css/banner.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/templates/user/access/css/taikhoan.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/templates/user/access/css/trangchu.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/templates/user/access/css/home_products.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/templates/user/access/css/pagination_phantrang.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/templates/user/access/css/footer.css"/>" />
<!-- js -->
<script
	src="<c:url value="/templates/user/accessjs/chitietsanpham.js"/>"></script>
<script src="<c:url value="/templates/user/access/js/classes.js"/>"></script>
<script src="<c:url value="/templates/user/access/js/trangchu.js"/>"></script>
<link rel="stylesheet"
	href="<c:url value="/templates/user/access/css/header.css"/>" />

<link rel="stylesheet"
	href="<c:url value="/templates/user/access/css/home.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/templates/user/access/css/admin/customer.css"/>" />

<%@ include file="/common/web/header.jsp"%>


</head>
<body>
	<div class="profile">
		<div class="profile-form">
			<form:form class="form-info" method="post"
				action="/profile/update?ids=${account1.id}"
				modelAttribute="account1" enctype="multipart/form-data">
				<div class="row mb-3">
					<img style="width:200px ; height: 200px; " alt="avarta" src="/templates/user/access/img/customer/${account1.image }"> 
					<div class="col-md-8 col-lg-9">
						<input name="avatar" type="file" class="form-control">
					</div>
				</div>

				<hr>

				<table class="customer-info">
					<tr>
						<th colspan="2">THÔNG TIN KHÁCH HÀNG</th>
					</tr>


					<tr>
						<td>Tài khoản:</td>
						<td><form:input path="account.username" type="text"></form:input></td>
					</tr>
					<tr>
						<td>Họ:</td>
						<td><form:input path="surname" type="text"></form:input></td>
					</tr>
					<tr>
						<td>Tên:</td>
						<td><form:input path="name" type="text"></form:input></td>
					</tr>
					<tr>
						<td>Email:</td>
						<td><form:input path="account.email" type="text"></form:input></td>
					</tr>
					<tr>
						<td colspan="2" class="separator"></td>
					</tr>
				</table>

				<div class="profile-button">
					<button type="submit">Cập nhật thông tin</button>
				</div>
				<div><p>${mess }</p></div>
			</form:form>
		</div>




		<div class="order-list">
			<c:if test="${order.isEmpty()== true }">
				<p>Bạn chưa có đơn hàng nào</p>
			</c:if>
			<c:if test="${order.isEmpty() == false }">
				<div>
					<h2>Danh sách đơn hàng</h2>
				</div>
				<c:forEach items="${order }" var="order">
					<table class="order-info">
						<tr>
							<td>Mã phiếu đặt:</td>
							<td>${order.id }</td>
						</tr>
						<tr>
							<td>Trạng thái:</td>
							<td>${order.status }</td>
						</tr>
						<tr>
							<td>Địa chỉ:</td>
							<td>${order.user.address }</td>
						</tr>
						<tr>
							<td>Ngày lập:</td>
							<td>${order.date }</td>
						</tr>
						
						<tr>
							<td colspan="2" class="separator"></td>
						</tr>
					</table>
				</c:forEach>
			</c:if>
		</div>
	</div>


	</section>
	<%@ include file="/common/web/footer.jsp"%>

	<div class="plc"
		style="position: fixed; left: 0; bottom: 0; width: 100%;
	/* background-color: #f5f5f5; */ text-align: center;">
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
	<i class="fa fa-arrow-up" id="goto-top-page" onclick="gotoTop()"></i>
</body>
</html>
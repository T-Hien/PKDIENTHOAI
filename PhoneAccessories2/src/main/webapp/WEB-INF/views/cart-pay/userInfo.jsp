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

	<div class="content-wrapper">
		 <!-- Content Header (Page header) -->
		 <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
          </div>
        </div>
      </div>
    </section>
     <!-- end Content Header (Page header) -->
     
     <!-- Main content -->
     <section class="content">
     	 	 <div class="row" style="justify-content: center;">
     	 	 		<div class="col-md-8">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Đăng kí thông tin</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form:form action="./userDK1" method="post" modelAttribute="user">
                <div class="card-body">
					<div class="form-group" style="margin-left: 50px; margin-bottom: 10px;">
                    <label><strong>Họ</strong></label>
                    <form:input path="surname" type="text" class="form-control" id="surname" placeholder=""/>
                	<form:errors path="surname" cssClass="text-danger" />
									<p class="error" style="color: red; margin-left: 10px">										
													${errorHo}										
									</p>
                  </div>
				
					<div class="form-group" style="margin-left: 50px; margin-bottom: 10px;">
                    <label><strong>Tên</strong></label>
                    <form:input path="name" type="text" class="form-control" id="name" placeholder=""/>
                    <form:errors path="name" cssClass="text-danger" />
									<p class="error" style="color: red; margin-left: 10px">										
													${errorTen}										
									</p>
                  </div>
				
					<div class="form-group" style="margin-left: 50px; margin-bottom: 10px;">
                    <label><strong>Ngày sinh</strong></label>
                    <form:input path="dayOfBirth" type="date" class="form-control" id="dayOfBirth" placeholder=""/>
                  </div>
                  
					<div class="form-group" style="margin-left: 50px; margin-bottom: 10px;">
                    <label><strong>Địa chỉ</strong></label>
                    <form:input path="address" type="text" class="form-control" id="address" placeholder=""/>
                    <form:errors path="address" cssClass="text-danger" />
									<p class="error" style="color: red; margin-left: 10px">										
													${errorDC}										
									</p>
                  </div>

					<div class="form-group" style="margin-left: 50px; margin-bottom: 10px;">
                    <label><strong>Số diện thoại</strong></label>
                    <form:input path="sdt" type="text" class="form-control" id="sdt" placeholder=""/>
					<form:errors path="sdt" cssClass="text-danger" />
									<p class="error" style="color: red; margin-left: 10px">										
													${errorSDT}										
									</p>
                  </div>

                </div>
                <!-- /.card-body -->
                <div align="right" class="card-footer">
                  <button type="submit" class="btn btn-primary">Đăng kí</button>
                </div>
              </form:form>
              
             
             
            </div>
            <!-- /.card -->
     	 	 </div>
     	 </div>
     </section>
    
	</div>
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
</html>
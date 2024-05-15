<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/common/taglib.jsp"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="vi"><head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Xiaomi Redmi Note 5 - Thế giới điện thoại</title>
    <link rel="shortcut icon" href="/templates/user/access/img/favicon.ico">

    <!-- Load font awesome icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" crossorigin="anonymous">

	<!-- owl carousel libraries cho hình nhỏ -->
	<link rel="stylesheet" href="/templates/user/access/js/owlcarousel/owl.carousel.min.css">
	<link rel="stylesheet" href="/templates/user/access/js/owlcarousel/owl.theme.default.min.css">
	<script src="/templates/user/access/js/Jquery/Jquery.min.js"></script>
    <script src="/templates/user/access/js/owlcarousel/owl.carousel.min.js"></script>

    <!-- our files -->
    <!-- css -->
    <link rel="stylesheet" href="/templates/user/access/css/style.css">
    <link rel="stylesheet" href="/templates/user/access/css/topnav.css">
    <link rel="stylesheet" href="/templates/user/access/css/header.css">
    <link rel="stylesheet" href="/templates/user/access/css/taikhoan.css">
    <link rel="stylesheet" href="/templates/user/access/css/trangchu.css">
    <link rel="stylesheet" href="/templates/user/access/css/home_products.css">
    <link rel="stylesheet" href="/templates/user/access/css/chitietsanpham.css">
    <link rel="stylesheet" href="/templates/user/access/css/footer.css">
    <!-- js -->
</head>



        <div id="productNotFound" style="min-height: 50vh; text-align: center; margin: 50px; display: none;">
            <h1 style="color: red; margin-bottom: 10px;">Không tìm thấy sản phẩm</h1>
            <a href="product.html" style="text-decoration: underline;">Quay lại trang chủ</a>
        </div>

        <div class="chitietSanpham" style="margin-bottom: 100px">
            <h1>${product.name }</h1>
            
            <div class="rowdetail group">
                <div class="picture">
                    <img src= "<c:url value= "/templates/images/${product.image }"/>" style="width: 310px; height: 350px;">
                </div>
                <div class="price_sale">
                    <div class="area_price"><strong>${product.price }</strong></div>
                    <div class="ship" style="display: none;">
                        <img src="/templates/user/accessimg/chitietsanpham/clock-152067_960_720.png">
                        <div>NHẬN HÀNG TRONG 1 GIỜ</div>
                    </div>
                    <div class="area_promo">
                        <strong>khuyến mãi</strong>
                        <div class="promo">
                            <img src="/templates/user/access/img/chitietsanpham/icon-tick.png">
                            <div id="detailPromo">Khách hàng sẽ được thử máy miễn phí tại cửa hàng. Có thể đổi trả lỗi trong vòng 2 tháng.</div>
                        </div>
                    </div>
                    <div class="policy">
                        <div>
                            <img src="/templates/user/access/img/chitietsanpham/box.png">
                            <p>Trong hộp có: Đầy đủ các dụng cụ hỗ trợ để sử dụng sản phẩm </p>
                        </div>
                        <div>
                            <img src="/templates/user/access/img/chitietsanpham/icon-baohanh.png">
                            <p>Đảm bảo về chất lượng.</p>
                        </div>
                        <div class="last">
                            <img src="/templates/user/access/img/chitietsanpham/1-1.jpg">
                            <p>1 đổi 1 trong 1 tháng nếu lỗi.</p>
                        </div>
                    </div>
                    <div class="area_order">
					    <c:url var="addProductUrl" value="/cart-pay/addProduct">
					        <c:param name="id" value="${product.id}" />
					    </c:url>
					    <a href="${addProductUrl}" class="buy_now">
					        <b><i class="fa fa-cart-plus"></i> Thêm vào giỏ hàng</b>
					        <p>Giao trong 1 giờ hoặc nhận tại cửa hàng</p>
					    </a>
					    <%-- Kiểm tra và hiển thị thông báo --%>
					    <c:if test="${not empty message}">
					        <div class="alert alert-info">${message}</div>
					    </c:if>
					</div>
                </div>
                <div class="info_product">
                    <h2>Mô tả</h2>
                    <ul class="info"><li>
                <p>Mô tả chi tiết:</p>
                <div>${product.description }</div>
            </li></ul>
                </div>
            </div>
            <div id="overlaycertainimg" class="overlaycertainimg">
                <div class="close" onclick="closecertain()">×</div>
                <div class="overlaycertainimg-content">
                    <img id="bigimg" class="bigimg" src="img/products/xiaomi-redmi-note-5-pro-600x600.jpg">
                    <div class="div_smallimg owl-carousel owl-loaded owl-drag">
                        <!-- <img src="resources/img/chitietsanpham/oppo-f9-mau-do-1-org.jpg" onclick="changepic(this.src)">
                        <img src="resources/img/chitietsanpham/oppo-f9-mau-do-2-org.jpg" onclick="changepic(this.src)">
                        <img src="resources/img/chitietsanpham/oppo-f9-mau-do-3-org.jpg" onclick="changepic(this.src)"> -->
                    <div class="owl-stage-outer"><div class="owl-stage" style="transition: all 0s ease 0s; width: 1359px; transform: translate3d(389px, 0px, 0px);"><div class="owl-item active center" style="width: 194.08px;"><div class="item">
                        <a>
                            <img src="/templates/user/access/img/products/huawei-mate-20-pro-green-600x600.jpg" onclick="changepic(this.src)">
                        </a>
                    </div></div><div class="owl-item active" style="width: 194.08px;"><div class="item">
                        <a>
                            <img src="/templates/user/access/img/chitietsanpham/oppo-f9-mau-do-1-org.jpg" onclick="changepic(this.src)">
                        </a>
                    </div></div><div class="owl-item active" style="width: 194.08px;"><div class="item">
                        <a>
                            <img src="/templates/user/access/img/chitietsanpham/oppo-f9-mau-do-2-org.jpg" onclick="changepic(this.src)">
                        </a>
                    </div></div><div class="owl-item" style="width: 194.08px;"><div class="item">
                        <a>
                            <img src="/templates/user/access/img/chitietsanpham/oppo-f9-mau-do-3-org.jpg" onclick="changepic(this.src)">
                        </a>
                    </div></div><div class="owl-item" style="width: 194.08px;"><div class="item">
                        <a>
                            <img src="/templates/user/access/img/products/huawei-mate-20-pro-green-600x600.jpg" onclick="changepic(this.src)">
                        </a>
                    </div></div><div class="owl-item" style="width: 194.08px;"><div class="item">
                        <a>
                            <img src="/templates/user/access/img/chitietsanpham/oppo-f9-mau-do-3-org.jpg" onclick="changepic(this.src)">
                        </a>
                    </div></div><div class="owl-item" style="width: 194.08px;"><div class="item">
                        <a>
                            <img src="/templates/user/access/img/products/huawei-mate-20-pro-green-600x600.jpg" onclick="changepic(this.src)">
                        </a>
                    </div></div></div></div><div class="owl-nav disabled"><button type="button" role="presentation" class="owl-prev"><span aria-label="Previous">‹</span></button><button type="button" role="presentation" class="owl-next"><span aria-label="Next">›</span></button></div><div class="owl-dots"><button role="button" class="owl-dot active"><span></span></button><button role="button" class="owl-dot"><span></span></button><button role="button" class="owl-dot"><span></span></button><button role="button" class="owl-dot"><span></span></button><button role="button" class="owl-dot"><span></span></button><button role="button" class="owl-dot"><span></span></button><button role="button" class="owl-dot"><span></span></button></div></div>
                </div>
            </div>
        </div>

        <div id="goiYSanPham"><div class="khungSanPham" style="border-color: #434aa8">
				<h3 class="tenKhung" style="background-image: linear-gradient(120deg, #434aa8 0%, #ec1f1f 50%, #434aa8 100%);">* Bạn có thể thích *</h3>
				<div class="listSpTrongKhung flexContain">
				<c:forEach var="product" items="${listProduct }">
					<li class="sanPham"><a href="product_detail?id=${product.id }">
							<img
							src="/templates/images/${product.image}"
							alt="">
							<h3>${product.name}</h3>
							<div class="price">
								<fmt:formatNumber value="${product.price}" type="currency" currencySymbol="" maxFractionDigits="0"></fmt:formatNumber> đ
							</div>
							<div class="tooltip">
								<button class="themvaogio"
									onclick="themVaoGioHang; return false;">
									<span class="tooltiptext" style="font-size: 15px;">Xem chi tiết</span> +
								</button>
							</div>
					</a></li>
				</c:forEach>
	</div></div></div>
	
		<div class="pagination">
		<ul id="pagination" class="saleoff"></ul>
		</div>
    </section>
<script>
document.addEventListener("DOMContentLoaded", function () {
	  var productTitle = document.querySelector(".chitietSanpham h1").textContent;
	  var firstTwoChars = productTitle.substring(0, 2);
	  var productList = document.querySelectorAll("#goiYSanPham .listSpTrongKhung .sanPham");
	  var displayedCount = 0;
	  
	  for (var i = 0; i < productList.length; i++) {
	    var productName = productList[i].querySelector("h3").textContent;
	    var firstTwoCharsProduct = productName.substring(0, 2);
	    
	    if (firstTwoCharsProduct === firstTwoChars && displayedCount < 10) {
	      productList[i].style.display = "block";
	      displayedCount++;
	    } else {
	      productList[i].style.display = "none";
	    }
	  }
	});
</script>
   
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</body></html>
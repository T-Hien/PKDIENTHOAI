<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="body">
	<div class="banner">

		<div class="slideshow-container">
			<div class="slide">
				<a href="/user/product_detail?id=1"> <img
					src="/templates/user/access/img/banners/banner1.png" alt="Image 1"
					class="slideImg">
				</a>
			</div>
			<div class="slide">
			<a href="/user/product_detail?id=1">
				<img src="/templates/user/access/img/banners/banner2.png"
					alt="Image 2" class="slideImg"></a>
			</div>
			<div class="slide">
			<a href="/user/product_detail?id=1">
				<img src="/templates/user/access/img/banners/banner3.png"
					alt="Image 3" class="slideImg"></a>
			</div>
			<div class="slide">
			<a href="/user/product_detail?id=1">
				<img src="/templates/user/access/img/banners/banner4.png"
					alt="Image 4" class="slideImg"></a>
			</div>
		</div>

		<script type="text/javascript">
	const slides = document.querySelectorAll('.slide');
	let currentIndex = 0;

	function showSlide(index) {
	  slides.forEach((slide, i) => {
	    if (i === index) {
	      slide.classList.add('active');
	    } else {
	      slide.classList.remove('active');
	    }
	  });
	}

	function nextSlide() {
	  currentIndex = (currentIndex + 1) % slides.length;
	  showSlide(currentIndex);
	}

	setInterval(nextSlide, 3000); // Chuyển đổi hình ảnh mỗi 3 giây (3000ms)

	</script>

		<div class="home-right ">

			<div class="ty-banner__image-wrapper">
				<a href="/user/product_detail?id=1"> <img loading="lazy"
					class="smaillBanner" id="det_img_1648955545"
					data-src="/templates/user/access/img/banners/smallBanner1.png"
					alt="" title="" width="265" height="120"
					src="/templates/user/access/img/banners/smallBanner1.png">
				</a>
			</div>

			<div class="ty-banner__image-wrapper">
				<a href="/user/product_detail?id=1"> <img
					loading="lazy" class="smaillBanner" id="det_img_878014499"
					data-src="/templates/user/access/img/banners/smallBanner2.jpg"
					alt="" title="" width="265" height="120"
					src="/templates/user/access/img/banners/smallBanner2.jpg">
				</a>
			</div>

		</div>

	</div>



	<div class="phukiengiare_categories-body">

		<div class="categories_icons">

			<a class="categories_icons-item"
				href="product?categoryId=dm15"
				style="background-color: #ffff00; background-image: url('https://cdn.phukiengiare.com/images/icon_category/90/icon-sac-du-phong.png')">
				<p class="categories_icons-name" style="color: #000000;">Sạc dự
					phòng</p>
			</a> <a class="categories_icons-item"
				href="product?categoryId=dm16"
				style="background-color: #ffff00; background-image: url('https://cdn.phukiengiare.com/images/icon_category/90/icon-tai-nghe_a208-c3.png')">
				<p class="categories_icons-name" style="color: #000000;">Tai
					nghe Bluetooth</p>
			</a> <a class="categories_icons-item"
				href="product?categoryId=dm17"
				style="background-color: #ffff00; background-image: url('https://cdn.phukiengiare.com/images/icon_category/90/icon-cap-sac.png')">
				<p class="categories_icons-name" style="color: #000000;">Cáp,
					sạc điện thoại</p>
			</a> <a class="categories_icons-item"
				href="product?categoryId=dm18"
				style="background-color: #ffff00; background-image: url('https://cdn.phukiengiare.com/images/icon_category/90/icon-cu-sac.png')">
				<p class="categories_icons-name" style="color: #000000;">Củ sạc
					điện thoại</p>
			</a> <a class="categories_icons-item"
				href="product?categoryId=dm19"
				style="background-color: #ffff00; background-image: url('https://cdn.phukiengiare.com/images/icon_category/90/icon-gia-do-dt.png')">
				<p class="categories_icons-name" style="color: #000000;">Giá đỡ
					điện thoại</p>
			</a> <a class="categories_icons-item"
				href="product?categoryId=dm20"
				style="background-color: #ffff00; background-image: url('https://cdn.phukiengiare.com/images/icon_category/90/icon-dan-cuong-luc.png')">
				<p class="categories_icons-name">Cường Lực</p>
			</a> <a class="categories_icons-item"
				href="product?categoryId=dm21"
				style="background-color: #ffff00; background-image: url('https://cdn.phukiengiare.com/images/icon_category/90/icon-tai-nghe-day.png')">
				<p class="categories_icons-name" style="color: #000000;">Tai
					nghe có dây</p>
			</a> <a class="categories_icons-item"
				href="product?categoryId=dm22"
				style="background-color: #ffff00; background-image: url('https://cdn.phukiengiare.com/images/icon_category/90/icon-the-nho.png')">
				<p class="categories_icons-name" style="color: #000000;">Thẻ nhớ</p>
			</a> <a class="categories_icons-item"
				href="product?categoryId=dm23"
				style="background-color: #ffff00; background-image: url('https://cdn.phukiengiare.com/images/icon_category/90/icon-loa-bluetooth.png')">
				<p class="categories_icons-name" style="color: #000000;">Loa
					Bluetooth</p>
			</a>

		</div>

	</div>
	<!--End lọc theo danh mục  -->

	<img src="/templates/user/access/img/banners/blackFriday.gif" alt=""
		style="width: 100%;"> <br>

	<div class="companyMenu group flexContain">

		<a href="product?categoryId=dm1"><img
			src="/templates/user/access/img/company/Apple.jpg"></a><a
			href="product?categoryId=dm2"><img
			src="/templates/user/access/img/company/Samsung.jpg"></a><a
			href="product?categoryId=dm3"><img
			src="/templates/user/access/img/company/Oppo.jpg"></a><a
			href="product?categoryId=dm4"><img
			src="/templates/user/access/img/company/Nokia.jpg"></a><a
			href="product?categoryId=dm5"><img
			src="/templates/user/access/img/company/Huawei.jpg"></a><a
			href="product?categoryId=dm6"><img
			src="/templates/user/access/img/company/Xiaomi.png"></a><a
			href="product?categoryId=dm7"><img
			src="/templates/user/access/img/company/Realme.png"></a><a
			href="product?categoryId=dm8"><img
			src="/templates/user/access/img/company/Vivo.jpg"></a><a
			href="product?categoryId=dm9"><img
			src="/templates/user/access/img/company/Philips.jpg"></a><a
			href="product?categoryId=dm10"><img
			src="/templates/user/access/img/company/Mobell.jpg"></a><a
			href="product?categoryId=dm11"><img
			src="/templates/user/access/img/company/Mobiistar.jpg"></a><a
			href="product?categoryId=dm12"><img
			src="/templates/user/access/img/company/Itel.jpg"></a><a
			href="product?categoryId=dm13"><img
			src="/templates/user/access/img/company/Coolpad.png"></a><a
			href="product?categoryId=dm14"><img
			src="/templates/user/access/img/company/HTC.jpg"></a>

	</div>

	<div class="flexContain">

		<div class="pricesRangeFilter dropdown">
			<button class="dropbtn">Giá tiền</button>
			<div class="dropdown-content">
				<a href="findbycenterprice?price1=0&price2=2000000">Dưới 2 triệu</a><a
					href="findbycenterprice?price1=2000000&price2=4000000">Từ 2 - 4
					triệu</a><a href="findbycenterprice?price1=4000000&price2=7000000">Từ
					4 - 7 triệu</a><a
					href="findbycenterprice?price1=7000000&price2=13000000">Từ 7 -
					13 triệu</a><a href="findbycenterprice?price1=13000000&price2=0">Trên
					13 triệu</a>
			</div>
		</div>

		<div class="sortFilter dropdown">
			<button class="dropbtn">Sắp xếp</button>
			<div class="dropdown-content">
				<a href="price?sortType=price-asc">Giá tăng dần</a> <a
					href="price?sortType=price-desc">Giá giảm dần</a> <a
					href="price?sortType=name-asc">Tên A-Z</a><a
					href="price?sortType=name-desc">Tên Z-A</a>
			</div>
		</div>

	</div>
	<!-- End khung chọn bộ lọc -->

	<div class="choosedFilter flexContain">
		<a id="deleteAllFilter" style="display: block;" href="product.html">
			<h3>Xóa bộ lọc</h3>
		</a>
	</div>
	<!-- Những bộ lọc đã chọn -->
	<hr>

	<!-- Mặc định mới vào trang sẽ ẩn đi, nế có filter thì mới hiện lên -->
	<div class="contain-products" style="">
		<div class="filterName">
			<input type="text" placeholder="Lọc trong trang theo tên..."
				onkeyup="filterProductsName(this)">
		</div>
		<!-- End FilterName -->

		<ul id="products" class="homeproduct group flexContain">
			<div id="khongCoSanPham">
				<i class="fa fa-times-circle"></i> Không có sản phẩm nào
			</div>
			<!-- End Khong co san pham -->

			<c:forEach var="product" items="${listProduct }">
				<li class="sanPham"><a href="product_detail?id=${product.id }">
						<img src="/templates/images/${product.image}" alt="">
						<h3>${product.name}</h3>
						<div class="price">
							<fmt:formatNumber value="${product.price}" type="currency"
								currencySymbol="" maxFractionDigits="0"></fmt:formatNumber>
							đ

						</div>
						<div class="tooltip">
							<button class="themvaogio"
								onclick="themVaoGioHang; return false;">
								<span class="tooltiptext" style="font-size: 15px;">Xem
									chi tiết</span> +
							</button>
						</div>
				</a></li>
			</c:forEach>



			<!-- End products -->
	</div>
	<div class="pagination">
		<ul id="pagination" class="saleoff"></ul>
	</div>
	<!-- Div hiển thị khung sp hot, khuyến mãi, mới ra mắt ... -->
	<div class="contain-khungSanPham"></div>

	</section>
	<!-- End Section -->

	<!-- /form -->


	<!-- /sign up -->
</div>
<!-- tab-content -->

</div>
<!-- /taikhoan -->
</div>
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

<i class="fa fa-arrow-up" id="goto-top-page" onclick="gotoTop()"></i>

<script>
		//phân trang
		
		const products = document.querySelectorAll(".sanPham");// lấy tất cả item ra
		const itemsPerPage = 8; // Số sản phẩm mỗi trang
		const numPages = Math.ceil(products.length / itemsPerPage); // Tổng số trang
		
		// Hiển thị danh sách sản phẩm cho trang đầu tiên
		showPage(1);
		
		// Tạo các nút liên kết phân trang
		const pagination = document.querySelector(".pagination");
		for (let i = 1; i <= numPages; i++) {
		  const li = document.createElement("li");
		  const link = document.createElement("a");
		  link.textContent = i;
		  link.href = "#";
		  if (i === 1) {
		    li.classList.add("active");
		  }
		  
		  li.appendChild(link);
		  pagination.appendChild(li);
		
		  // Xử lý sự kiện click cho từng nút liên kết
		  link.addEventListener("click", function (event) {
		    event.preventDefault();
		    // Xóa class active của tất cả các nút liên kết khác
		    const activeLink = pagination.querySelector("li.active");
		    if (activeLink) activeLink.classList.remove("active");
		    // Thêm class active vào nút liên kết được click
		    li.classList.add("active");
		
		    showPage(i);
		  });
		}
		
		// Hiển thị sản phẩm cho trang được chọn
		function showPage(pageNumber) {
		  const startIndex = (pageNumber - 1) * itemsPerPage;
		  const endIndex = startIndex + itemsPerPage;
		  for (let i = 0; i < products.length; i++) {
		    if (i >= startIndex && i < endIndex) {
		      products[i].style.display = "block";
		    } else {
		      products[i].style.display = "none";
		    }
		  }
		}
//end phân trang
		
</script>

<link rel="stylesheet" type="text/css"
	href="owlcarousel/owl.carousel.min.css">
<link rel="stylesheet" type="text/css"
	href="owlcarousel/owl.theme.default.min.css">
<script src="owlcarousel/owl.carousel.min.js"></script>
</div>
</html>
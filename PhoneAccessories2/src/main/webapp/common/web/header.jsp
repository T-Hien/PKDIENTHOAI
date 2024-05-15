<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<div class="headerAll" style="
    background-color: white;">
	<div class="header group" style="
    background-color: white;" >
		<div class="logo">
			<a href="http://localhost:8080/user/product"> <img
				src="/templates/user/access/img/logo.png"
				"
			alt="Trang chủ Smartphone Store"
				title="Trang chủ Smartphone Store">
			</a>
		</div>
		<!-- End Logo -->


		<div class="content">
			<div class="search-header"
				style="position: relative; left: 162px; top: 1px;">
				<form class="input-search" method="get" action="/user/search">
					<div class="autocomplete">
						<input id="search-box" name="keyword" autocomplete="off"
							type="text" placeholder="Nhập từ khóa tìm kiếm...">
						<button type="submit">
							<i class="fa fa-search"></i> Tìm kiếm
						</button>
					</div>
				</form>
				<!-- End Form search -->

			</div>
			<!-- End Search header -->

			<script type="text/javascript">
				function search() {
					var keyword = document.getElementById("searchInput").value;
					window.location.href = "/search?keyword=" + keyword;
				}
			</script>

			<div class="tools-member">
				<div class="member">
					<c:if test="${account.username == null }">
						<a href="/login"> <i class="fa fa-user"></i>Tài khoản
						</a>
					</c:if>
					<c:if test="${account.username != null }">
						<a href="/profile"> <i class="fa fa-user"></i> <span>${account.username }</span>
						</a>
						<div class="menuMember hide">
							<a href="/user/profile"> <span>Trang người dùng</span></a> <a
								onclick="if(window.confirm('Xác nhận đăng xuất ?')) logOut();">
								<span>Đăng xuất</span>
							</a>
						</div>
					</c:if>
					<!-- End Member -->

					<div class="cart">
						<a href="/cart-pay/cart"> <i class="fa fa-shopping-cart"></i> <span>Giỏ
								hàng</span> <span class="cart-number"></span>
						</a>
					</div>
					<!-- End Cart -->

					<!--<div class="check-order">
                    <a>
                        <i class="fa fa-truck"></i>
                        <span>Đơn hàng</span>
                    </a>
                </div> -->
				</div>
				<!-- <div class="cart">
					<a href="/user/order"> <i class="fa fa-solid fa-truck"></i> <span>Tra
							cứu đơn hàng</span> <span class="cart-number"></span>
					</a>
				</div> -->

				<!-- <div class="member">
					<security:authorize access="isAnonymous()">
						<a href="/login"> <i class="fa fa-user"></i>Tài khoản
						</a>
					</security:authorize> -->
					



				</div>
				<!-- End Member -->

				<div class="cart">
					<a href="/cart-pay/cart"> <i class="fa fa-shopping-cart"></i> <span>Giỏ
							hàng</span> <span class="cart-number"></span>
					</a>
				</div>
				<!-- End Cart -->

				<!--<div class="check-order">
                    <a>
                        <i class="fa fa-truck"></i>
                        <span>Đơn hàng</span>
                    </a>
                </div> -->
			</div>
			<!-- End Tools Member -->
		</div>
		<!-- End Content -->
	</div>
</div>
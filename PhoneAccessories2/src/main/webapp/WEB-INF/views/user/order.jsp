<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Thông tin đơn hàng</title>
</head>
<body>
    <h1>Thông tin đơn hàng</h1>
    
    <c:if test="${not empty order}">
        <p>Mã đơn hàng: ${order.orderId}</p>
        <p>Ngày đặt hàng: ${order.orderDate}</p>
        <p>Tổng giá trị: ${order.totalAmount}</p>
        <!-- Hiển thị các thông tin khác của đơn hàng -->
    </c:if>
    
    <c:if test="${empty order}">
        <p>Không tìm thấy đơn hàng.</p>
    </c:if>
</body>
</html>

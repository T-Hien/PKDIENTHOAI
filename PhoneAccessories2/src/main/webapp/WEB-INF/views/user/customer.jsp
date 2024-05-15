
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Profile</title>
</head>
<body>
	<div class="profile">
		<h1>Profile</h1>
		<form action="/profile" method="POST" enctype="multipart/form-data">
			<div>
				<label for="fullname">Tên</label> <input type="text"
					id="fullname" name="fullname" value="${customer.name}">
			</div>
			<div>
				<label for="fullname">Họ</label> <input type="text"
					id="fullname" name="fullname" value="${customer.surname}">
			</div>
			<div>
				<label for="address">Address:</label> <input type="text"
					id="address" name="address" value="${customer.address}">
			</div>
			<div>
				<label for="birthdate">Birthdate:</label> <input type="date"
					id="birthdate" name="birthdate" value="${customer.birthdate}">
			</div>
			<div>
				<label for="phone">Phone:</label> <input type="tel" id="phone"
					name="phone" value="${customer.phone}">
			</div>
			<div>
				<label for="avatar">Avatar:</label> <input type="file" id="avatar"
					name="avatar">
			</div>
			<button type="submit">Save</button>
		</form>
	</div>

</body>
</html>

</body>
</html>

</body>
</html>
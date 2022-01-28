<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
input[type=text], select {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=submit] {
	width: 100%;
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type=submit]:hover {
	background-color: #45a049;
}

div {
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px;
}

.input[type=button], input[type=submit], input[type=reset] {
	background-color: #4CAF50;
	border: none;
	color: white;
	padding: 16px 32px;
	text-decoration: none;
	margin: 4px 2px;
	cursor: pointer;
}

.dropbtn {
	background-color: #4CAF50;
	color: white;
	padding: 16px;
	font-size: 16px;
	border: none;
	cursor: pointer;
}

.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #FA3004;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropdown-content a:hover {
	background-color: #FF9680
}

.dropdown:hover .dropdown-content {
	display: block;
}

.dropdown:hover .dropbtn {
	background-color: #E33915;
}
.
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="navbar.jsp"%>
	<%
	String message = (String) request.getAttribute("message");
	if (message != null) {
	%>
	<h1><%=message%></h1>
	<%
	}
	%>

	<form action="create" method="get">
		Enter the Name : <input type="text" name="name"> <br>
		<div class="dropdown">
			Select Brand : <select class="dropbtn" name="brand">
				<option value="LG">LG</option>
				<option value="SONY">SONY</option>
				<option value="ONIDA">ONIDA</option>
				<option value="MI" selected>MI</option>
			</select>
		</div>
		</div>
		<br> Enter Cost : <input type="text" name="cost"> <br>
		Enter the Quantity : <input type="text" name="qnt"> <br>
		<br>
		<div class="dropdown">
			Select Brand : <select class="dropbtn" name="type">
				<option value="TV" selected>TV</option>
				<option value="PHONE">PHONE</option>
				<option value="COMPUTER">COMPUTER</option>
			</select>
		</div>
		</div>
		<br> <input type="submit" value="Submit">
	</form>

</body>
</html>
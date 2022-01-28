<%@page import="com.ty.dto.Item"%>
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
	Item item = (Item) request.getAttribute("myItem");
	%>
	<table>
		<form action="edit" method="get">
			ID :<input type="number" name="id" readonly="readonly" value=<%=item.getId()%>><br> 
			NAME :<input	type="text" name="name" value=<%=item.getName()%>><br>
			BRAND :<input type="text" name="brand" value=<%=item.getBrand()%>><br>
			COST :<input type="text" name="cost" value=<%=item.getCost()%>><br>
			QUANTITY :<input type="number" name="qnt" value=<%=item.getQnt()%>><br> 
			TYPE :<input	type="text" name="type" value=<%=item.getType()%>><br>
			<br> <input type="submit" value="Udate">
		</form>
	</table>
</body>
</html>
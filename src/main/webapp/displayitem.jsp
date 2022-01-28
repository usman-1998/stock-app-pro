<%@page import="com.ty.dto.Item"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #f2f2f2
}

th {
	background-color: #04AA6D;
	color: white;
}
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}


.button3 {background-color: #f44336;} 

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
	<%
	ArrayList<Item> items = (ArrayList<Item>)request.getAttribute("items");
	%>
	<table border="">
		<form>
			<tr>
				<th>ID</th>
				<th>NAME</th>
				<th>BRAND</th>
				<th>COST</th>
				<th>QUANTITY</th>
				<th>TYPE</th>
				<th>DELETE</th>
				<th>EDIT</th>
			</tr>
			<%
			for (Item i : items) {
			%>
			<tr>
				<td><%=i.getId()%></td>
				<td><%=i.getName()%></td>
				<td><%=i.getBrand()%></td>
				<td><%=i.getCost()%></td>
				<td><%=i.getQnt()%></td>
				<td><%=i.getType()%></td>
				<td><button class="button button3">
						<a href="delete?id=<%=i.getId()%>"
							style="color: white; font-style: normal; font-family: serif;">Delete</a>
					</button></td>
				<td><a href="getitem?id=<%=i.getId()%>">EDIT</a></td>
			</tr>
			<%
			}
			%>
		</form>
	</table>
</body>
</html>
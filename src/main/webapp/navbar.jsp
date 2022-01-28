<!DOCTYPE html>
<html>
<head>
<style>
ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	width: 200px;
	background-color: #f1f1f1;
}

li a {
	display: block;
	color: #000;
	padding: 8px 0 8px 16px;
	text-decoration: none;
}

/* Change the link color on hover */
li a:hover {
	background-color: #555;
	color: white;
}
</style>
</head>
<body>


	<ul>
		<li><a href="createitem.jsp">Create item</a></li>
		<li><a href="display">Display</a></li>
		<div class="topnav">
			<div class="login-container">
				<form action="logout">
					<button type="submit">Logout</button>
				</form>
			</div>
		</div>
	</ul>
</body>
</html>

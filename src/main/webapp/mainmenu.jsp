<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>


</head>
<body style="text-align:center">

<jsp:include page="AdminHeader.jsp"></jsp:include>

<h3>WELCOME TO ADMIN FUNCTION</h3>


<form>

<a href="?pageName=requestlist.jsp">DONOR LIST</a>
<br/>
<br>

<a href="?pageName=adminuser.jsp">ADMIN USER</a>
<br/>
<br>


</form>
</body>
</html>
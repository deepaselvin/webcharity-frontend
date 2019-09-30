<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<body style="text-align:center">



</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<br><br><br>
<h2>**********DONATE TO NEEDY******</h2><br>
<div class="view" id="view">
        <%
            String pageName = request.getParameter("pageName");

            if (pageName == null || "".equals(pageName)) {
                pageName = "index.jsp";
            }
            // out.println(pageName);
        %>

        <jsp:include page="<%=pageName%>"></jsp:include>
    </div>

</body>
</html>
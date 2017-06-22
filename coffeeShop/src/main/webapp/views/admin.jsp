<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin User</title>
</head>
<body>
<h2>Well Come Admin</h2>
<security:authorize access="isAuthenticated()">
   User Name: <security:authentication property="principal.username" /> 
</security:authorize>
	<p> <a href="<c:url value="/logout" />">logout </a>	</p>
		
	  <br>
	  <br>
	  
	   	
	<a href="<c:url value="/products/manage" />">Manage Products</a> <br>
	<a href="<c:url value="/customers/manage" />">Manage Customers</a><br>	
	<a href="<c:url value="/orders/manage" />">Manage orders </a> <br>
	
		
		
</body>
</html>
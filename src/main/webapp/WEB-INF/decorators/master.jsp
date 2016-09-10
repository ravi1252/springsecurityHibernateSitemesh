<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/includes/taglibs.jsp"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE HTML>
<html>
<head>
    <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
    
	
    <script type="text/javascript" src="<c:url value="/resources/js/jquery-2.0.3.min.js"/>"></script>
	
    <decorator:head/>

</head>

<body>
 	
 	<header>
	 	<sec:authorize access="isAuthenticated()">
			<a style="border-radius: 5px;  border: 1px solid #D7E1E8 !important;" href="<c:url value="/j_spring_security_logout"/>">
				Logout
			</a>
		</sec:authorize>						
		<sec:authorize access="isAnonymous()">
			<a href="/login">Login</a>
		</sec:authorize>
 	</header>
 	
	<div class="middleDiv" id="middleDiv">
	
		<decorator:body /> 
		
	</div>
					
				
</body>
</html>

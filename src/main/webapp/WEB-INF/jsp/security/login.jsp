<%@ page language="java" contentType="text/html; charset=Shift-JIS" pageEncoding="UTF-8"%>
<%@ include file="../includes/taglibs.jsp"%>
<div style="text-align:center;">
	<c:if test="${not empty error}">
		<div class="errorblock">
			Unable to login: <br />
			${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
		</div>
	</c:if>
	
	<form name="login-form" action="<c:url value='j_spring_security_check' />" method="POST">
	
	    <div class="header">
		    <h1>Login Form</h1>
	    </div>
		
	    <div class="content">
			<input name="j_username" placeholder="Eamil" id="username" type="text" class="input username" />
			<input  name="j_password" placeholder="Password" type="password" id="password" class="input password"/>
	    </div>
	    
	    <div class="footer">
	    	<input type="submit" name="submit" value="Login" class="button" />
	    </div>
	
	</form>
</div>
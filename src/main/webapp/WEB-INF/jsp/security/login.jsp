<%@ page language="java" contentType="text/html; charset=Shift-JIS" pageEncoding="UTF-8"%>
<%@ include file="../includes/taglibs.jsp"%>
<c:if test="${not empty error}">
	<div class="errorblock">
		Your login attempt was not successful, try again.<br /> Caused :
		${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
	</div>
</c:if>
<form name="login-form" id="loginForm" class="login-form" action="<c:url value='j_spring_security_check' />" method="POST">

	<!--HEADER-->
    <div class="header">
    <!--TITLE--><h1>Login Form</h1><!--END TITLE-->
    <!--DESCRIPTION--><span>Fill out the form below to login to admin panel.</span><!--END DESCRIPTION-->
    </div>
    <!--END HEADER-->
	
	<!--CONTENT-->
    <div class="content">
	<!--USERNAME-->
	<input name="j_username" placeholder="Eamil" id="username" type="text" class="input username" /><!--END USERNAME-->
    <!--PASSWORD-->
	<input  name="j_password" placeholder="Password" type="password" id="password" class="input password"/><!--END PASSWORD-->
    </div>
    <!--END CONTENT-->
    <h5 style="text-align:right;margin-right:30px;"><a href="/changePassword">Change Password</a></h5>
    <!--FOOTER-->
    <div class="footer">
    <!--LOGIN BUTTON--><input type="submit" name="submit" value="Login" class="button" /><!--END LOGIN BUTTON-->
    </div>
    <!--END FOOTER-->

</form>
</body>
</html>
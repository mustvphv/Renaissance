<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Log In</title>
        <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/login-page.css"/>"/>
        <link rel="shortcut icon" href="#" />
    </head>
    <body>
        <form method="post" action="user_access">
            <fieldset>
                <legend>Log In</legend>
                
                <label for="username"> Username <span class="required">*</span></label>
                <input type="username" id="username" name="username" value="<c:out value="${username.email}"/>" size="20" maxlength="60" />
                <span class="error">${loginForm.errors['username']}</span>
                <br />
                
                <label for="password"> Password <span class="required">*</span></label>
                <input type="password" id="password" name="password" value="<c:out value="${password.email}"/>" size="20" maxlength="60" />
                <span class="error">${loginForm.errors['password']}</span>
                <br />


                <input type="submit" value="Log in" class="logInClass" />
                <br />
                
            </fieldset>
        </form>
    </body>
</html>
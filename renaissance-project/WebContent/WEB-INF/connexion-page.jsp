<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Inscription</title>
        <link type="text/css" rel="stylesheet" href="inscription-page.css" />
    </head>
    <body>
        <form method="post" action="inscription">
            <fieldset>
                <legend>Connection</legend>

                <label for="username">Username <span class="required">*</span></label>
                <br />

                <label for="password">Password <span class="required">*</span></label>
                <br />

                <label for="confirmation">Password Confirmation <span class="required">*</span></label>
                <br />

                <input type="submit" value="Log in" class="logInClass" />
                <br />
                
            </fieldset>
        </form>
    </body>
</html>
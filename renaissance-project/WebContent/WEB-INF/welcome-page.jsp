<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Renaissance-Acceuil</title>
        <link type="text/css" rel="stylesheet" href="form.css" />
    </head>
    <body>
            <fieldset>
                <legend>Welcome to the app Renaissance, a Hospital Management System</legend>
                <p>You can log in or register.</p>

                <br/>
        <!--  <form method="post" action="user_access"> -->
        <form method="get" action="user_access">   
                <input type="submit" value="Log in" class="logInClass" />
                
        </form>
                <br/>
                <br/>
        <form method="post" action="inscription">
                <input type="submit" value="Register" class="registerClass" />
        </form>
                <br/>
            </fieldset>
        </form>
    </body>
</html>
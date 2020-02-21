<%@ page pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Test</title>
    </head>

    <body>
        <p>page generated with JSP.</p>
        <p>
            <% 
            String attribut = (String) request.getAttribute("test");
            out.println( attribut );
            
            String parametre = request.getParameter( "user" );
            out.println( parametre );
            %>
        </p>
        
        <p>
            Bean test :
            <%	
	    com.ren_user.beans.User notreBean = (com.ren_user.beans.User) request.getAttribute("user-informations");
	    out.println( notreBean.getFirstname() );
            out.println( notreBean.getLastname() );
            %>
        </p>
    </body>
</html>
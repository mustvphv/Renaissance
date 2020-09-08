package com.ren.forms;


import java.util.HashMap;
import java.util.Map;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;

import com.ren_user.beans.*;


public class RegisterForm {

    
    private static final String FormField_FIRSTNAME = "firstname";
    private static final String FormField_LASTNAME = "lastname";
    private static final String FormField_USERNAME = "username";
    private static final String FormField_EMAIL = "email";
    private static final String FormField_STATUS = "status";
    private static final String FormField_DEPARTMENT = "department";
    private static final String FormField_PASSWORD = "password";
    private static final String FormField_CONFIRMATION = "confirmation";

    
    private String registrationStatus;
    private Map<String, String> errors = new HashMap<String, String>();

    public String getRegistrationStatus() {
        return registrationStatus;
    }

    public Map<String, String> getErrors() {
        return errors;
    }
    
    public User RegisterUser(HttpServletRequest request) {        
        String firstname = getValueFormField(request, FormField_FIRSTNAME);
        String lastname = getValueFormField(request, FormField_LASTNAME);
        String username = getValueFormField(request, FormField_USERNAME);
        String email = getValueFormField(request, FormField_EMAIL);
        String status = getValueFormField(request, FormField_STATUS);
        String department = getValueFormField(request, FormField_DEPARTMENT);
        String password = getValueFormField(request, FormField_PASSWORD);
        String confirmation = getValueFormField(request, FormField_CONFIRMATION);
        

        User current_user = new User();
        
        try {
            checkFirstname(firstname);
        } catch (Exception e) {
            setError(FormField_FIRSTNAME, e.getMessage() );
        }
        current_user.setFirstname(firstname);
        
        try {
            checkLastname(lastname);
        } catch (Exception e) {
            setError(FormField_LASTNAME, e.getMessage() );
        }
        current_user.setLastname(lastname);
        
        try {
            checkUsername(username);
        } catch (Exception e) {
            setError(FormField_USERNAME, e.getMessage() );
        }
        current_user.setUsername(username);
        
        try {
            checkEmail(email);
        } catch (Exception e) {
            setError(FormField_EMAIL, e.getMessage() );
        }
        current_user.setEmail(email);
        
        try {
            checkStatus(status);
        } catch (Exception e) {
            setError(FormField_STATUS, e.getMessage() );
        }
        current_user.setStatus(status);
        
        try {
            checkDepartment(department);
        } catch (Exception e) {
            setError(FormField_DEPARTMENT, e.getMessage() );
        }
        current_user.setDepartment(department);

        try {
            checkPassword(password, confirmation);
        } catch (Exception e) {
            setError(FormField_PASSWORD, e.getMessage() );
            setError(FormField_CONFIRMATION, null );
        }
        current_user.setPassword(password);


        if (errors.isEmpty()) {
            registrationStatus = "Succesful registration";
        } else {
            registrationStatus = "Registration failed";
        }

        return current_user;
    }

    
    
    private void checkFirstname(String firstname) throws Exception {
    	
        char[] autorizedLetters = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 
        		'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z',
        		'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o',
        		'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y','z',
        		'à', 'â', 'ä', 'é', 'è', 'ê', 'ë', 'ï', 'î', 'ô', 'ö', 'ù', 'û', 'ü', 'ÿ', 'ç',
        		'À', 'Â', 'Ä', 'É', 'È', 'Ê', 'Ë', 'Î', 'Ï', 'Ô', 'Ö', 'Ù', 'Û', 'Ü', 'Ÿ', 'Ç'
        		};
        
        String autorizedLettersStr = new String(autorizedLetters);
    	
        if (firstname != null && firstname.length() < 2){
            throw new Exception("Firstname must contain at least 2 letters.");
        }
        else if(firstname != null && !firstname.matches(".*[" + autorizedLettersStr + "].*")) {
			throw new Exception("Firstname must contain valid letters");
		}
        else if(firstname != null && firstname.matches(".*[" + autorizedLettersStr + "].*")) {
        	//throw new Exception("bonjour");
        }
        else{
        	throw new Exception("You have to enter a first name");
        }
      
    }
    
    private void checkLastname(String lastname) throws Exception {
        char[] autorizedLetters = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 
        		'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z',
        		'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o',
        		'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y','z',
        		'à', 'â', 'ä', 'é', 'è', 'ê', 'ë', 'ï', 'î', 'ô', 'ö', 'ù', 'û', 'ü', 'ÿ', 'ç',
        		'À', 'Â', 'Ä', 'É', 'È', 'Ê', 'Ë', 'Î', 'Ï', 'Ô', 'Ö', 'Ù', 'Û', 'Ü', 'Ÿ', 'Ç'
        		};
        
        String autorizedLettersStr = new String(autorizedLetters);
    	
        if (lastname != null && lastname.length() < 2) {
            throw new Exception("Lastname must contain at least 2 letters.");
        }
        else if (lastname.matches(".*[" + autorizedLettersStr + "].*")) {
			throw new Exception("Lastname must contain valid letters");
		}
        else {
        	throw new Exception("You have to enter a last name");
        }    	
    }
    
    private void checkUsername(String username) throws Exception {
        if (username != null && username.length() < 8) {
            throw new Exception("Username must contain at least 8 letters.");
        }
        else {
        	throw new Exception("You have to enter a username");
        }
    }
    
    
    private void checkEmail(String email) throws Exception {
        if(email != null) {
            if ( !email.matches( "([^.@]+)(\\.[^.@]+)*@([^.@]+\\.)+([^.@]+)" ) ) {
                throw new Exception( "Invalid email address." );
            }
        } else {
            throw new Exception( "You have to enter an email address." );
        }
    }
    
    private void checkStatus(String status) throws Exception {
        if(status == null) {
        	throw new Exception("You have to enter a status");
        }
    }
    
    private void checkDepartment(String department) throws Exception {
        if(department == null) {
        	throw new Exception("You have to enter a department");
        }
    }
    
    private void checkPassword(String password, String confirmation) throws Exception {
        if (password != null && confirmation != null) {
            if ( !password.equals(confirmation) ) {
                throw new Exception( "Passwords are not equivalent." );
            } else if (password.length() < 8) {
                throw new Exception("The password must contain at least 8 characters.");
            }
        } else {
            throw new Exception("You have to enter and confirm your password.");
        }
    }

    private void setError(String FormField, String message) {
        errors.put(FormField, message);
    }


    private static String getValueFormField( HttpServletRequest request, String FormFieldName) {
        String valeur = request.getParameter(FormFieldName);
        if ( valeur == null || valeur.trim().length() == 0 ) {
            return null;
        } else {
            return valeur.trim();
        }
    }
    
}
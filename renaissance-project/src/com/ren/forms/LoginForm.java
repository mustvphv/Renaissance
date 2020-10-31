package com.ren.forms;


import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.ren_user.beans.*;


public class LoginForm {
    private static final String FormField_USERNAME  = "username";
    private static final String FormField_PASSWORD   = "password";

    
    private String loginSuccessOrNot;
    private Map<String, String> errors = new HashMap<String, String>();

    public String getLoginSuccessOrNot() {
        return loginSuccessOrNot;
    }

    public Map<String, String> getErrors() {
        return errors;
    }
    
    public User inscrireUtilisateur( HttpServletRequest request ) {
        String username = getValueFormField(request, FormField_USERNAME);
        String password = getValueFormField(request, FormField_PASSWORD);

        User utilisateur = new User();

        try {
            usernameValidation(username);
        } catch (Exception e) {
            setErreur(FormField_USERNAME, e.getMessage() );
        }
        utilisateur.setUsername(username);

        try {
            passwordValidation(password);
        } catch ( Exception e ) {
            setErreur(FormField_PASSWORD, e.getMessage() );
        }
        utilisateur.setPassword(password);

        if (errors.isEmpty() ) {
        	loginSuccessOrNot = "Successful connection";
        } else {
        	loginSuccessOrNot = "Connection failed";
        }

        return utilisateur;
    }

    
    
    private void usernameValidation(String username) throws Exception {
        if (username != null && username.length() < 3 ) {
            throw new Exception( "Le nom d'utilisateur doit contenir au moins 3 caractères." );
        }
    }

    private void passwordValidation(String password) throws Exception {
        if (password != null ) {
            if ( !password.equals("bonjour") ) {
                throw new Exception( "Les mots de passe entrés sont différents, merci de les saisir à nouveau." );
            } else if (password.length() < 3 ) {
                throw new Exception( "Les mots de passe doivent contenir au moins 3 caractères." );
            }
        } else {
            throw new Exception( "Merci de saisir et confirmer votre mot de passe." );
        }
    }


    private void setErreur( String champ, String message ) {
        errors.put(champ, message);
    }

    /*
     * Méthode utilitaire qui retourne null si un champ est vide, et son contenu
     * sinon.
     */
    private static String getValueFormField( HttpServletRequest request, String fieldName) {
        String valeur = request.getParameter(fieldName);
        if ( valeur == null || valeur.trim().length() == 0 ) {
            return null;
        } else {
            return valeur.trim();
        }
    }
    
}
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Registration</title>
        <link type="text/css" rel="stylesheet" href="register-page.css" />
    </head>
    <body>
        <form method="post" action="registration_access">
            <fieldset>
                <legend>Registration</legend>
                <p>Please fill in the form to request registration.</p>

                <label for="firstname">Your firstname <span class="required">*</span></label>
                <input type="firstname" id="firstname" name="firstname" value="<c:out value="${user.firstname}"/>" size="20" maxlength="60" />
                <span class="error">${registerForm.errors['firstname']}</span>
                <br/>
                
                <label for="lastname">Your lastname <span class="required">*</span></label>
                <input type="lastname" id="firstname" name="lastname" value="<c:out value="${user.lastname}"/>" size="20" maxlength="60" />
                <span class="error">${registerForm.errors['lastname']}</span>
                <br/>

                <label for="username">Your username <span class="required">*</span></label>
                <input type="username" id="username" name="username" value="<c:out value="${user.username}"/>" size="20" maxlength="60" />
                <span class="error">${registerForm.errors['username']}</span>
                <br/>
                
                <label for="email">Your email address <span class="required">*</span></label>
                <input type="email" id="email" name="email" value="<c:out value="${user.email}"/>" size="20" maxlength="60" />
                <span class="error">${registerForm.errors['email']}</span>
                <br/>
                
                
                <label for="status">Your status: <span class="required">*</span></label>
                <br>
                <form>
                <select type="status" id="status" name="status" value="<c:out value="${user.status}"/>" size="1">
                <option>Administrator
                <option>General Practitioner
                <option>Medical Specialist
                <option>Nurse
                <option>Cleaning staff
                <option>Medical Consultant
                <option>Security staff
                <option>Car park staff
                <option>Student/Trainee
                <option>Medical Intern
                <option>Lawyer/Law expert
                <option>Pharmacist
                <option>Pharmacist's assistant
                </select>
                </form>
                <br/>
                <span class="error">${registerForm.errors['status']}</span>
                <br/>
                
                <label for="department">Your department: <span class="required">*</span></label>
                <br>
                <form>
                <select type="department" id="department" name="department" value="<c:out value="${user.department}"/>" size="1">
                <option>Pediatric Unit
                <option>Ophtalmology Unit
                <option>allergist
                <option>anesthesiologist
                <option>anesthetist
                <option>Oncology/Cancerology Unit
                <option>cardiologist
                <option>Ophtalmology/Optometry Unit
                <option>Dentistry/Dental Medecine
                <option>Occupational Medicine Unit
                <option>Plastic Surgery Unit
                <option>Orthopedic Surgery
                <option>Eye Surgery
                <option>Other Surgery Unit
                <option>Dermatology
                <option>Dietetics/Nutritionist Unit
                <option>Endocrinology Unit
                <option>a
                <option>b
                <option>c
                <option>d
                <option>e
                <option>Emergency Unit
                <option>Not affected
                </select>
                </form>
                <span class="error">${registerForm.errors['department']}</span>
                <br/>

                

                
                <label for="motdepasse">Mot de passe <span class="requis">*</span></label>
                <input type="password" id="motdepasse" name="password" value="" size="20" maxlength="20" />
                <span class="error">${registerForm.errors['password']}</span>
                <br/>

                <label for="confirmation">Confirmation du mot de passe <span class="requis">*</span></label>
                <input type="password" id="confirmation" name="confirmation" value="" size="20" maxlength="20" />
                <span class="error">${registerForm.errors['confirmation']}</span>
                <br/>


                <input type="submit" value="Registration" class="sansLabel" />
                <br/>
                
                <p class="${empty registerForm.errors ? 'succes' : 'error'}">${registerForm.resultat}</p>
                
                
                
            </fieldset>
        </form>
    </body>
</html>
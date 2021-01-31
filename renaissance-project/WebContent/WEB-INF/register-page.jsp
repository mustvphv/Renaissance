<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Registration</title>
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/register-page.css?5877788"/>"/>
        <link rel="shortcut icon" href="#" /> <!-- to fix "GEThttp://localhost:8080/favicon.ico" issue, source: "https://stackoverflow.com/a/43791570"-->
    </head>
    <body>
    <div>
        <form method="post" action="<c:url value="/registration_access"/>">
            <fieldset>
                <legend>Registration</legend>
                <p>Please fill in the form to request registration.</p>
                <br/>
                <br/>

                <label for="firstname">Your first name <span class="required">*</span></label>
                <input type="text" id="firstname" name="firstname" value="<c:out value="${currentUser.firstname}"/>" size="20" maxlength="60" />
                <span class="error">${registerForm.errors['firstname']}</span>
                <br/>
                <br/>
                <br/>
                
                <label for="lastname">Your last name <span class="required">*</span></label>
                <input type="text" id="firstname" name="lastname" value="<c:out value="${currentUser.lastname}"/>" size="20" maxlength="60" />
                <span class="error">${registerForm.errors['lastname']}</span>
                <br/>
                <br/>
                <br/>
                

                <label for="username">Your username <span class="required">*</span></label>
                <input type="text" id="username" name="username" value="<c:out value="${currentUser.username}"/>" size="20" maxlength="60" />
                <span class="error">${registerForm.errors['username']}</span>
                <br/>
                <br/>
                <br/>
                
                <label for="email">Your email address <span class="required">*</span></label>
                <input type="email" id="email" name="email" value="<c:out value="${currentUser.email}"/>" size="20" maxlength="60" />
                <span class="error">${registerForm.errors['email']}</span>
                <br/>
                <br/>
                <br/>
                

                
                <label for="status">Your status: <span class="required">*</span></label>
                <br>
                <!-- <form> -->
                <select class="registration_select" type="text" id="status" name="status" value="<c:out value="${currentUser.status}"/>" size="1">
                <option value="" >--- Select ---</option>
                <option  value="Nouveau"  <c:if test="${currentUser.status == 'Nouveau'}" >selected</c:if> >Nouveau</option>
                <option  value="Patient"  <c:if test="${currentUser.status == 'Patient'}" >selected</c:if> >Patient</option>
                <option  value="Administrator"  <c:if test="${currentUser.status == 'Administrator'}" >selected</c:if> >Administrator</option>
                <option  value="General Practitioner"  <c:if test="${currentUser.status == 'General Practitioner'}" >selected</c:if> >General Practitioner</option>
                <option  value="Medical Specialist"  <c:if test="${currentUser.status == 'Medical Specialist'}" >selected</c:if> >Medical Specialist</option>
                <option  value="Nouveau"  <c:if test="${currentUser.status == 'Nouveau'}" >selected</c:if> >Nouveau</option>
                <option  value="Nouveau"  <c:if test="${currentUser.status == 'Nouveau'}" >selected</c:if> >Nouveau</option>
                <option  value="Nouveau"  <c:if test="${currentUser.status == 'Nouveau'}" >selected</c:if> >Nouveau</option>
                <option  value="Nouveau"  <c:if test="${currentUser.status == 'Nouveau'}" >selected</c:if> >Nouveau</option>
                
                <option  value="Patient"  <%if((request.getAttribute("status") != null) && request.getAttribute("status").equals("Patient")){ %> selected <%} %>>Patient</option>
                <option  value="Administrator"  <%if((request.getAttribute("status") != null) && request.getAttribute("status").equals("Administrator")){ %> selected <%} %>>Administrator</option>
                <option  value="General Practitioner"  <%if((request.getAttribute("status") != null) && request.getAttribute("status").equals("General Practitioner")){ %> selected <%} %>>General Practitioner</option>
                <option  value="Medical Specialist"  <%if((request.getAttribute("status") != null) && request.getAttribute("status").equals("Medical Specialist")){ %> selected <%} %>>Medical Specialist</option>
                <option  value="Nurse"  <%if((request.getAttribute("status") != null) && request.getAttribute("status").equals("Nurse")){ %> selected <%} %>>Nurse</option>
                <option  value="Cleaning staff"  <%if((request.getAttribute("status") != null) && request.getAttribute("status").equals("Cleaning staff")){ %> selected <%} %>>Cleaning staff</option>
                <option  value="Medical Consultant"  <%if((request.getAttribute("status") != null) && request.getAttribute("status").equals("Medical Consultant")){ %> selected <%} %>>Medical Consultant</option>
                <option  value="Security staff"  <%if((request.getAttribute("status") != null) && request.getAttribute("status").equals("Security staff")){ %> selected <%} %>>Security staff</option>
                <option  value="Car park staff"  <%if((request.getAttribute("status") != null) && request.getAttribute("status").equals("Car park staff")){ %> selected <%} %>>Car park staff</option>
                <option  value="Student/Trainee"  <%if((request.getAttribute("status") != null) && request.getAttribute("status").equals("Student/Trainee")){ %> selected <%} %>>Student/Trainee</option>
                <option  value="Medical Intern"  <%if((request.getAttribute("status") != null) && request.getAttribute("status").equals("Medical Intern")){ %> selected <%} %>>Medical Intern</option>
                <option  value="Lawyer/Law expert"  <%if((request.getAttribute("status") != null) && request.getAttribute("status").equals("Lawyer/Law expert")){ %> selected <%} %>>Lawyer/Law expert</option>
                <option  value="Pharmacist"  <%if((request.getAttribute("status") != null) && request.getAttribute("status").equals("Pharmacist")){ %> selected <%} %>>Pharmacist</option>
                <option  value="Pharmacist's assistant"  <%if((request.getAttribute("status") != null) && request.getAttribute("status").equals("Pharmacist's assistant")){ %> selected <%} %>>Pharmacist's assistant</option>
                
                </select>
                <!-- </form> -->
                <span class="error">${registerForm.errors['status']}</span>
                <br/>
                <br/>
                <br/>
                
                <label for="department">Your department: <span class="required">*</span></label>
                <br>
                 <!-- <form> -->
                <select class="registration_select" type="text" id="department" name="department" value="<c:out value="${currentUser.department}"/>" size="1">
                <option value="" >--- Select ---</option>
                <option  value="Not affected"  <%if((request.getAttribute("department") != null) && request.getAttribute("department").equals("Not affected")){ %> selected <%} %>>Not affected</option>
                <option  value="Pediatric Unit"  <%if((request.getAttribute("department") != null) && request.getAttribute("department").equals("Pediatric Unit")){ %> selected <%} %>>Pediatric Unit</option>
                <option  value="Ophtalmology Unit"  <%if((request.getAttribute("department") != null) && request.getAttribute("department").equals("Ophtalmology Unit")){ %> selected <%} %>>Ophtalmology Unit</option>
                <option  value="allergist"  <%if((request.getAttribute("department") != null) && request.getAttribute("department").equals("allergist")){ %> selected <%} %>>allergist</option>
                <option  value="anesthesiologist"  <%if((request.getAttribute("department") != null) && request.getAttribute("department").equals("anesthesiologist")){ %> selected <%} %>>anesthesiologist</option>
                <option  value="anesthetist"  <%if((request.getAttribute("department") != null) && request.getAttribute("department").equals("anesthetist")){ %> selected <%} %>>anesthetist</option>
                <option  value="Oncology/Cancerology Unit"  <%if((request.getAttribute("department") != null) && request.getAttribute("department").equals("Oncology/Cancerology Unit")){ %> selected <%} %>>Oncology/Cancerology Unit</option>
                <option  value="cardiologist"  <%if((request.getAttribute("department") != null) && request.getAttribute("department").equals("cardiologist")){ %> selected <%} %>>cardiologist</option>
                <option  value="Ophtalmology/Optometry Unit"  <%if((request.getAttribute("department") != null) && request.getAttribute("department").equals("Ophtalmology/Optometry Unit")){ %> selected <%} %>>Ophtalmology/Optometry Unit</option>
                <option  value="Dentistry/Dental Medecine"  <%if((request.getAttribute("department") != null) && request.getAttribute("department").equals("Dentistry/Dental Medecine")){ %> selected <%} %>>Dentistry/Dental Medecine</option>
                <option  value="Occupational Medicine Unit"  <%if((request.getAttribute("department") != null) && request.getAttribute("department").equals("Occupational Medicine Unit")){ %> selected <%} %>>Occupational Medicine Unit</option>
                <option  value="Plastic Surgery Unit"  <%if((request.getAttribute("department") != null) && request.getAttribute("department").equals("Plastic Surgery Unit")){ %> selected <%} %>>Plastic Surgery Unit</option>
                <option  value="Orthopedic Surgery"  <%if((request.getAttribute("department") != null) && request.getAttribute("department").equals("Orthopedic Surgery")){ %> selected <%} %>>Orthopedic Surgery</option>
                <option  value="Eye Surgery"  <%if((request.getAttribute("department") != null) && request.getAttribute("department").equals("Eye Surgery")){ %> selected <%} %>>Eye Surgery</option>
                <option  value="Other Surgery Unit"  <%if((request.getAttribute("department") != null) && request.getAttribute("department").equals("Other Surgery Unit")){ %> selected <%} %>>Other Surgery Unit</option>
                <option  value="Dermatology"  <%if((request.getAttribute("department") != null) && request.getAttribute("department").equals("Dermatology")){ %> selected <%} %>>Dermatology</option>
                <option  value="Dietetics/Nutritionist Unit"  <%if((request.getAttribute("department") != null) && request.getAttribute("department").equals("Dietetics/Nutritionist Unit")){ %> selected <%} %>>Dietetics/Nutritionist Unit</option>
                <option  value="Endocrinology Unit"  <%if((request.getAttribute("department") != null) && request.getAttribute("department").equals("Endocrinology Unit")){ %> selected <%} %>>Endocrinology Unit</option>
                <option  value="a"  <%if((request.getAttribute("department") != null) && request.getAttribute("department").equals("a")){ %> selected <%} %>>a</option>
                <option  value="b"  <%if((request.getAttribute("department") != null) && request.getAttribute("department").equals("b")){ %> selected <%} %>>b</option>
                <option  value="c"  <%if((request.getAttribute("department") != null) && request.getAttribute("department").equals("c")){ %> selected <%} %>>c</option>
                <option  value="d"  <%if((request.getAttribute("department") != null) && request.getAttribute("department").equals("d")){ %> selected <%} %>>d</option>
                <option  value="e"  <%if((request.getAttribute("department") != null) && request.getAttribute("department").equals("e")){ %> selected <%} %>>e</option>
                <option  value="Emergency Unit"  <%if((request.getAttribute("department") != null) && request.getAttribute("department").equals("Emergency Unit")){ %> selected <%} %>>Emergency Unit</option>
                
                </select>
                
                <span class="error">${registerForm.errors['department']}</span>
                <br/>
                <br/>
                <br/>
                
                
                
                <label for="motdepasse">Mot de passe <span class="required">*</span></label>
                <input type="password" id="password" name="password" value="" size="20" maxlength="20" />
                <span class="error">${registerForm.errors['password']}</span>
                <br/>
                <br/>
                <br/>

                <label for="confirmation">Confirmation du mot de passe <span class="required">*</span></label>
                <input type="password" id="confirmation" name="confirmation" value="" size="20" maxlength="20" />
                <span class="error">${registerForm.errors['confirmation']}</span>
                <br/>
                <br/>
                <br/>

              

              <input type="submit" value="Registration" class="sansLabel" />
              <br/>
              
              
              <p class="${empty registerForm.errors ? 'succes' : 'error'}">${registerForm.registrationStatus}</p>
              
              
              
              
              
              </fieldset>
              
                
                
                
            
        </form>
        </div>
    </body>
</html>
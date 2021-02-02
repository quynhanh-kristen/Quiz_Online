<%-- 
    Document   : signup
    Created on : Jan 22, 2021, 8:27:37 AM
    Author     : DELL
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Signup Page</title>
        <style>
            .error{
                color: red;
            }
            input[type ="text"], input[type="password"]{
                font-size: 75%;
                size: 15vw;
            }
             input[type = "submit"]{
                padding: 2% 9%;
                font-size: 80%;
            }
            #saveBtn{
                margin-right: 40%;
                background-color: #7aba7b;
            }
            #saveBtn:hover{
                background-color: #4fbe55;
            }
        </style>
    </head>
    <body style="font-size: 200%">
        <script type="text/javascript" src="js/jquery-2.2.4.min.js"></script>
        <script type="text/javascript" src="js/jquery.validate.js"></script>
        <script type="text/javascript" src="js/additional-methods.js"></script>
        <script type="text/javascript">
            $(function() {
                $("#testsignup").validate({
                    rules: {
                        txtId: {
                        required: true,
                                email: true
                        },
                        txtName: {
                        required: true,
                                rangelength: [6, 20]
                        },
                        txtPass: {
                        required: true,
                        rangelength: [6, 20]
                        }
                    }//end rules
                });//end validate
            }); //end function
        </script>
    <center>
        <h1>SIGN UP</h1>
        <form name="signupform" action="signup" method="POST" id="testsignup">
            <table width="50" cellspacing="10" cellpadding="10">           
                <tbody>
                    <tr>
                        <td>Email: </td>
                        <td>
                            <input  type="text" name="txtId" value="" />
                        </td>
                    </tr>
                    <tr>
                        <td>Name: </td>
                        <td>
                            <input type="text" name="txtName" value="" />
                        </td>
                    </tr>
                    <tr>
                        <td>Password: </td>
                        <td>
                            <input type="password" name="txtPass" value="" id="testPassword" /><br/>
                        </td>
                    </tr>
                    <tr>
                        <td>Role: </td>
                        <td>
                            <input type="radio" name="rbRole" value="Student" checked="checked" disabled="" />Student
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="submit" value="Save" name="Save"  id="saveBtn"/>
                        </td>
                        <td>
                            <a href="backfromsignup" >Back</a> 
                        </td>
                    </tr>
                </tbody>
            </table>
        </form>
        <c:set var="msg" value="${requestScope.ERRORMSG}"/>
        <c:if test="${not empty msg}">
            <font color="red">${msg}</font>
        </c:if>
    </center>     
</body>
</html>

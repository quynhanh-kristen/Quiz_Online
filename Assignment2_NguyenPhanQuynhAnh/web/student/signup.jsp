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
            body{
                margin-top: 15vh;
            }
            h1{
                margin-left: 5%;
            }
            table{
                width: 40vw;
                text-align:  initial;
                margin-left: 10%;
            }
            .error{
                color: red;    
                font-size: 80%;
                display: block;
            }
            input[type ="text"]{
                font-size: 70%;
                size: 15vw;
                margin-bottom: 3vh;
                margin-right: -100%;
                padding: 10px;
                width: 35vw;
            }
            #password{
                font-size: 70%;
                size: 15vw;
                margin-bottom: 3vh;
                margin-right: -100%;
                padding: 10px;
                width: 35vw;
            }
            #role{
                margin-left: -650%;
            }
            input[type = "submit"]{
                padding: 2% 9%;
                font-size: 70%;
            }
            #saveBtn{
                margin-right: 30%;
                margin-top: 4vh;
                background-color: #7aba7b;
            }
            #saveBtn:hover{
                background-color: #4fbe55;
            }
            a{
                margin-left: -200%;
                font-size: 150%;
                text-decoration: none;
            }
            a:hover{
                color: tomato;
            }
            @media (max-width: 1500px){
                #role{
                    margin-left: -250%;
                }
                a{
                    margin-left: -100%;
                }
                h1{
                    margin-left: 0;
                }
            }
        </style>
    </head>
    <body style="font-size: 160%">
        <script type="text/javascript" src="js/jquery-2.2.4.min.js"></script>
        <script type="text/javascript" src="js/jquery.validate.js"></script>
        <script type="text/javascript" src="js/additional-methods.js"></script>
        <script type="text/javascript">
            $(function () {
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
                            minlength: 6
                        }
                    }//end rules           
                });//end validate              
            }); //end function
        </script>
    <center>
        <h1>SIGN UP</h1>
        <form name="signupform" action="signup" method="POST" id="testsignup">
            <table >           
                <tbody>
                    <tr>
                        <td>
                            <input  type="text" name="txtId" value=""  placeholder="Email"/><br/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" name="txtName" value="" placeholder="Name"/><br/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input id="password" type="password" name="txtPass" value="" id="testPassword" placeholder="Password"/><br/>
                        </td>
                    </tr>
                    <tr>
                        <td>Role: </td>
                        <td>
                            <input id="role" type="radio" name="rbRole" value="Student" checked="checked" disabled="" />Student
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="submit" value="Save" name="Save"  id="saveBtn"/>
                        </td>
                        <td>
                            <a href="backfromsignup" >Login</a> 
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

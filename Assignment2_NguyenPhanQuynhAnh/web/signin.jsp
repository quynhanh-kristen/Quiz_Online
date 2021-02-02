<%-- 
    Document   : index
    Created on : Jan 21, 2021, 4:53:49 PM
    Author     : DELL
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <link  rel="icon" type="image/png" href="images/icon.png" sizes="16x16"/>    
        <style>
            input[type="email"], input[type="password"]{
                font-size: 80%;
                width: auto;
                text-height: font-size;
            }
            input[type = "submit"]{
                padding: 2% 9%;
                font-size: 50%;
            }
            form{
                margin: 0 auto;                
            }
            #loginBtn{
                margin-right: 40%;
                background-color: #7aba7b;
            }
            #loginBtn:hover{
                background-color: #4fbe55;
            }
            a{
                text-decoration: none;
            }
            a:hover{
                color: #3a87ad;
            }
            a, #loginBtn{
                margin-top: 3%;
            }
        </style>
    </head>
    <body  style="font-size: 200%">       
    <center>
        <h1 >Login</h1>
        <form action="signin" method="POST">
            <table colspan="2">
                <tbody>
                    <tr>
                        <td></td>
                        <td>
                            <input type="email" name="txtID" value="${param.txtID}"  size="35" required="" placeholder="Email"/>
                        </td>                        
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <input type="password" name="txtPassword" value="" size="35"  required="" placeholder="Password"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            
                        </td>
                        <td>
                            <input type="submit" value="Login" name="btAction"  id="loginBtn"/>
                            <a href="signuppage" id="signup">Sign up ?</a>
                        </td>
                    </tr>
                    <tr colspan="2">
                        <td>
                            <c:if test="${not empty requestScope.ERRORMSGLOGIN}">
                                <font color="red">${requestScope.ERRORMSGLOGIN}</font>
                            </c:if>
                        </td>
                        <td></td>
                    </tr>
                </tbody>
            </table>
        </form>
    </center>
                        <div id="app"></div>

</body>
</html>

<%-- 
    Document   : result
    Created on : Jan 30, 2021, 8:44:53 AM
    Author     : DELL
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result</title>
        <style>
            body{               
                margin: 0 auto;
            }
            center{
                margin-top: 5vh;
            }
        </style>
    </head>
    <body style="font-size: 200%">
    <center>
        <h1>Your Result</h1>       
        <c:set var="result" value="${requestScope.RESULT}"/>
        <c:if test="${not empty result}">
            Correct answer: ${result.qrQuizResultCorrectAnsNum} / ${result.qrQuizResultQuesAmount} <br>
            <c:set var="pointPerQues" value="${10 /result.qrQuizResultQuesAmount}"/>
            Mark: ${pointPerQues * result.qrQuizResultCorrectAnsNum}<br>
            <a href="quizpage">Back to Homepage</a>
        </c:if>
    </center>
</body>
</html>

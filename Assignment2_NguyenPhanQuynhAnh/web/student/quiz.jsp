<%-- 
    Document   : quiz
    Created on : Jan 24, 2021, 2:37:27 PM
    Author     : DELL
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quizz Online</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://kit.fontawesome.com/d2a5d5d384.js" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </head>

    <style>
        .subject{
            display: inline-block; 
            border: 1px solid green; 
            padding: 2%;
            margin-left: 5%;
            background-color: #4fbe55;
            color: white;
            border-radius: 50%;
            font-size: 120%;
        }
        .subject:hover{
            background-color: chartreuse;
        }
        h1{
            margin-bottom: 5%;
            margin-top: 5%;
        }
    </style>

    <body>
        <div style="padding-left: 5%; padding-top: 1%">
            <c:set var="user" value="${sessionScope.USER}"/>
            <c:if test="${not empty user}">
                <h4> WELLCOME, ${user.urUserName}<br>
                    <a href="signout"><i class="fas fa-sign-out-alt fa-1x">Signout</i></a><br>
                    <i class="fas fa-history"></i><a href="history">Finished quiz</a>
                </h4>
            </c:if>
        </div>

    <center>
        <h1>CHOOSE A SUBJECT TO START THE QUIZ </h1>
        <c:set var="listSubs" value="${applicationScope.SUBJECTS}"/>
        <div>
            <c:forEach items="${listSubs}" var="sub">
                <c:url var="subInfor" value="quiz" >
                    <c:param name="subId" value="${sub.sjSubjectId}"/>
                    <c:param name="subName" value="${sub.sjSubjectName}"/>
                </c:url>
                <a href="${subInfor}"> <div class="subject">${sub.sjSubjectName}</div></a>
                </c:forEach>         
        </div>
        <c:set var="msg" value="${requestScope.MSG}"/>
        <c:if test="${not empty msg }">
            <font color="red" style="font-size: 150%; font-family: sans-serif">${msg}</font>
        </c:if>
    </center>
</body>
</html>

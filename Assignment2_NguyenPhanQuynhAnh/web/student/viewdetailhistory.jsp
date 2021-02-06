<%-- 
    Document   : viewdetailhistory
    Created on : Feb 5, 2021, 11:11:00 PM
    Author     : DELL
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quiz Online</title>
        <link href="css/historydetail.css" type="text/css" rel="stylesheet">
        <script src="https://kit.fontawesome.com/d2a5d5d384.js" crossorigin="anonymous"></script>

    </head>
    <body>
        <h1>
            <c:url var="backToHitory" value="history">
                <c:param name="search_text" value="${requestScope.search_text}"/>
                <c:param name="ctgId" value="${requestScope.ctgId}"/>
            </c:url>        
            <a href="${backToHitory}">Finished quiz</a>
        </h1>

        <div style=" padding-top: -5%" id="user">
            <c:set var="user" value="${sessionScope.USER}"/>
            <c:if test="${not empty user}">
                <h2><i class="fas fa-user"></i>  ${user.urUserName}</h2>
            </c:if>
        </div>

        <c:set var="list" value="${requestScope.LIST_RESULT}"/>
        <c:if test="${not empty list}">
            <div class="tittle">    
                <h3>Subject: ${requestScope.subName}</h3>
                <h4>Date test: ${list.get(0).qqQuizResultId.qrQuizResultDate}</h4>
                <h4 style="color: tomato">Mark: ${requestScope.point}</h4>
            </div>



            <c:forEach begin="0" end="${list.size() - 1}" var="i">
                <div class="Question_Answer">   
                    <div id="question">${i + 1}. ${list.get(i).qqQuizQues}</div>
                    <div id="ansCorrect"><b>Correct answer: </b>${list.get(i).qqQuizQuestionCorrectAns}</div>
                    <div id="userAns"><b>Your  answer: </b>${list.get(i).qqQuizQuestionAnsOfUser}</div>
                </div>
            </c:forEach>
        </c:if>

    </body>
</html>

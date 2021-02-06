<%-- 
    Document   : history
    Created on : Jan 30, 2021, 4:37:41 PM
    Author     : DELL
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quiz online</title>
        <link rel="stylesheet" href="css/historypage.css">
        <script src="https://kit.fontawesome.com/d2a5d5d384.js" crossorigin="anonymous"></script>
        <link href="css/simplepagination.css" rel = "stylesheet" type ="text/css">
    </head>
    <style>
        #pagination{
            margin-bottom: 5vh;
            margin-top: 5vh;
        }
        table{
            font-size: 150%;
        }
        a{
            text-decoration: none;
        }
    </style>
    <body>

        <c:set var="history" value="${requestScope.HISTORYQUIZ}"/>
        <c:set var="ctgList" value="${applicationScope.LISTCTG}"/>

        <div style="padding-left: 5%; padding-top: 1%">
            <c:set var="user" value="${sessionScope.USER}"/>
            <c:if test="${not empty user}">
                <h2><i class="fas fa-user"></i>  ${user.urUserName}</h2>
            </c:if>
        </div>

    <center>   
        <h1>FINISHED QUIZ</h1>
        <ul class="nav">
            <li>
                <a href="quizpage">Home</a>
            </li>
            <li id="search">
                <form action="searchhistory">
                    <input type="text" name="search_text" value="${requestScope.search_text}" placeholder="Subject's name" id="search_text"/>
                    <input type="submit" value="Search" name="search_button" id="search_button"/>
                </form>
            </li>
            <li id="options">
                <a href="#">Category</a>
                <ul class="subnav">                    
                    <c:forEach items="${ctgList}" var="ctg">
                        <li>
                            <c:url var="searchHistory" value="searchhistory">
                                <c:param name="ctgId" value="${ctg.ctgCategoryId}"/>
                            </c:url>
                            <a href="${searchHistory}">${ctg.ctgCategoryName}</a>
                        </li>
                    </c:forEach>                     
                </ul>
            </li>            
        </ul>

        <c:set var="quizList" value="${requestScope.LISTQUIZ}"/>
        <c:if test="${not empty quizList}">
            <center><div id="pagination"></div></center>
            <table id="content">
                <thead>
                    <tr>
                        <th>Subject</th>
                        <th>Date</th>
                        <th>Correct answer</th>
                        <th>Mark</th>
                        <th>Detail</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${quizList}" var="quiz">
                        <tr>
                            <td>
                                ${quiz.qrQuizResultSubject.sjSubjectName} 
                                <input type="hidden" name="subName" value="${quiz.qrQuizResultSubject.sjSubjectName}" />
                            </td>
                            <td>
                                ${quiz.qrQuizResultDate}
                            </td>
                            <td>
                                ${quiz.qrQuizResultCorrectAnsNum} / ${quiz.qrQuizResultQuesAmount}
                            </td>
                            <td>
                                <c:set var="pointPerQues" value="${10 / quiz.qrQuizResultQuesAmount}"/>
                                ${pointPerQues * quiz.qrQuizResultCorrectAnsNum}
                                <c:set var="point" value="${pointPerQues * quiz.qrQuizResultCorrectAnsNum}"/>
                            </td>
                            <td>
                                <c:url var="savedValues" value = "viewdetaihistory">
                                    <c:param name="quizResultId" value="${quiz.qrQuizResultId}"/>
                                    <c:param name="search_text" value ="${param.search_text}"/>
                                    <c:param name="ctgId" value="${requestScope.ctgId}"/>       
                                    <c:param name="subName" value="${quiz.qrQuizResultSubject.sjSubjectName} "/>
                                    <c:param name="point" value="${point}"/>
                                </c:url>
                                <a href="${savedValues}">View <i class="far fa-file-alt"></i></a>
                            </td>
                        </tr>
                    </c:forEach>     
                </tbody>
            </table>
            
        </c:if>
        <c:if test="${empty quizList}">
            No result
        </c:if>
    </center>
    <script src="js/jquery-2.2.4.min.js"></script>
    <script src="js/jquery.simplePagination.js"></script>
    <script>
        jQuery(function ($) {
            var items = $("#content tbody tr");
            var numItems = items.length;
            var perPage = 5;
            // Only show the first 2 (or first `per_page`) items initially.
            items.slice(perPage).hide();
            // Now setup the pagination using the `#pagination` div.
            $("#pagination").pagination({
                items: numItems,
                itemsOnPage: perPage,
                cssStyle: "light-theme",
                // This is the actual page changing functionality.
                onPageClick: function (pageNumber) {
                    // We need to show and hide `tr`s appropriately.
                    var showFrom = perPage * (pageNumber - 1);
                    var showTo = showFrom + perPage;
                    // We'll first hide everything...
                    items.hide()
                            // ... and then only show the appropriate rows.
                            .slice(showFrom, showTo).show();
                }
            });
        });
    </script>
</body>
</html>

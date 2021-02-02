<%-- 
    Document   : test
    Created on : Jan 28, 2021, 1:39:12 PM
    Author     : DELL
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <script type="text/javascript" src="js/date.js"></script>
        <script src="https://kit.fontawesome.com/d2a5d5d384.js" crossorigin="anonymous"></script>

        <link href="css/styletestpage.css" rel = "stylesheet" type ="text/css">
        <link href="css/simplepagination.css" rel = "stylesheet" type ="text/css">
        <style>
            p{
                border: solid black 1px;
                padding: 5%;
                margin-bottom: 5%;
                width: 80%;
                text-align: left;
                font-size: 200%;
            }
            a{
                border: 2px solid #0480be;
                border-radius: 4px;
                margin-left: 10px;                 
                text-decoration: none;
                background-color: white;
                padding: 6px 6px;
                color: #0480be;   
                font-size: 100%;
            }
            a:hover{
                background-color: #0480be;
                color: white;
            }
            input[type = "text"]{
                border: none;
            }
            input[type = "submit"]{
                background-color: #4CAF50; /* Green */
                border: none;
                color: white;
                padding: 15px 32px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 20px;
                margin-top: 5%;
            }

        </style>
    </head>

    <body>
        <h1>
            <c:set var="subject" value="${sessionScope.SUB}"/>
            <c:if test="${not empty subject}">
                Subject:  ${subject.sjSubjectName}
                <input type="hidden" name="" value="${subject.sjSubjectId}"  id="subId"/>
            </c:if>
        </h1>
                <div id="home" style="">
                <div id="Time-count-down"><i class="fas fa-stopwatch"></i></div>
                <div id="clock">
                        <span class="number">5:00</span> 
                    </div>
                </div>
        <!--<div id="app"></div>-->
    <center>
        <form action="submit" id="submittest">
            <!--            Date: <input type="text" name="txtDate" readonly="" id="date"  value=""/>    -->
            <c:set var="quesList"  value="${sessionScope.LIST_QUIZ}"/>
            <c:if test="${not empty quesList}">     
                <center><div id="pagination"></div></center>
                <table border="1" width="10" cellpadding="2" id="content">                                                
                    <tbody>
                        <c:set var="index" value="1"/>
                        <c:forEach begin="0" end="${quesList.size() - 1}" var="ques">
                            <tr>
                                <td>
                                    <input type="hidden" name="${ques}Ques" value="${quesList.get(ques).qtQuestion}" />
                                    ${quesList.get(ques).qtQuestion}<br>                                                                   
                                </td>
                                <td>
                                    <input type="radio" name="${ques}" value=" ${quesList.get(ques).qtQuestionAnswer1}"
                                           <c:if test="${not empty param.ques}">
                                               checked="checked"
                                           </c:if>
                                           />                            
                                    ${quesList.get(ques).qtQuestionAnswer1}<br>
                                    <input type="radio" name="${ques}" value=" ${quesList.get(ques).qtQuestionAnswer2}" />                         
                                    ${quesList.get(ques).qtQuestionAnswer2}<br>
                                    <input type="radio" name="${ques}" value="${quesList.get(ques).qtQuestionAnswer3}" />
                                    ${quesList.get(ques).qtQuestionAnswer3}<br>
                                    <input type="radio" name="${ques}" value="${quesList.get(ques).qtQuestionAnswer4}" />
                                    ${quesList.get(ques).qtQuestionAnswer4} <br>   
                                    <input type="hidden" name="${ques}Ans" value="${quesList.get(ques).qtQuestionCorrectAnswer}" />
                                </td>
                            </tr>     
                        </c:forEach>
                    </tbody>
                </table>  
                <input type="hidden" name="subID" value="${subject.sjSubjectId}" />
                <input type="hidden" name="numOfques" value="${quesList.size()}" />                
                <input type="submit" value="Submit" name="btAction"id="btAction" />
            </c:if>
        </form>
    </center>
    <script src="js/jquery-2.2.4.min.js"></script>
    <script src="js/jquery.simplePagination.js"></script>
    <script>
        jQuery(function ($) {
            var items = $("#content tbody tr");
            var numItems = items.length;
            var perPage = 1;
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
    <script src="js/clock.js"></script>
</body>
</html>




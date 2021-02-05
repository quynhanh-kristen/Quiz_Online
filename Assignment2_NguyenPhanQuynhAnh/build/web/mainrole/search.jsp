<%-- 
    Document   : searchforadmin
    Created on : Jan 22, 2021, 10:42:57 AM
    Author     : DELL
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Page</title>
        <script src="https://kit.fontawesome.com/d2a5d5d384.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <script src="js/jquery.easyPaginate.js"></script>
        <style>
            body{
                height: 50vh;
                width: 100vw;
            }
            p{
                padding: 30px;
                border: 1px solid #4CAF50;          
                width: 50vw;
                margin-bottom: 1%;
                margin-left: 5%;
                font-size: 100%;
                position: relative;
            }
            .delete{
                background-color: #dc2300; /* Green */
                border: none;
                color: white;
                padding: 10px 22px;
                text-align: center;
                text-decoration: none;
                display: inline-table;
                font-size: 20px;
                margin-top: 1%;
                opacity: 10%;
            }
            .delete:hover{
                opacity: 100%;
                color: white;
                text-decoration: none;
            }
            a:hover{
                text-decoration: none;
                color: #4fbe55;
            }
            .page, .next, .prev{
                border: 2px solid #0480be;
                border-radius: 4px;
                margin-left: 2vw;                 
                text-decoration: none;
                background-color: white;
                padding: 6px 6px;
                color: #0480be;   
                font-size: 100%;
                float: none;
                margin-bottom: 10vh;
                position: relative;
            }
            .page, .next, .prev:hover{
                background-color: #0480be;
                color: white;
            }
            .dropdown-menu, .dropdown-toggle{
                font-size: 120%;
            }
            .dropdown{
                margin-left: 5%;
            }
        </style>
    </head>
    <body style="font-size: 200%">
        <div style="padding-left: 5%; padding-top: 1%">
            <c:set var="admin" value="${sessionScope.USER}"/>
            <c:if test="${not empty admin}">
                WELLCOME, ${admin.urUserName}<br>
                <a href="signout"><i class="fas fa-sign-out-alt fa-1x">Signout</i></a>
            </c:if><br>
            <a href="${searchValues}"><i class="fas fa-plus-circle"></i>More questions</a>
        </div>
        <!----------------------------------------------------------------------------------------------------------------->              

        <form action="search">
            <center>
                <i class="fas fa-university fa-3x"></i>
                <h1>QUESTION BANK</h1>
                <div>
                    <input type="checkbox" name="ckbStatus"   value="ON"
                           <c:if test="${not empty param.ckbStatus}">
                               checked="checked"
                           </c:if>
                           />Status
                    <input type="text" name="txtSearch" value="${param.txtSearch}" size="50" />
                    <input type="submit" value="Search" name="btAction" /> <br/>      
                </div>                 
            </center> 
            <!----------------------------------------------------------------------------------------------------------------->                         
            <c:set var="listSubject" value="${applicationScope.SUBJECTS}" /> 
            <c:if test="${not empty listSubject}">
                <div class="dropdown">
                    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Subject
                        <span class="caret"></span></button>
                    <ul class="dropdown-menu">
                        <c:forEach items="${listSubject}" var="subs">
                            <li>
                                <c:url var="urlRewriting" value="search">
                                    <c:param name="subjectID" value="${subs.sjSubjectId}"/>
                                    <c:param name="ckbStatus" value="${param.ckbStatus}"/>                                    
                                </c:url>
                                <a href="${urlRewriting}">${subs.sjSubjectName}</a>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </c:if>
        </form>
        <!------------------------------------------Show question----------------------------------------------------------------------->              
    <center>
        <form action="viewdetail" class="data-form">
            <c:set var="listQuestion" value="${requestScope.LISTQUESTONS}"/>
            <c:if test="${not empty listQuestion}">
                <div id="easyPaginate">
                    <c:forEach begin="0" end="${listQuestion.size() - 1}" var="i" >
                        <p>
                            <c:url var="urlRewriting" value="viewdetail">
                                <c:param name="ckbStatus" value="${param.ckbStatus}"/>
                                <c:param name="qtQuestionId" value="${listQuestion.get(i).qtQuestionId}"/>           
                                <c:param name="txtSearch" value="${param.txtSearch}"/>
                                <c:param name="subjectId" value="${param.subjectID}"/>
                            </c:url>
                            <a href="${urlRewriting}">${listQuestion.get(i).qtQuestion}</a><br/>
                            <!-----------------------------------------------------Delete------------------------------------------------------------>              

                            <c:if test="${listQuestion.get(i).ptQuestionStatus}">                            
                                <c:url var="urlRewriting" value="delete">
                                    <c:param name="txtQuesId" value="${listQuestion.get(i).qtQuestionId}"/>
                                    <c:param name="ckbStatus" value="${param.ckbStatus}"/>
                                    <c:param name="subjectID" value="${param.subjectID}"/>
                                    <c:param name="txtSearch" value="${param.txtSearch}"/>
                                </c:url>
                                <a href="${urlRewriting}" class="delete" onclick="">Delete</a>
                            </c:if>    
                        </p>    
                    </c:forEach>
                </div>      
            </c:if>
            <c:if test="${ not empty requestScope.MSG}">
                <center>No result</center>
            </c:if>          
        </form>
    </center>
    <script>
        $('#easyPaginate').easyPaginate({
            paginateElement: 'p',
            elementsPerPage: 20,
            effect: "climb"
        });

    </script>
</body>
</html>

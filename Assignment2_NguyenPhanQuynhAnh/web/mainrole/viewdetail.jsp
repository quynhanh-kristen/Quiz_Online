<%-- 
    Document   : viewdetail
    Created on : Jan 25, 2021, 8:04:55 AM
    Author     : DELL
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quiz Online</title>
        <style>
            body{
                font-size: 150%;
            }
            input[type = "text"], textArea{
                font-size: 24px;
            }
            input[type = "submit"], .delete{
                background-color: #4CAF50; /* Green */
                border: none;
                color: white;
                padding: 15px 32px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 20px;
            }
            .error{
                color: red;
            }
            select{
                font-size: 30px;
            }
            .msg{
                margin-bottom: 100px;
            }
            table tr .choice{
                text-align: right;
            }

        </style>
    </head>

    <body>   
        <script type="text/javascript" src="js/jquery-2.2.4.min.js"></script>
        <script type="text/javascript" src="js/jquery.validate.js"></script>
        <script type="text/javascript" src="js/additional-methods.js"></script>

        <script type="text/javascript">
            $(function () {
                $("#testupdate").validate({
                    rules: {
                        txtQues: {
                            required: true,
                            rangelength: [6, 5000]
                        },
                        txtAns1: {
                            required: true,
                            rangelength: [1, 1000]
                        },
                        txtAns2: {
                            required: true,
                            rangelength: [1, 1000]
                        },
                        txtAns3: {
                            required: true,
                            rangelength: [1, 1000]
                        },
                        txtAns4: {
                            required: true,
                            rangelength: [1, 1000]
                        },
                        txtCorrectAns: {
                            required: true,
                            rangelength: [1, 1000]
                        }
                    }
                });
            });
        </script>     
        <c:url var="transferValues" value="search">
            <c:param name="txtSearch" value="${requestScope.txtSearch}"/>
            <c:param name="subjectID" value = "${requestScope.subjectId}"/>
            <c:param name="ckbStatus" value = "${requestScope.ckbStatus}"/>
        </c:url>
        <a href="${transferValues}">Back</a>
        <c:set var="ques" value="${requestScope.QUESTION}"/>
        <c:if test="${not empty ques}">
            <!--submit alert not succeed-->
            <span>
                <input type="hidden" name="txtCreateDate" value="${ques.qtQuestionCreateedDate}" readonly="readonly" />
                <h4>Cteate date: ${ques.qtQuestionCreateedDate}</h4>
            </span>


            <form id="testupdate" action="update" onsubmit="alertMessage()">

                <c:set var="listObj" value="${applicationScope.SUBJECTS}"/>
                <select name="drlSubs" id="subjects" onchange="changeSubject(this.value)">
                    <c:forEach items="${listObj}" var="sub">
                        <option value="${sub.sjSubjectName}">
                            ${sub.sjSubjectName}                            
                        </option>
                    </c:forEach>
                </select>

                <center>
                    <h1>Quizz online</h1>
                    <h3><div id="namesubs">${ques.qtSubjectId.sjSubjectName}</div></h3>
                    <input type="hidden" name="txtSubName" value="${ques.qtSubjectId.sjSubjectName}" id="idsub" />


                    <table  cellspacing="3" cellpadding="3">                        
                        <tbody>
                            <tr>
                                <td>
                                    <input type="hidden" name="txtQuesHidden" value="${ques.qtQuestion}" size="50" />
                                </td>
                                <td>
                                    <textarea rows="9" cols="49" name="txtQues">${ques.qtQuestion}</textarea>
                                </td>
                            </tr>
                            <tr>
                                <td class="choice">A: </td>
                                <td>
                                    <input type="text" name="txtAns1" value="${ques.qtQuestionAnswer1}" size="50"  id="ans1"/>
                                    <input type="checkbox" name="chxbox1" value="ON" id="chk1" onclick="fillValue()"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="choice">B: </td>
                                <td>
                                    <input type="text" name="txtAns2" value="${ques.qtQuestionAnswer2}" size="50" id="ans2"  />
                                    <input type="checkbox" name="chxbox2" value="ON" id="chk2" onclick="fillValue()"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="choice">C: </td>
                                <td>
                                    <input type="text" name="txtAns3" value="${ques.qtQuestionAnswer3}" size="50" id="ans3" />
                                    <input type="checkbox" name="chxbox3" value="ON" id="chk3" onclick="fillValue()"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="choice">D: </td>
                                <td>
                                    <input type="text" name="txtAns4" value="${ques.qtQuestionAnswer4}" size="50" id="ans4" />
                                    <input type="checkbox" name="chxbox4" value="ON" id="chk4"onclick="fillValue()"/>
                                </td>
                            </tr>
                            <tr>
                                <td>Correct answer: </td>
                                <td>
                                    <input type="text" name="txtCorrectAns" value="${ques.qtQuestionCorrectAnswer}" size="50"  id="correctans" readonly=""/>
                                </td>
                            </tr>
                            <tr>
                                <td>Status: </td>
                                <td>                                                
                                    <input type="checkbox" name="txtStatus" 
                                           <c:if test="${ques.ptQuestionStatus}">
                                               checked="checked"
                                           </c:if>
                                           />                                    
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <c:set value="${requestScope.MSG}" var="msg"/>
                                    <c:if test="${not empty msg}">
                                        <div id="msg"> <font color="green">${msg}</font></div>
                                        </c:if>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </center>

                <center>
                    <table  width="3" cellspacing="10" cellpadding="10">  
                        <c:set var="lastSearch" value="${requestScope.txtSearch}"/>
                        <tbody>                            
                            <tr>
                                <td></td>
                                <td>
                                    <input type="submit" value="Save" name="btAction" />
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </center>           
                <input type="hidden" name="qtQuestionId" value="${ques.qtQuestionId}" />
                <input type="hidden" name="txtSubId" value="${ques.qtSubjectId.sjSubjectId}" />
                <input type="hidden" name="txtSearch" value="${requestScope.txtSearch}" />
                <input type="hidden" name="oldSubjectId" value ="${requestScope.subjectId}"/>
                <inpurt type="hidden" name="ckbStatus" value="${requestScope.ckbStatus}"/>
            </form>
        </c:if>  



        <script type="text/javascript" src="js/fillans.js"></script>
        <script>
                                        function changeSubject(subject) {
                                            document.getElementById("idsub").value = subject;
                                            document.getElementById("namesubs").innerHTML = subject;
                                        }
        </script>
    </body>
</html>

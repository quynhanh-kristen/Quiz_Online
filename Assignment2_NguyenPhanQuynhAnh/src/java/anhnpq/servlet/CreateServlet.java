/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package anhnpq.servlet;

import anhnpq.blo.QuestionBLO;
import anhnpq.blo.SubjectBLO;
import anhnpq.dao.TblQuestion;
import anhnpq.dao.TblSubject;
import anhnpq.dao.TblUserDAO;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

/**
 *
 * @author DELL
 */
@WebServlet(name = "CreateServlet", urlPatterns = {"/CreateServlet"})
public class CreateServlet extends HttpServlet {

    private final SimpleDateFormat FORMAT = new SimpleDateFormat("dd/MM/yyyy");

    private final String CREATE_PAGE = "createpage";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("text/html; charset-UTF-8");
        String url = CREATE_PAGE;
        try {
            String quesCtn = req.getParameter("txtQues");
            String quesAns1 = req.getParameter("txtAns1");
            String quesAns2 = req.getParameter("txtAns2");
            String quesAns3 = req.getParameter("txtAns3");
            String quesAns4 = req.getParameter("txtAns4");
            String quesConrrect = req.getParameter("txtCorrectAns");
            String quesStatus = req.getParameter("txtStatus");
            String subjectName = req.getParameter("drlSubs");

            boolean status = quesStatus != null;
            HttpSession session = req.getSession();
            TblUserDAO user = (TblUserDAO) session.getAttribute("USER");

            String createDate = req.getParameter("txtDate");
            java.util.Date date = FORMAT.parse(createDate);
            java.sql.Date sqlDate = new Date(date.getTime());
//            log(quesAns1 + "-" + quesConrrect + "-" + status + "-" +subjectName + "-" + userId);
            TblQuestion question = new TblQuestion();
            question.setQtQuestion(quesCtn);
            question.setQtQuestionAnswer1(quesAns1);
            question.setQtQuestionAnswer2(quesAns2);
            question.setQtQuestionAnswer3(quesAns3);
            question.setQtQuestionAnswer4(quesAns4);
            question.setQtQuestionCorrectAnswer(quesConrrect);
            question.setQtQuestionCreateedDate(sqlDate);
            question.setQtUserID(user);
            question.setPtQuestionStatus(status);

            TblSubject subject = new SubjectBLO().returnSubject(subjectName);
            question.setQtSubjectId(subject);

            boolean result = new QuestionBLO().addNewQuestion(question);

            req.setAttribute("MSG", result ? "New question was created" : "Can not create new question!!!");

        } catch (ParseException ex) {
            log(ex.getMessage());
        }catch (Exception ex){
            req.setAttribute("MSG", "Oop..Our system has some problem, forgive us for this inconvinience :<");
            log(ex.getMessage());
        } 
        finally {
            RequestDispatcher rd = req.getRequestDispatcher(url);
            rd.forward(req, resp);
        }
    }

}

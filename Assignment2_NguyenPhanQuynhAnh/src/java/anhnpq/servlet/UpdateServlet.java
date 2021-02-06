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
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DELL
 */
@WebServlet(name = "UpdateServlet", urlPatterns = "/UpdateServlet")
public class UpdateServlet extends HttpServlet {

    private final String UPDATE_PROCESS = "viewdetail";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("text/html; charset UTF-8");
        String url = UPDATE_PROCESS;
        try {
            String quesId = req.getParameter("qtQuestionId");
            String quesCtn = req.getParameter("txtQues");
            String quesAns1 = req.getParameter("txtAns1");
            String quesAns2 = req.getParameter("txtAns2");
            String quesAns3 = req.getParameter("txtAns3");
            String quesAns4 = req.getParameter("txtAns4");
            String quesCorrectAns = req.getParameter("txtCorrectAns");
            String quesStatus = req.getParameter("txtStatus");

            boolean status = quesStatus != null;

            String txtSearch = req.getParameter("txtSearch");
            String oldSubjectId = req.getParameter("oldSubjectId");
            String oldStatus = req.getParameter("ckbStatus");


            String subsName = req.getParameter("txtSubName");
            TblSubject subject = new SubjectBLO().returnSubject(subsName);

            req.setAttribute("qtQuestionId", quesId);

            TblQuestion question = new TblQuestion(Integer.parseInt(quesId), quesCtn, quesAns1, quesAns2,
                    quesAns3, quesAns4, quesCorrectAns, status, subject);
            boolean result = new QuestionBLO().updateQuestion(question);
            if (result) {
                req.setAttribute("MSG", "Update successfully !!!");
            }

            req.setAttribute("txtSearch", txtSearch);
            req.setAttribute("subjectId", oldSubjectId);
            req.setAttribute("ckbStatus", oldStatus);
        } catch (NumberFormatException e) {
            log(e.getMessage());
            req.setAttribute("MSG", "OOps...There are something with our system. Please, try again");
        } finally {
            RequestDispatcher rd = req.getRequestDispatcher(url);
            rd.forward(req, resp);
        }
    }

}

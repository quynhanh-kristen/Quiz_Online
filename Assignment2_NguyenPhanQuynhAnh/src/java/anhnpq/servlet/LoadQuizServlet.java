/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package anhnpq.servlet;

import anhnpq.blo.QuestionBLO;
import anhnpq.dao.TblQuestion;
import anhnpq.dao.TblSubject;
import anhnpq.dao.TblUserDAO;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DELL
 */
@WebServlet(name = "LoadQuizServlet", urlPatterns = {"/LoadQuizServlet"})
public class LoadQuizServlet extends HttpServlet {

    private final String LOAD_QUESTION = "testpage";
    private final String ERROR_PAGE = "error";
    private final String QUIZ_PAGE = "quizpage";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("text/html; charset UTF-8");
        System.out.println("IN LOAD SERVLET");
        String url = ERROR_PAGE;
        try {

            String subId = req.getParameter("subId");
            System.out.println("sub id: " + subId);

            HttpSession session = req.getSession();
            TblSubject tmpSub = (TblSubject) session.getAttribute("SUB");
            if (tmpSub != null) {
                if (tmpSub.getSjSubjectId() != Integer.parseInt(subId)) {
                    throw new Exception("You are in a test now, finished your test first!!!");
                }
            }
            if (session.getAttribute("LIST_QUIZ") == null) {
                List<TblQuestion> list = new QuestionBLO().loadQuestion(Integer.parseInt(subId));
                if (!list.isEmpty()) {
                    session.setAttribute("LIST_QUIZ", list);
                    session.setMaxInactiveInterval(60 * 3);

                    Map<TblUserDAO, List<TblQuestion>> userQuiz = new HashMap<>();
                    userQuiz.put((TblUserDAO) session.getAttribute("USER"), list);
                    session.setAttribute("USER_QUIZ", userQuiz);
                    session.setMaxInactiveInterval(60 * 3);

                }
            }
            TblSubject sub = new TblSubject();
            sub.setSjSubjectId(Integer.parseInt(subId));
            sub.setSjSubjectName(req.getParameter("subName"));
            session.setAttribute("SUB", sub);
            url = LOAD_QUESTION;
        } catch (NumberFormatException ex) {
            log(ex.getMessage());
        } catch (Exception ex) {
            req.setAttribute("MSG", ex.getMessage());
            url = QUIZ_PAGE;
        } finally {
            RequestDispatcher rd = req.getRequestDispatcher(url);
            rd.forward(req, resp);
        }
    }

}

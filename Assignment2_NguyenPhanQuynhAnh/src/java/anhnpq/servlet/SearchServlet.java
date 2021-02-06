/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package anhnpq.servlet;

import anhnpq.blo.QuestionBLO;
import anhnpq.dao.TblQuestion;
import java.io.IOException;
import java.util.List;
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
@WebServlet(name = "SearchServlet", urlPatterns = {"/SearchServlet"})
public class SearchServlet extends HttpServlet {

    private final String SEARCH_PAGE = "searchpage";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("text/html; charset-UTF8");
        System.out.println("In search servlet");
        //thêm check vào mỗi điều kiện
        //search status chưa được
        try {
            String text = req.getParameter("txtSearch");
            String subjectId = req.getParameter("subjectID");
            String check = req.getParameter("ckbStatus");

            boolean status = (check != null && !check.equals(""));

            QuestionBLO blo = new QuestionBLO();
            List<TblQuestion> listQuestion = null;

            if (text != null && !text.equals("")) {
                listQuestion = blo.getQuestionByName(text.trim());
            } else if (subjectId != null && !subjectId.equals("")) {
                listQuestion = blo.getQuestionSubjectID(Integer.parseInt(subjectId));
            } else {
                listQuestion = blo.getQuestionByStatus(status);
            }

            req.setAttribute("LISTQUESTONS", listQuestion);
            req.setAttribute("ckbStatus", check);
            req.setAttribute("subjectId", subjectId);

            if (listQuestion.isEmpty()) {
                req.setAttribute("MSG", "No result");
            }
        } finally {
            RequestDispatcher rd = req.getRequestDispatcher(SEARCH_PAGE);
            rd.forward(req, resp);
        }
    }

}

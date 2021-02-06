/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package anhnpq.servlet;

import anhnpq.blo.QuizResultBLO;
import anhnpq.dao.TblQuizResult;
import anhnpq.dao.TblUserDAO;
import java.io.IOException;
import java.util.List;
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
@WebServlet(name = "SearchHistoryServlet", urlPatterns = {"/SearchHistoryServlet"})
public class SearchHistoryServlet extends HttpServlet {

    private final String HISTORY_LOAD_PAGE = "historypage";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("text/html; charset-UTF8");
        String url = HISTORY_LOAD_PAGE;
        List<TblQuizResult> listResult = null;
        try {
            String searchText = req.getParameter("search_text");
            String idCtg = req.getParameter("ctgId");
            HttpSession session = req.getSession();
            TblUserDAO user = (TblUserDAO) session.getAttribute("USER");
            String id = user.getUrUserGmail();
            if (searchText != null) {
                listResult = new QuizResultBLO().getQuizByText(searchText, id);
                req.setAttribute("search_text", searchText);
            } else if (idCtg != null) {
                listResult = new QuizResultBLO().getQuizByCtg(Integer.parseInt(idCtg), id);
                req.setAttribute("ctgId", idCtg);
            }
            req.setAttribute("LISTQUIZ", listResult);
        } catch (NumberFormatException ex) {
            log(ex.getMessage());
        } finally {
            RequestDispatcher rd = req.getRequestDispatcher(url);
            rd.forward(req, resp);
        }
    }

}

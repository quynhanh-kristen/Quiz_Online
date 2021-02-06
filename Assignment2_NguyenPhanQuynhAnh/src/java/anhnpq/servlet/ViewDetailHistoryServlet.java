/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package anhnpq.servlet;

import anhnpq.blo.QuizQuestionBLO;
import anhnpq.dao.TblQuizQuestion;
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
@WebServlet (name="ViewDetailHistoryServlet", urlPatterns = {"/ViewDetailHistoryServlet"})
public class ViewDetailHistoryServlet extends HttpServlet{
    private final String VIEW_DETAIL_HISTORY_PAGE = "viewdetaihistorypage";
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = VIEW_DETAIL_HISTORY_PAGE;
        try{
            String resultId = req.getParameter("quizResultId");
            String searchText = req.getParameter("search_text");
            String ctgId = req.getParameter("ctgId");
            String subName = req.getParameter("subName");
            String point = req.getParameter("point");
            
            List<TblQuizQuestion> list = new QuizQuestionBLO().getQuizQuestionDetail(Integer.parseInt(resultId));
            req.setAttribute("LIST_RESULT", list);
            req.setAttribute("subName", subName);
            req.setAttribute("point", point);
            
            if(searchText != null && !searchText.equals("")){
                req.setAttribute("search_text", searchText);
            }else if(ctgId != null && !ctgId.equals("")){
                req.setAttribute("ctgId", ctgId);
            }
        }catch (NumberFormatException ex){
            log(ex.getMessage());
        }finally{
            RequestDispatcher rd = req.getRequestDispatcher(url);
            rd.forward(req, resp);
        }
    }
    
}

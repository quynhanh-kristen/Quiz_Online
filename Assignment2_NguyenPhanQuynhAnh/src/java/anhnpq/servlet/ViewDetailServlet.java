/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package anhnpq.servlet;

import anhnpq.blo.QuestionBLO;
import anhnpq.dao.TblQuestion;
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
@WebServlet(name = "ViewDetailServlet", urlPatterns = {"/ViewDetailServlet"})
public class ViewDetailServlet extends HttpServlet {

    private final String VIEW_DETAIL_PAGE = "viewdetailpage";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("text/html; charset-UTF8");
        String url = VIEW_DETAIL_PAGE;
        try {
            String idQuestion = req.getParameter("qtQuestionId");
            String lastSearch = req.getParameter("txtSearch");
            String subjectId = req.getParameter("subjectId");
            String subStatus = req.getParameter("ckbStatus");
            System.out.println("substatus: " + subStatus);
            
            QuestionBLO blo = new QuestionBLO();
            if (idQuestion != null) {
                TblQuestion question = blo.getQuestion(Integer.parseInt(idQuestion));
                req.setAttribute("QUESTION", question);
            }
            if(lastSearch != null){
                req.setAttribute("txtSearch", lastSearch);
            }
            if(subjectId != null){
                req.setAttribute("subjectId", subjectId);
            }
            req.setAttribute("ckbStatus", subStatus);
            
        } catch (NumberFormatException ex){
            log(ex.getMessage());
        }finally {
            RequestDispatcher rd = req.getRequestDispatcher(url);
            rd.forward(req, resp);
        }
    }

}

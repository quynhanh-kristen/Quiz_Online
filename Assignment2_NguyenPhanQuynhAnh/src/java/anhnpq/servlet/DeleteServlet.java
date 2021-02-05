/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package anhnpq.servlet;


import anhnpq.blo.QuestionBLO;
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
@WebServlet(name = "DeleteServlet", urlPatterns = {"/DeleteServlet"})
public class DeleteServlet extends HttpServlet {

    private final String SEARCH_PROCESS = "search";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("In delete servlet");
        String url = SEARCH_PROCESS;
        try {
            String lastSearch = req.getParameter("txtSearch");
            String questId = req.getParameter("txtQuesId");
            String quesStatus = req.getParameter("txtStatus");
            String subjectId = req.getParameter("subjectID");
            String searchStatus = req.getParameter("ckbStatus");

            boolean status = quesStatus != null;

            if(questId != null){
                QuestionBLO blo = new QuestionBLO();
                blo.updateStatusQuestion(Integer.parseInt(questId), status);
            }          
                req.setAttribute("txtSearch", lastSearch);
                req.setAttribute("subjectID", subjectId);
                req.setAttribute("ckbStatus", searchStatus);//
                    
        } finally {
            RequestDispatcher rd = req.getRequestDispatcher(SEARCH_PROCESS);
            rd.forward(req, resp);
        }

    }

}

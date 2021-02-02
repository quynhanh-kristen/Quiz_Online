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
@WebServlet(name = "LoadHistoryServlet", urlPatterns = {"/LoadHistoryServlet"})
public class LoadHistoryServlet extends HttpServlet{
       
    private final String HISTORY_PAGE = "historypage";
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("text/html; charset-UTF8");
        String url = HISTORY_PAGE;
        try{
            
            HttpSession session = req.getSession();
            TblUserDAO user = (TblUserDAO) session.getAttribute("USER");
            List<TblQuizResult> listQuiz = new QuizResultBLO().getQuiz(user);
            if(!listQuiz.isEmpty()){                
                req.setAttribute("LISTQUIZ", listQuiz);
            }
        }catch(Exception ex){
            log(ex.getMessage());
        }
        finally{
            RequestDispatcher rd = req.getRequestDispatcher(url);
            rd.forward(req, resp);
        }
    }
    
}

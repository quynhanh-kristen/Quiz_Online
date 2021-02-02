/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package anhnpq.servlet;

import anhnpq.dao.TblUserDAO;
import java.io.IOException;
import javax.persistence.NoResultException;
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
@WebServlet(name = "LogoutServlet", urlPatterns = {"/LogoutServlet"})
public class LogoutServlet extends HttpServlet{
    //tại sao doPost ko hỗ trợ remove session
    private final String LOGIN_PAGE = "signin.jsp"; //"" -> login.jsp
    private final String ERROR_PAGE = "error.html"; //error

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("text/html; charset-UTF8");
        String url = ERROR_PAGE;
        try {
            HttpSession session = req.getSession();
            TblUserDAO user = (TblUserDAO) session.getAttribute("USER");
            if(user != null){
                session.removeAttribute("USER");    
                url = LOGIN_PAGE;
            }          
        } catch (NoResultException e) {
            log(e.getMessage());
        }catch(Exception e){
            log(e.getMessage());
        }finally{
            resp.sendRedirect(url);
        }
    }
    
    
}

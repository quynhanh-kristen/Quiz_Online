/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package anhnpq.servlet;

import anhnpq.util.EncryptedPass;
import anhnpq.blo.UserBLO;
import anhnpq.dao.TblUserDAO;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import javax.persistence.NoResultException;
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
@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    private final String LOGIN_PAGE = "";
    private final String SEARCH_PAGE = "searchpage";
    private final String QUIZ_PAGE = "quizpage";

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("In Loginservlet");
        resp.setCharacterEncoding("text/html; charset-UTF8");
        String url = LOGIN_PAGE;
        try {
            String userId = req.getParameter("txtID").trim();
            String password = req.getParameter("txtPassword").trim();
            UserBLO blo = new UserBLO();
            password = EncryptedPass.returnEncryptedPass(password);

            boolean result = blo.checkLogin(userId, password);
            String role = "";
            if (result) {
                HttpSession session = req.getSession(false);
                if (session != null) {
                    TblUserDAO user = blo.returnNameAndRole(userId, password);
                    session.setAttribute("USER", user);
                    session.setMaxInactiveInterval(60 * 3);

                    role = user.getUrRoleID().getRlRoleName();
                }
                url = QUIZ_PAGE;
                if ("admin".equalsIgnoreCase(role)) {
                    url = SEARCH_PAGE;
                }
            }
        } catch (NoResultException ex) {
            req.setAttribute("ERRORMSGLOGIN", "Account did not exist.");
            log(ex.getMessage());
        } catch (NoSuchAlgorithmException ex) {
            log(ex.getMessage());
        } finally {
            RequestDispatcher rd = req.getRequestDispatcher(url);
            rd.forward(req, resp);
        }

    }

}

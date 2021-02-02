/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package anhnpq.servlet;

import anhnpq.blo.UserBLO;
import anhnpq.dao.TblRole;
import anhnpq.dao.TblUserDAO;
import anhnpq.util.EncryptedPass;
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
@WebServlet(name="SignupServlet", urlPatterns = {"/SignupServlet"})
public class SignupServlet extends HttpServlet{

    private final String SIGUP_PAGE  = "signuppage";
    private final String LOGIN_PAGE = "";
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("In signup servlet");
        String url = SIGUP_PAGE;
        try{
            UserBLO blo = new UserBLO();
            String gmail = req.getParameter("txtId");
            String name = req.getParameter("txtName");
            String password = req.getParameter("txtPass");
            String encryptedPass = EncryptedPass.returnEncryptedPass(password);
            String role = "student";
            
            TblUserDAO user = new TblUserDAO(new TblRole(2, role), name, gmail, encryptedPass);            
            boolean result = blo.addNewStudent(user);
            
            if(result){
                url = LOGIN_PAGE;
            }
            
        }catch(Exception ex){           
            req.setAttribute("ERRORMSG", "Account has already existed, click Back and Sign in.");
             ex.printStackTrace();
        }
        finally{
            RequestDispatcher rd = req.getRequestDispatcher(url);
            rd.forward(req, resp);
        }
    }
    
}

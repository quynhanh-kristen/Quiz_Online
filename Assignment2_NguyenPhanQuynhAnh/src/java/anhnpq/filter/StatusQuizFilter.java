/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package anhnpq.filter;

import anhnpq.dao.TblQuestion;
import anhnpq.dao.TblUserDAO;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 *
 * @author DELL
 */
public class StatusQuizFilter implements Filter{
     ServletContext context;
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        context = filterConfig.getServletContext();
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        System.out.println("STATUS QUIZ SERVLET");
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        HttpSession session = req.getSession(true);
        
         List<TblQuestion> ques = ( List<TblQuestion>) session.getAttribute("LIST_QUIZ");
        if(ques != null){
            Map<TblUserDAO, List<TblQuestion>> userQuiz = (Map<TblUserDAO, List<TblQuestion>>) session.getAttribute("USER_QUIZ");
            if(userQuiz != null){
                String idUser = req.getParameter("email");
                
                Set<TblUserDAO> tmpUser = userQuiz.keySet();
                for (TblUserDAO user : tmpUser) {
                    if(user.getUrUserGmail().equals(idUser)){
                        System.out.println("go to test page");
                        resp.sendRedirect("testpage");
                    }else{
                                                        System.out.println("go to other page (else userQuiz");

                        chain.doFilter(request, response);
                    }
                }
            }            
        }
                                System.out.println("go to other page (outside ques if");
        chain.doFilter(request, response);
    }

    @Override
    public void destroy() {
    }
    
}

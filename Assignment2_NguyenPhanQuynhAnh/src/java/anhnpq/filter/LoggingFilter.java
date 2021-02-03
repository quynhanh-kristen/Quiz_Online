/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package anhnpq.filter;

import anhnpq.blo.HistoryAccessBLO;
import anhnpq.dao.TblHistoryAccess;
import anhnpq.dao.TblUserDAO;
import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DELL
 */
public class LoggingFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        System.out.println("IN LOGGING FILTER");
        HttpServletRequest req = (HttpServletRequest) request;
        String url = "error";

        TblUserDAO user = null;
        TblHistoryAccess history = new TblHistoryAccess();
        HttpSession session = req.getSession(false);
        if (session != null) {
            user = (TblUserDAO) session.getAttribute("USER");
            history.setHaUserGmail(user);
        }

        long millis = System.currentTimeMillis();
        java.sql.Time sqlDate = new java.sql.Time(millis);
        history.setHaHistorAccessDate(sqlDate);

        String path = req.getRequestURI();
        history.setHaHistoryAccessContent(path);

        int lastIndex = path.lastIndexOf("/");
        String target = path.substring(lastIndex + 1);
        System.out.println("Target in Filter logging: " + target);
        System.out.println("length: " + target.length());
        
         if(target.length() > 0){
                if(target.lastIndexOf(".js") < 0 || target.lastIndexOf(".css") < 0){                  
                     new HistoryAccessBLO().recordHistory(history);
                }
            }
        chain.doFilter(request, response);

    }

    @Override
    public void destroy() {

    }

}

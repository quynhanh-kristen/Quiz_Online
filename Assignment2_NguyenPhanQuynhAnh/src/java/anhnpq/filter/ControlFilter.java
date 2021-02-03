/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package anhnpq.filter;

import anhnpq.blo.CategoryBLO;
import anhnpq.blo.SubjectBLO;
import anhnpq.dao.TblCategory;
import anhnpq.dao.TblSubject;
import anhnpq.dao.TblUserDAO;
import anhnpq.util.FileManager;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
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
public class ControlFilter implements Filter {
    
    private ServletContext listControls;
    List<String> adminPage = Arrays.asList("searchpage", "viewdetailpage", "createpage");
    List<String> studentPage = Arrays.asList("historypage", "testpage", "quizpage");
    
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        listControls = filterConfig.getServletContext();
        try {
            String path = listControls.getRealPath("/WEB-INF/controls.txt");
            
            Map<String, String> mapListControls = FileManager.getListControl(new File(path));
            if (!mapListControls.isEmpty()) {
                listControls.setAttribute("CONTROLS", mapListControls);
            }
            SubjectBLO sblo = new SubjectBLO();
            
            List<TblCategory> list = new CategoryBLO().returnListCategory();
            List<TblSubject> listSubject = sblo.loadListOfSubjects();
            
            if (listSubject != null) {
                listControls.setAttribute("SUBJECTS", listSubject);
                listControls.setAttribute("LISTCTG", list);
            }
        } catch (IOException ex) {
            listControls.log(ex.getMessage());
        }
    }
    
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        System.out.println("IN  ControlFilter");
        
        HttpServletResponse resp = (HttpServletResponse) response;
        Map<String, String> mapListControls = (Map<String, String>) listControls.getAttribute("CONTROLS");
        String url = null;
        String uri = null;
        String msg = "";
        try {
            HttpServletRequest req = (HttpServletRequest) request;
            
            uri = req.getRequestURI();
            System.out.println("URI in ControlFilter: " + uri);
            
            int lastIndex = uri.lastIndexOf("/");
            String target = uri.substring(lastIndex + 1);
            System.out.println("Target in control filter: " + target);
            
            HttpSession session = req.getSession(false);
            
            if (session != null && adminPage.contains(target)) {
                System.out.println("here");
                TblUserDAO user = (TblUserDAO) session.getAttribute("USER");
                if (user != null && !user.getUrRoleID().getRlRoleName().equals("admin") || user == null) {
                    System.out.println("Not permit to access");
                    RequestDispatcher rd = request.getRequestDispatcher("");
                    rd.forward(request, response);
                }
            } else if (session != null && studentPage.contains(target)) {
                TblUserDAO user = (TblUserDAO) session.getAttribute("USER");
                if (user != null && user.getUrRoleID().getRlRoleName().equals("admin") || user == null) {
                    System.out.println("Not permit to access");
                    RequestDispatcher rd = request.getRequestDispatcher("");
                    rd.forward(request, response);
                }
            }
            
            url = mapListControls.get(target);
            System.out.println("url: " + url);
            if (url != null) {
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            } else {
                chain.doFilter(request, response);
            }    

        } catch (IOException | ServletException | IllegalStateException ex) {
            listControls.log(ex.getMessage());
            msg = msg + ex.getMessage();
            
            url = mapListControls.get("");
            RequestDispatcher rd = request.getRequestDispatcher(url);
            rd.forward(request, response);
        } catch (Exception ex) {   
            listControls.log(ex.getMessage());
            msg = msg + ex.getMessage();
            
            url = mapListControls.get("error");
            RequestDispatcher rd = request.getRequestDispatcher(url);
            rd.forward(request, response);
        }finally{
            
        }
        
    }
    
    @Override
    public void destroy() {
        
    }
    
}

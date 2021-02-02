/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package anhnpq.servlet;

import anhnpq.blo.QuizQuestionBLO;
import anhnpq.blo.QuizResultBLO;
import anhnpq.blo.SubjectBLO;
import anhnpq.dao.TblQuizQuestion;
import anhnpq.dao.TblQuizResult;
import anhnpq.dao.TblSubject;
import anhnpq.dao.TblUserDAO;
import java.io.IOException;
import java.util.ArrayList;
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
@WebServlet(name = "CaculatePointServlet", urlPatterns = {"/CaculatePointServlet"})
public class CaculatePointServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("text/html;charset-UTF8");
        String url = "resultpage";
        try {
            String numOfQues = req.getParameter("numOfques");
            List<TblQuizQuestion> listAns = null;
            String tmpAns = "";
            String tmpCorrectAns = "";
            String question = "";
            TblQuizQuestion ques = null;
            int num = 0;
            if (numOfQues != null) {
                int count = 0;
                num = Integer.parseInt(numOfQues);
                System.out.println("Num of Question: " + num);
                listAns = new ArrayList<>();
                
                //Save question, answer of user, correct answer into TblQuizQuestion
                //and calculate the number of correct answer
                for (int i = 0; i < num; i++) {
                    ques = new TblQuizQuestion();

                    tmpAns = req.getParameter(String.valueOf(i));
                    tmpAns = (tmpAns != null) ? tmpAns : "";
                    ques.setQqQuizQuestionAnsOfUser(tmpAns);
                    System.out.println("Ans: " + tmpAns);

                    tmpCorrectAns = req.getParameter(String.valueOf(i) + "Ans");
                    tmpCorrectAns = (tmpCorrectAns != null) ? tmpCorrectAns : "";
                    ques.setQqQuizQuestionCorrectAns(tmpCorrectAns);
                    System.out.println("Correct Ans: " + tmpCorrectAns);
                    
                    question =req.getParameter(String.valueOf(i) + "Ques");
                    ques.setQqQuizQues(question);
                    
                    listAns.add(ques);
                    if (tmpAns.trim().equalsIgnoreCase(tmpCorrectAns.trim())) {
                        count += 1;
                    }     
                }
                //set attribute of TblQuizResult
                TblQuizResult quizResult = new TblQuizResult();

                    quizResult.setQrQuizResultCorrectAnsNum(count);
                    quizResult.setQrQuizResultQuesAmount(num);

                    String subID = req.getParameter("subID");
                    TblSubject subject = new SubjectBLO().returnSubject(Integer.parseInt(subID));
                    quizResult.setQrQuizResultSubject(subject);

                    HttpSession session = req.getSession();
                    TblUserDAO user = (TblUserDAO) session.getAttribute("USER");
                    quizResult.setQrUserGmail(user);

                    long millis = System.currentTimeMillis();
                    java.sql.Date sqlDate = new java.sql.Date(millis);
                    quizResult.setQrQuizResultDate(sqlDate);

                    boolean result = new QuizResultBLO().saveQuizResult(quizResult);
                    if (result) {                   
                        for (TblQuizQuestion q : listAns) {
                            q.setQqQuizResultId(quizResult);                            
                        }
                        boolean saveState = new QuizQuestionBLO().saveQuizQuestion(listAns);
                        if(saveState){
                           req.setAttribute("RESULT", quizResult);
                        }
                    }//after quizResult save successfully
            }

        } catch (NumberFormatException ex) {
            log(ex.getMessage());
        } catch (Exception ex) {
            log(ex.getMessage());
        } finally {
            HttpSession session = req.getSession();
            session.removeAttribute("LIST_QUIZ");
            session.removeAttribute("SUB");
            session.removeAttribute("USER_QUIZ");
            RequestDispatcher rd = req.getRequestDispatcher(url);
            rd.forward(req, resp);
        }
    }

}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package anhnpq.blo;

import anhnpq.dao.TblQuizResult;
import anhnpq.dao.TblUserDAO;
import java.io.Serializable;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

/**
 *
 * @author DELL
 */
public class QuizResultBLO implements Serializable {

    EntityManagerFactory emf = Persistence.createEntityManagerFactory("Assignment2_NguyenPhanQuynhAnhPU");

    public void persist(Object object) {
        EntityManager em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            em.persist(object);
            em.getTransaction().commit();
        } catch (Exception e) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", e);
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
    }

    public boolean saveQuizResult(TblQuizResult result) {
        EntityManager em = emf.createEntityManager();
        boolean check = false;
        try {
            em.getTransaction().begin();
            em.persist(result);
            em.getTransaction().commit();
            check = true;
        } finally {
            em.close();
        }
        return check;
    }

    public List<TblQuizResult> getQuiz(TblUserDAO user) {
        EntityManager em = emf.createEntityManager();
        List<TblQuizResult> list = null;
        try {
            em.getTransaction().begin();
            Query sm = em.createNamedQuery("TblQuizResult.findQuizbyUserId", TblQuizResult.class);
            sm.setParameter("id", user);
            list = sm.getResultList();
            em.getTransaction().commit();
        } finally {
            em.close();
        }
        return list;
    }

    public List<TblQuizResult> getQuizByText(String searchText, String userId) {
        EntityManager em = emf.createEntityManager();
        List<TblQuizResult> list = null;
        try {
            String stm = "select distinct [qrQuizResultId], [sjSubjectName], [qrQuizResultDate], [qrQuizResultCorrectAnsNum], [qrQuizResultQuesAmount]\n"
                    + "from [dbo].[tblQuizResult] r join [dbo].[tblSubject] s\n"
                    + "     on r.qrQuizResultSubject = s.sjSubjectId\n"
                    + "where [sjSubjectName] like ? and qrUserGmail = ?  ";
            em.getTransaction().begin();
            Query sm = em.createNativeQuery(stm, TblQuizResult.class);
            sm.setParameter(1, "%" + searchText + "%");
            sm.setParameter(2, userId);
            list = sm.getResultList();
            System.out.println("SIZE IN BLO: " + list.size());
            em.getTransaction().commit();
        } finally {
            em.close();
        }
        return list;
    }

    public List<TblQuizResult> getQuizByCtg(int idCtg, String userId) {
        EntityManager em = emf.createEntityManager();
        List<TblQuizResult> list = null;
        try {
            String stm = "select distinct[qrQuizResultId], [sjSubjectName], [qrQuizResultDate], [qrQuizResultCorrectAnsNum], [qrQuizResultQuesAmount]\n"
                    + "from [dbo].[tblQuizResult] r join [dbo].[tblSubject] s\n"
                    + "     on r.qrQuizResultSubject = s.sjSubjectId join [dbo].[tblCategory] c\n"
                    + "	 on s.sjCategoryID = c.ctgCategoryId\n"
                    + "where ctgCategoryId = ? and qrUserGmail = ?";
            em.getTransaction().begin();
            Query sm = em.createNativeQuery(stm, TblQuizResult.class);
            sm.setParameter(1, idCtg);
            sm.setParameter(2, userId);
            list = sm.getResultList();
            System.out.println("SIZE IN BLO: " + list.size());
            em.getTransaction().commit();
        } finally {
            em.close();
        }
        return list;
    }

}

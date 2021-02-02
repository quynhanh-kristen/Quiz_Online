/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package anhnpq.blo;

import anhnpq.dao.TblQuestion;
import anhnpq.dao.TblSubject;
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
public class QuestionBLO implements Serializable {

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

    public List<TblQuestion> getQuestionByName(String search) {
        EntityManager em = emf.createEntityManager();
        List<TblQuestion> list = null;
        try {
            em.getTransaction().begin();
            Query sm = em.createNamedQuery("TblQuestion.findByQtQuestion", TblQuestion.class);
            sm.setParameter("qtQuestion", "%" + search + "%");
            list = sm.getResultList();
            em.getTransaction().commit();
        } finally {
            em.close();
        }
        return list;
    }

    public List<TblQuestion> getQuestionSubjectID(int id) {
        EntityManager em = emf.createEntityManager();
        List<TblQuestion> list = null;
        try {
            em.getTransaction().begin();
            Query sm = em.createNamedQuery("TblQuestion.findBySjSubjectId", TblQuestion.class);
            TblSubject sub = new SubjectBLO().returnSubject(id);
            sm.setParameter("qtSubjectId", sub);
            list = sm.getResultList();
            for (TblQuestion tblQuestion : list) {
                System.out.println(tblQuestion.getQtQuestionAnswer1());
            }
            em.getTransaction().commit();
        } finally {
            em.close();
        }
        return list;
    }

    public List<TblQuestion> getQuestionByStatus(boolean status) {
        System.out.println("status: " + status);
        EntityManager em = emf.createEntityManager();
        List<TblQuestion> list = null;
        try {
            em.getTransaction().begin();
            Query sm = em.createNamedQuery("TblQuestion.findByPtQuestionStatus", TblQuestion.class);
            sm.setParameter("ptQuestionStatus", status);
            list = sm.getResultList();
            em.getTransaction().commit();
        } finally {
            em.close();
        }
        return list;
    }
    
    public TblQuestion getQuestion (int id){
        EntityManager em = emf.createEntityManager();
        TblQuestion question = null;
        try{
            em.getTransaction().begin();
            Query  sm = em.createNamedQuery("TblQuestion.findByQtQuestionId", TblQuestion.class);
            sm.setParameter("qtQuestionId", id);
            question = (TblQuestion) sm.getSingleResult();
            em.getTransaction().commit();
            System.out.println("ques1: " + question.getQtQuestionAnswer1());
        }finally{
            em.close();
        }
        return question;
    }
    
    public boolean updateQuestion(TblQuestion ques){
        EntityManager em = emf.createEntityManager();
        try{
            TblQuestion tmp = em.find(TblQuestion.class, ques.getQtQuestionId());
            em.getTransaction().begin();
            tmp.setPtQuestionStatus(ques.getPtQuestionStatus());
            tmp.setQtQuestion(ques.getQtQuestion());
            tmp.setQtQuestionAnswer1(ques.getQtQuestionAnswer1());
            tmp.setQtQuestionAnswer2(ques.getQtQuestionAnswer2());
            tmp.setQtQuestionAnswer3(ques.getQtQuestionAnswer3());
            tmp.setQtQuestionAnswer4(ques.getQtQuestionAnswer4());
            tmp.setQtQuestionCorrectAnswer(ques.getQtQuestionCorrectAnswer());
            tmp.setQtSubjectId(ques.getQtSubjectId());//tìm object ID
            em.merge(tmp);
            em.getTransaction().commit();
            return true;
        }finally{
            em.close();
        }
    }
    
    public boolean updateStatusQuestion(int id, boolean status){
        EntityManager em = emf.createEntityManager();
        
        try{
            TblQuestion question = getQuestion(id);
            em.getTransaction().begin();
            question.setPtQuestionStatus(status);
            em.merge(question);
            em.getTransaction().commit();
        }finally{
            em.close();
        }
        return false;
    }
    
    public boolean addNewQuestion(TblQuestion question){
        EntityManager em = emf.createEntityManager();
        try{
            em.getTransaction().begin();
            em.persist(question);
            em.getTransaction().commit();
            return true;
        }finally{
            em.close();
        }
    }
    
    public List<TblQuestion> loadQuestion(int idSubject){
        EntityManager em = emf.createEntityManager();
        List<TblQuestion> list = null;
        try{
            String sqlString = "select * from (select ROW_NUMBER() over (order by NEWID())  as row, * "
                                    + "from tblQuestion where [ptQuestionStatus] = 1 and [qtSubjectId] = ? )as x\n" +
                                        "where row between 1 and 20";
            em.getTransaction().begin();
            Query query = em.createNativeQuery(sqlString, TblQuestion.class);
            query.setParameter(1, idSubject);
            list = query.getResultList();
            em.getTransaction().commit();
        }finally{
            em.close();
        }
        return list;
    }
}

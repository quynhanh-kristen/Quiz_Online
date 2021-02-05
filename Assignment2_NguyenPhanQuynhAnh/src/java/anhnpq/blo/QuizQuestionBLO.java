/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package anhnpq.blo;

import anhnpq.dao.TblQuizQuestion;
import java.io.Serializable;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author DELL
 */
public class QuizQuestionBLO implements Serializable{

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
    
    public boolean saveQuizQuestion(List<TblQuizQuestion> list){
        if (list.isEmpty()){
            return false;
        }
        boolean check = false;
        EntityManager em = emf.createEntityManager();
        try{
            em.getTransaction().begin();
            list.forEach((q) -> {
                em.persist(q);
                em.flush();
            });
            em.getTransaction().commit();
            check = true;
        }finally{
            em.close();
        }
        return check;    
    }
    
}

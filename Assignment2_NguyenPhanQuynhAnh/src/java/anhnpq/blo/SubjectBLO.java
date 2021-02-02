/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package anhnpq.blo;

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
public class SubjectBLO implements Serializable{

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
    
    public List<TblSubject> loadListOfSubjects(){
        EntityManager em = emf.createEntityManager();
        List<TblSubject> listSubject = null;
        
        try{
            em.getTransaction().begin();
            Query sm = em.createNamedQuery("TblSubject.findAllSubject", TblSubject.class);
            listSubject = sm.getResultList();
            em.getTransaction().commit();
            if(!listSubject.isEmpty()){
                System.out.println("list is not empty");
                for (TblSubject s : listSubject) {
                    System.out.println(s.getSjSubjectName());
                }
            }
            
        }finally{
            em.close();
        }
        return listSubject;
    }
    
    public TblSubject returnSubject(int id){
        EntityManager em = emf.createEntityManager();
        TblSubject subject = null;
        
        try{
            em.getTransaction().begin();
            Query sm = em.createNamedQuery("TblSubject.findBySjSubjectId", TblSubject.class);
            sm.setParameter("sjSubjectId", id);
            subject = (TblSubject) sm.getSingleResult();
            em.getTransaction().commit();           
            
        }finally{
            em.close();
        }
        return subject;
    }
    
    public TblSubject returnSubject(String name){
        EntityManager em = emf.createEntityManager();
        TblSubject subject = null;
        
        try{
            em.getTransaction().begin();
            Query sm = em.createNamedQuery("TblSubject.findBySjSubjectName", TblSubject.class);
            sm.setParameter("sjSubjectName", name);
            subject = (TblSubject) sm.getSingleResult();
            em.getTransaction().commit();           
            
        }finally{
            em.close();
        }
        return subject;
    }
    
}

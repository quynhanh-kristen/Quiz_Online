/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package anhnpq.blo;

import anhnpq.dao.TblHistoryAccess;
import static com.sun.activation.registries.LogSupport.log;
import java.io.Serializable;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author DELL
 */
public class HistoryAccessBLO implements Serializable{

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
     public void recordHistory(TblHistoryAccess ha) {
        EntityManager em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            em.persist(ha);
            em.getTransaction().commit();
        } catch (Exception ex) {
            log("History access: " + ex.getMessage());
        } finally {
            em.close();
        }
    }
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package anhnpq.blo;

import anhnpq.dao.TblUserDAO;
import java.io.Serializable;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.NoResultException;
import javax.persistence.Persistence;
import javax.persistence.Query;

/**
 *
 * @author DELL
 */
public class UserBLO implements Serializable {

    EntityManagerFactory emf = Persistence.createEntityManagerFactory("Assignment2_NguyenPhanQuynhAnhPU");

    public UserBLO() {
    }

    public boolean checkLogin(String userID, String password) throws NoResultException {
        EntityManager em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            Query sm = em.createNamedQuery("TblUserDAO.findUser");
            sm.setParameter("urUserGmail", userID);
            sm.setParameter("urPassword", password);
            sm.getSingleResult();
            em.getTransaction().commit();
            return true;
        }catch (Exception ex){
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, ex.getMessage());
        } finally {
            em.close();
        }
        return false;
    }

    public TblUserDAO returnNameAndRole(String userId, String password) throws NoResultException {
        TblUserDAO user = null;
        
        EntityManager em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            Query sm = em.createNamedQuery("TblUserDAO.findUser", TblUserDAO.class);
            sm.setParameter("urUserGmail", userId);
            sm.setParameter("urPassword", password);
            user =  (TblUserDAO) sm.getSingleResult();
            em.getTransaction().commit();       
            user = new TblUserDAO(user.getUrUserGmail(),user.getUrRoleID(), user.getUrUserName());
        } catch (Exception ex){
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, ex.getMessage());
        }finally {
            em.close();
        }
        return user;
    }
    
    public boolean addNewStudent(TblUserDAO user){
        EntityManager em = emf.createEntityManager();
        boolean result = true;
        try {           
            em.getTransaction().begin();
            em.persist(user);
            em.getTransaction().commit();            
        } catch (Exception ex){
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, ex.getMessage());
        }finally{
            em.close();
        }
        return result;
    }
    public TblUserDAO returnUser(String id ){
        EntityManager em = emf.createEntityManager();
        TblUserDAO user = null;
        try{
            em.getTransaction().begin();
            Query sm = em.createNamedQuery("TblUserDAO.findUserById", TblUserDAO.class);
            sm.setParameter("urUserGmail", id);
            user = (TblUserDAO) sm.getSingleResult();
            em.getTransaction().commit();
        }finally{
            em.close();
        }
        return user;
    }
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

}

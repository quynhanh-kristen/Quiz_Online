/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package anhnpq.blo;

import anhnpq.dao.TblCategory;
import static com.sun.activation.registries.LogSupport.log;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

/**
 *
 * @author DELL
 */
public class CategoryBLO implements Serializable{

    EntityManagerFactory emf = Persistence.createEntityManagerFactory("Assignment2_NguyenPhanQuynhAnhPU");

   public List<TblCategory>  returnListCategory(){
       EntityManager em = emf.createEntityManager();
       List<TblCategory> listCtg = new ArrayList<>();
       try{
           em.getTransaction().begin();
           Query sm = em.createNamedQuery("TblCategory.findAll", TblCategory.class);
           listCtg = sm.getResultList();
           em.getTransaction().commit();
       }catch (Exception ex){
           log("CATEGORYBLO: " + ex.getMessage());
       }
       finally{
           em.close();
       }
       return listCtg;
   }

    
}

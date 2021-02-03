/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package anhnpq.dao;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author DELL
 */
@Entity
@Table(name = "tblUserDAO", catalog = "Assignment2_NguyenPhanQuynhAnh", schema = "dbo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TblUserDAO.findAll", query = "SELECT t FROM TblUserDAO t")
   , @NamedQuery(name = "TblUserDAO.findUserNameAndRole", query = "SELECT t "
                                                                                                                                    + " FROM TblUserDAO t join TblRole r "
                                                                                                                                    + " WHERE"
                                                                                                                                    + "   t.urUserGmail = :urUserGmail and t.urPassword = :urPassword")
    , @NamedQuery(name = "TblUserDAO.findUser", query = "SELECT  t FROM TblUserDAO t WHERE t.urUserGmail = :urUserGmail and t.urPassword = :urPassword")
    , @NamedQuery(name = "TblUserDAO.findUserById", query = "SELECT  t FROM TblUserDAO t WHERE t.urUserGmail = :urUserGmail ")
})
public class TblUserDAO implements Serializable {

    @OneToMany(mappedBy = "haUserGmail")
    private Collection<TblHistoryAccess> tblHistoryAccessCollection;


    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "urUserGmail")
    private String urUserGmail;
    @Column(name = "urPassword")
    private String urPassword;
    @Column(name = "urUserName")
    private String urUserName;
    @JoinColumn(name = "urRoleID", referencedColumnName = "rlRoleId")
    @ManyToOne
    private TblRole urRoleID;
    @OneToMany(mappedBy = "qrUserGmail")
    private Collection<TblQuizResult> tblQuizResultCollection;
    @OneToMany(mappedBy = "qtUserID")
    private Collection<TblQuestion> tblQuestionCollection;

    public TblUserDAO() {
    }
     public TblUserDAO(String urUserGmail, TblRole urRoleID, String urUserName) {
        this.urRoleID = urRoleID;
        this.urUserName = urUserName;
        this.urUserGmail = urUserGmail;
    }

    public TblUserDAO(TblRole urRoleID, String urUserName, String urUserGmail, String urPassword) {
        this.urRoleID = urRoleID;
        this.urUserName = urUserName;
        this.urUserGmail = urUserGmail;
        this.urPassword = urPassword;
    }

    public TblUserDAO(String urUserGmail) {
        this.urUserGmail = urUserGmail;
    }

    public String getUrUserGmail() {
        return urUserGmail;
    }

    public void setUrUserGmail(String urUserGmail) {
        this.urUserGmail = urUserGmail;
    }

    public String getUrPassword() {
        return urPassword;
    }

    public void setUrPassword(String urPassword) {
        this.urPassword = urPassword;
    }

    public String getUrUserName() {
        return urUserName;
    }

    public void setUrUserName(String urUserName) {
        this.urUserName = urUserName;
    }

    public TblRole getUrRoleID() {
        return urRoleID;
    }

    public void setUrRoleID(TblRole urRoleID) {
        this.urRoleID = urRoleID;
    }

    @XmlTransient
    public Collection<TblQuizResult> getTblQuizResultCollection() {
        return tblQuizResultCollection;
    }

    public void setTblQuizResultCollection(Collection<TblQuizResult> tblQuizResultCollection) {
        this.tblQuizResultCollection = tblQuizResultCollection;
    }

    @XmlTransient
    public Collection<TblQuestion> getTblQuestionCollection() {
        return tblQuestionCollection;
    }

    public void setTblQuestionCollection(Collection<TblQuestion> tblQuestionCollection) {
        this.tblQuestionCollection = tblQuestionCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (urUserGmail != null ? urUserGmail.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TblUserDAO)) {
            return false;
        }
        TblUserDAO other = (TblUserDAO) object;
        if ((this.urUserGmail == null && other.urUserGmail != null) || (this.urUserGmail != null && !this.urUserGmail.equals(other.urUserGmail))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "anhnpq.util.TblUserDAO[ urUserGmail=" + urUserGmail + " ]";
    }

    @XmlTransient
    public Collection<TblHistoryAccess> getTblHistoryAccessCollection() {
        return tblHistoryAccessCollection;
    }

    public void setTblHistoryAccessCollection(Collection<TblHistoryAccess> tblHistoryAccessCollection) {
        this.tblHistoryAccessCollection = tblHistoryAccessCollection;
    }


    
}

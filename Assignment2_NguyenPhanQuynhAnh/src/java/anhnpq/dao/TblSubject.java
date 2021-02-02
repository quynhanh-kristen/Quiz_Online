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
@Table(name = "tblSubject", catalog = "Assignment2_NguyenPhanQuynhAnh", schema = "dbo")
@XmlRootElement
@NamedQueries({
      @NamedQuery(name = "TblSubject.findAll", query = "SELECT t FROM TblSubject t")
    , @NamedQuery(name = "TblSubject.findBySjSubjectId", query = "SELECT t FROM TblSubject t WHERE t.sjSubjectId = :sjSubjectId")
    , @NamedQuery(name = "TblSubject.findBySjSubjectName", query = "SELECT t FROM TblSubject t WHERE t.sjSubjectName = :sjSubjectName")
    , @NamedQuery(name = "TblSubject.findAllSubject", query = "SELECT t FROM TblSubject t ")})
public class TblSubject implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "sjSubjectId")
    private Integer sjSubjectId;
    @Basic(optional = false)
    @Column(name = "sjSubjectName")
    private String sjSubjectName;
    @Basic(optional = false)
    @Column(name = "sjSubjectStatus")
    private boolean sjSubjectStatus;
    @OneToMany(mappedBy = "qrQuizResultSubject")
    private Collection<TblQuizResult> tblQuizResultCollection;
    @JoinColumn(name = "sjCategoryID", referencedColumnName = "ctgCategoryId")
    @ManyToOne
    private TblCategory sjCategoryID;
    @OneToMany(mappedBy = "qtSubjectId")
    private Collection<TblQuestion> tblQuestionCollection;

    public TblSubject() {
    }

    public TblSubject(Integer sjSubjectId) {
        this.sjSubjectId = sjSubjectId;
    }

    public TblSubject(Integer sjSubjectId, String sjSubjectName, boolean sjSubjectStatus) {
        this.sjSubjectId = sjSubjectId;
        this.sjSubjectName = sjSubjectName;
        this.sjSubjectStatus = sjSubjectStatus;
    }

    public Integer getSjSubjectId() {
        return sjSubjectId;
    }

    public void setSjSubjectId(Integer sjSubjectId) {
        this.sjSubjectId = sjSubjectId;
    }

    public String getSjSubjectName() {
        return sjSubjectName;
    }

    public void setSjSubjectName(String sjSubjectName) {
        this.sjSubjectName = sjSubjectName;
    }

    public boolean getSjSubjectStatus() {
        return sjSubjectStatus;
    }

    public void setSjSubjectStatus(boolean sjSubjectStatus) {
        this.sjSubjectStatus = sjSubjectStatus;
    }

    @XmlTransient
    public Collection<TblQuizResult> getTblQuizResultCollection() {
        return tblQuizResultCollection;
    }

    public void setTblQuizResultCollection(Collection<TblQuizResult> tblQuizResultCollection) {
        this.tblQuizResultCollection = tblQuizResultCollection;
    }

    public TblCategory getSjCategoryID() {
        return sjCategoryID;
    }

    public void setSjCategoryID(TblCategory sjCategoryID) {
        this.sjCategoryID = sjCategoryID;
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
        hash += (sjSubjectId != null ? sjSubjectId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TblSubject)) {
            return false;
        }
        TblSubject other = (TblSubject) object;
        if ((this.sjSubjectId == null && other.sjSubjectId != null) || (this.sjSubjectId != null && !this.sjSubjectId.equals(other.sjSubjectId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "anhnpq.util.TblSubject[ sjSubjectId=" + sjSubjectId + " ]";
    }
    
}

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
@Table(name = "tblCategory", catalog = "Assignment2_NguyenPhanQuynhAnh", schema = "dbo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TblCategory.findAll", query = "SELECT t FROM TblCategory t")
    , @NamedQuery(name = "TblCategory.findByCtgCategoryId", query = "SELECT t FROM TblCategory t WHERE t.ctgCategoryId = :ctgCategoryId")
    , @NamedQuery(name = "TblCategory.findByCtgCategoryName", query = "SELECT t FROM TblCategory t WHERE t.ctgCategoryName = :ctgCategoryName")})
public class TblCategory implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "ctgCategoryId")
    private Integer ctgCategoryId;
    @Column(name = "ctgCategoryName")
    private String ctgCategoryName;
    @OneToMany(mappedBy = "sjCategoryID")
    private Collection<TblSubject> tblSubjectCollection;

    public TblCategory() {
    }

    public TblCategory(Integer ctgCategoryId) {
        this.ctgCategoryId = ctgCategoryId;
    }

    public Integer getCtgCategoryId() {
        return ctgCategoryId;
    }

    public void setCtgCategoryId(Integer ctgCategoryId) {
        this.ctgCategoryId = ctgCategoryId;
    }

    public String getCtgCategoryName() {
        return ctgCategoryName;
    }

    public void setCtgCategoryName(String ctgCategoryName) {
        this.ctgCategoryName = ctgCategoryName;
    }

    @XmlTransient
    public Collection<TblSubject> getTblSubjectCollection() {
        return tblSubjectCollection;
    }

    public void setTblSubjectCollection(Collection<TblSubject> tblSubjectCollection) {
        this.tblSubjectCollection = tblSubjectCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (ctgCategoryId != null ? ctgCategoryId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TblCategory)) {
            return false;
        }
        TblCategory other = (TblCategory) object;
        if ((this.ctgCategoryId == null && other.ctgCategoryId != null) || (this.ctgCategoryId != null && !this.ctgCategoryId.equals(other.ctgCategoryId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "anhnpq.util.TblCategory[ ctgCategoryId=" + ctgCategoryId + " ]";
    }
    
}

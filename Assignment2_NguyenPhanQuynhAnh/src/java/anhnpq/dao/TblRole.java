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
@Table(name = "tblRole", catalog = "Assignment2_NguyenPhanQuynhAnh", schema = "dbo")
@XmlRootElement
@NamedQueries({
   @NamedQuery(name = "TblRole.findAll", query = "SELECT t FROM TblRole t")
    , @NamedQuery(name = "TblRole.findByRlRoleId", query = "SELECT t FROM TblRole t WHERE t.rlRoleId = :rlRoleId")
    , @NamedQuery(name = "TblRole.findByRlRoleName", query = "SELECT t FROM TblRole t WHERE t.rlRoleName = :rlRoleName")})
public class TblRole implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "rlRoleId")
    private Integer rlRoleId;
    @Column(name = "rlRoleName")
    private String rlRoleName;
    @OneToMany(mappedBy = "urRoleID")
    private Collection<TblUserDAO> tblUserDAOCollection;

    public TblRole() {
    }
 public TblRole(Integer rlRoleId, String rlRoleName) {
        this.rlRoleId = rlRoleId;
        this.rlRoleName = rlRoleName;
    }
    public TblRole(Integer rlRoleId) {
        this.rlRoleId = rlRoleId;
    }

    public Integer getRlRoleId() {
        return rlRoleId;
    }

    public void setRlRoleId(Integer rlRoleId) {
        this.rlRoleId = rlRoleId;
    }

    public String getRlRoleName() {
        return rlRoleName;
    }

    public void setRlRoleName(String rlRoleName) {
        this.rlRoleName = rlRoleName;
    }

    @XmlTransient
    public Collection<TblUserDAO> getTblUserDAOCollection() {
        return tblUserDAOCollection;
    }

    public void setTblUserDAOCollection(Collection<TblUserDAO> tblUserDAOCollection) {
        this.tblUserDAOCollection = tblUserDAOCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (rlRoleId != null ? rlRoleId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TblRole)) {
            return false;
        }
        TblRole other = (TblRole) object;
        if ((this.rlRoleId == null && other.rlRoleId != null) || (this.rlRoleId != null && !this.rlRoleId.equals(other.rlRoleId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "anhnpq.util.TblRole[ rlRoleId=" + rlRoleId + " ]";
    }
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package anhnpq.dao;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author DELL
 */
@Entity
@Table(name = "tblHistoryAccess", catalog = "Assignment2_NguyenPhanQuynhAnh", schema = "dbo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TblHistoryAccess.findAll", query = "SELECT t FROM TblHistoryAccess t")
    , @NamedQuery(name = "TblHistoryAccess.findByHaHistoryAccess", query = "SELECT t FROM TblHistoryAccess t WHERE t.haHistoryAccess = :haHistoryAccess")
    , @NamedQuery(name = "TblHistoryAccess.findByHaHistoryAccessContent", query = "SELECT t FROM TblHistoryAccess t WHERE t.haHistoryAccessContent = :haHistoryAccessContent")
    , @NamedQuery(name = "TblHistoryAccess.findByHaHistorAccessDate", query = "SELECT t FROM TblHistoryAccess t WHERE t.haHistorAccessDate = :haHistorAccessDate")})
public class TblHistoryAccess implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    @Column(name = "haHistoryAccess")
    private Integer haHistoryAccess;
    @Column(name = "haHistoryAccessContent")
    private String haHistoryAccessContent;
    @Column(name = "haHistorAccessDate")
    @Temporal(TemporalType.TIMESTAMP)
    private Date haHistorAccessDate;
    @JoinColumn(name = "haUserGmail", referencedColumnName = "urUserGmail")
    @ManyToOne
    private TblUserDAO haUserGmail;

    public TblHistoryAccess() {
    }

    public TblHistoryAccess(Integer haHistoryAccess) {
        this.haHistoryAccess = haHistoryAccess;
    }

    public Integer getHaHistoryAccess() {
        return haHistoryAccess;
    }

    public void setHaHistoryAccess(Integer haHistoryAccess) {
        this.haHistoryAccess = haHistoryAccess;
    }

    public String getHaHistoryAccessContent() {
        return haHistoryAccessContent;
    }

    public void setHaHistoryAccessContent(String haHistoryAccessContent) {
        this.haHistoryAccessContent = haHistoryAccessContent;
    }

    public Date getHaHistorAccessDate() {
        return haHistorAccessDate;
    }

    public void setHaHistorAccessDate(Date haHistorAccessDate) {
        this.haHistorAccessDate = haHistorAccessDate;
    }

    public TblUserDAO getHaUserGmail() {
        return haUserGmail;
    }

    public void setHaUserGmail(TblUserDAO haUserGmail) {
        this.haUserGmail = haUserGmail;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (haHistoryAccess != null ? haHistoryAccess.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TblHistoryAccess)) {
            return false;
        }
        TblHistoryAccess other = (TblHistoryAccess) object;
        if ((this.haHistoryAccess == null && other.haHistoryAccess != null) || (this.haHistoryAccess != null && !this.haHistoryAccess.equals(other.haHistoryAccess))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "anhnpq.blo.TblHistoryAccess[ haHistoryAccess=" + haHistoryAccess + " ]";
    }
    
}

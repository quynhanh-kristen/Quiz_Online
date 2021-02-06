/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package anhnpq.dao;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;
import java.util.Set;
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
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author DELL
 */
@Entity
@Table(name = "tblQuizResult", catalog = "Assignment2_NguyenPhanQuynhAnh", schema = "dbo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TblQuizResult.findAll", query = "SELECT t FROM TblQuizResult t")
    , @NamedQuery(name = "TblQuizResult.findQuizbyUserId", query = "select t from TblQuizResult t where t.qrUserGmail = :id"),
@NamedQuery(name = "TblQuizResult.findQuizbySubjectName", query = "select t from TblQuizResult t join TblSubject s where s.sjSubjectName like :name"),
@NamedQuery(name = "TblQuizResult.findQuizbyCtg", query = "select t from TblQuizResult t join TblSubject s join TblCategory c where c.ctgCategoryId = :id"),
@NamedQuery(name = "TblQuizResult.findQuizbyId", query = "select t from TblQuizResult t where t.qrQuizResultId = :id")
})
public class TblQuizResult implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "qrQuizResultId")
    private Integer qrQuizResultId;
    @Column(name = "qrQuizResultQuesAmount")
    private Integer qrQuizResultQuesAmount;
    @Column(name = "qrQuizResultPoint")
    private Integer qrQuizResultPoint;
    @Column(name = "qrQuizResultCorrectAnsNum")
    private Integer qrQuizResultCorrectAnsNum;
    @Column(name = "qrQuizResultDate")
    @Temporal(TemporalType.DATE)
    private Date qrQuizResultDate;
    @JoinColumn(name = "qrQuizResultSubject", referencedColumnName = "sjSubjectId")
    @ManyToOne
    private TblSubject qrQuizResultSubject;
    @JoinColumn(name = "qrUserGmail", referencedColumnName = "urUserGmail")
    @ManyToOne
    private TblUserDAO qrUserGmail;
    @OneToMany(mappedBy = "qqQuizResultId")
    private Set<TblQuizQuestion> tblQuizQuestionCollection;

    public TblQuizResult() {
    }

    public TblQuizResult(Integer qrQuizResultId) {
        this.qrQuizResultId = qrQuizResultId;
    }

    public Integer getQrQuizResultId() {
        return qrQuizResultId;
    }

    public void setQrQuizResultId(Integer qrQuizResultId) {
        this.qrQuizResultId = qrQuizResultId;
    }

    public Integer getQrQuizResultQuesAmount() {
        return qrQuizResultQuesAmount;
    }

    public void setQrQuizResultQuesAmount(Integer qrQuizResultQuesAmount) {
        this.qrQuizResultQuesAmount = qrQuizResultQuesAmount;
    }

    public Integer getQrQuizResultPoint() {
        return qrQuizResultPoint;
    }

    public void setQrQuizResultPoint(Integer qrQuizResultPoint) {
        this.qrQuizResultPoint = qrQuizResultPoint;
    }

    public Integer getQrQuizResultCorrectAnsNum() {
        return qrQuizResultCorrectAnsNum;
    }

    public void setQrQuizResultCorrectAnsNum(Integer qrQuizResultCorrectAnsNum) {
        this.qrQuizResultCorrectAnsNum = qrQuizResultCorrectAnsNum;
    }

    private static SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
    public String getQrQuizResultDate() {
        return format.format(qrQuizResultDate);
    }

    public void setQrQuizResultDate(Date qrQuizResultDate) {
        this.qrQuizResultDate = qrQuizResultDate;
    }

    public TblSubject getQrQuizResultSubject() {
        return qrQuizResultSubject;
    }

    public void setQrQuizResultSubject(TblSubject qrQuizResultSubject) {
        this.qrQuizResultSubject = qrQuizResultSubject;
    }

    public TblUserDAO getQrUserGmail() {
        return qrUserGmail;
    }

    public void setQrUserGmail(TblUserDAO qrUserGmail) {
        this.qrUserGmail = qrUserGmail;
    }

    @XmlTransient
    public Collection<TblQuizQuestion> getTblQuizQuestionCollection() {
        return tblQuizQuestionCollection;
    }

    public void setTblQuizQuestionCollection(Set<TblQuizQuestion> tblQuizQuestionCollection) {
        this.tblQuizQuestionCollection = tblQuizQuestionCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (qrQuizResultId != null ? qrQuizResultId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TblQuizResult)) {
            return false;
        }
        TblQuizResult other = (TblQuizResult) object;
        if ((this.qrQuizResultId == null && other.qrQuizResultId != null) || (this.qrQuizResultId != null && !this.qrQuizResultId.equals(other.qrQuizResultId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "anhnpq.util.TblQuizResult[ qrQuizResultId=" + qrQuizResultId + " ]";
    }
    
}

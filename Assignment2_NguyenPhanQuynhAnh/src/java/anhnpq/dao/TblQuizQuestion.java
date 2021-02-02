/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package anhnpq.dao;

import java.io.Serializable;
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
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author DELL
 */
@Entity
@Table(name = "tblQuizQuestion", catalog = "Assignment2_NguyenPhanQuynhAnh", schema = "dbo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TblQuizQuestion.findAll", query = "SELECT t FROM TblQuizQuestion t")
   })
public class TblQuizQuestion implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id   
    @Basic(optional = false)
     @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "qqQuizQuestionId")
    private Integer qqQuizQuestionId;
    @Column(name = "qqQuizQues")
    private String qqQuizQues;
    @Column(name = "qqQuizQuestionAnsOfUser")
    private String qqQuizQuestionAnsOfUser;
    @Column(name = "qqQuizQuestionCorrectAns")
    private String qqQuizQuestionCorrectAns;
    @JoinColumn(name = "qqQuizResultId", referencedColumnName = "qrQuizResultId")
    @ManyToOne
    private TblQuizResult qqQuizResultId;

    public TblQuizQuestion() {
    }

    public TblQuizQuestion(Integer qqQuizQuestionId) {
        this.qqQuizQuestionId = qqQuizQuestionId;
    }

    public Integer getQqQuizQuestionId() {
        return qqQuizQuestionId;
    }

    public void setQqQuizQuestionId(Integer qqQuizQuestionId) {
        this.qqQuizQuestionId = qqQuizQuestionId;
    }

    public String getQqQuizQues() {
        return qqQuizQues;
    }

    public void setQqQuizQues(String qqQuizQues) {
        this.qqQuizQues = qqQuizQues;
    }

    public String getQqQuizQuestionAnsOfUser() {
        return qqQuizQuestionAnsOfUser;
    }

    public void setQqQuizQuestionAnsOfUser(String qqQuizQuestionAnsOfUser) {
        this.qqQuizQuestionAnsOfUser = qqQuizQuestionAnsOfUser;
    }

    public String getQqQuizQuestionCorrectAns() {
        return qqQuizQuestionCorrectAns;
    }

    public void setQqQuizQuestionCorrectAns(String qqQuizQuestionCorrectAns) {
        this.qqQuizQuestionCorrectAns = qqQuizQuestionCorrectAns;
    }

    public TblQuizResult getQqQuizResultId() {
        return qqQuizResultId;
    }

    public void setQqQuizResultId(TblQuizResult qqQuizResultId) {
        this.qqQuizResultId = qqQuizResultId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (qqQuizQuestionId != null ? qqQuizQuestionId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TblQuizQuestion)) {
            return false;
        }
        TblQuizQuestion other = (TblQuizQuestion) object;
        if ((this.qqQuizQuestionId == null && other.qqQuizQuestionId != null) || (this.qqQuizQuestionId != null && !this.qqQuizQuestionId.equals(other.qqQuizQuestionId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "anhnpq.util.TblQuizQuestion[ qqQuizQuestionId=" + qqQuizQuestionId + " ]";
    }
    
}

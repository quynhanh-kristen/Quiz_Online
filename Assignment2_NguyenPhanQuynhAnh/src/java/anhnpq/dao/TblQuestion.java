/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package anhnpq.dao;

import java.io.Serializable;
import java.text.SimpleDateFormat;
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
@Table(name = "tblQuestion", catalog = "Assignment2_NguyenPhanQuynhAnh", schema = "dbo")
@XmlRootElement
@NamedQueries({
     @NamedQuery(name = "TblQuestion.findAll", query = "SELECT t FROM TblQuestion t")
    , @NamedQuery(name = "TblQuestion.findByQtQuestionId", query = "SELECT t FROM TblQuestion t WHERE t.qtQuestionId = :qtQuestionId")
    , @NamedQuery(name = "TblQuestion.findByQtQuestion", query = "SELECT t FROM TblQuestion t WHERE t.qtQuestion like :qtQuestion")
    , @NamedQuery(name = "TblQuestion.findByQtQuestionAnswer1", query = "SELECT t FROM TblQuestion t WHERE t.qtQuestionAnswer1 = :qtQuestionAnswer1")
    , @NamedQuery(name = "TblQuestion.findByQtQuestionAnswer2", query = "SELECT t FROM TblQuestion t WHERE t.qtQuestionAnswer2 = :qtQuestionAnswer2")
    , @NamedQuery(name = "TblQuestion.findByQtQuestionAnswer3", query = "SELECT t FROM TblQuestion t WHERE t.qtQuestionAnswer3 = :qtQuestionAnswer3")
    , @NamedQuery(name = "TblQuestion.findByQtQuestionAnswer4", query = "SELECT t FROM TblQuestion t WHERE t.qtQuestionAnswer4 = :qtQuestionAnswer4")
    , @NamedQuery(name = "TblQuestion.findByQtQuestionCorrectAnswer", query = "SELECT t FROM TblQuestion t WHERE t.qtQuestionCorrectAnswer = :qtQuestionCorrectAnswer")
    , @NamedQuery(name = "TblQuestion.findBySjSubjectId", query = "SELECT t FROM TblQuestion t  WHERE  t.qtSubjectId = :qtSubjectId")
    , @NamedQuery(name = "TblQuestion.findByPtQuestionStatus", query = "SELECT t FROM TblQuestion t WHERE t.ptQuestionStatus = :ptQuestionStatus")})
public class TblQuestion implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "qtQuestionId")
    private Integer qtQuestionId;
    @Column(name = "qtQuestion")
    private String qtQuestion;
    @Column(name = "qtQuestionAnswer1")
    private String qtQuestionAnswer1;
    @Column(name = "qtQuestionAnswer2")
    private String qtQuestionAnswer2;
    @Column(name = "qtQuestionAnswer3")
    private String qtQuestionAnswer3;
    @Column(name = "qtQuestionAnswer4")
    private String qtQuestionAnswer4;
    @Column(name = "qtQuestionCorrectAnswer")
    private String qtQuestionCorrectAnswer;
    @Column(name = "ptQuestionStatus")
    private Boolean ptQuestionStatus;
    @Column(name = "qtQuestionCreateedDate")
    @Temporal(TemporalType.DATE)
    private Date qtQuestionCreateedDate;
    @JoinColumn(name = "qtSubjectId", referencedColumnName = "sjSubjectId")
    @ManyToOne
    private TblSubject qtSubjectId;
    @JoinColumn(name = "qtUserID", referencedColumnName = "urUserGmail")
    @ManyToOne
    private TblUserDAO qtUserID;

    public TblQuestion() {
    }
    public TblQuestion(Integer qtQuestionId, String qtQuestion, String qtQuestionAnswer1, String qtQuestionAnswer2, String qtQuestionAnswer3, String qtQuestionAnswer4, String qtQuestionCorrectAnswer, Boolean ptQuestionStatus, TblSubject qtSubjectId) {
        this.qtQuestionId = qtQuestionId;
        this.qtQuestion = qtQuestion;
        this.qtQuestionAnswer1 = qtQuestionAnswer1;
        this.qtQuestionAnswer2 = qtQuestionAnswer2;
        this.qtQuestionAnswer3 = qtQuestionAnswer3;
        this.qtQuestionAnswer4 = qtQuestionAnswer4;
        this.qtQuestionCorrectAnswer = qtQuestionCorrectAnswer;
        this.ptQuestionStatus = ptQuestionStatus;
        this.qtSubjectId = qtSubjectId; 
    }

    public TblQuestion(Integer qtQuestionId) {
        this.qtQuestionId = qtQuestionId;
    }

    public Integer getQtQuestionId() {
        return qtQuestionId;
    }

    public void setQtQuestionId(Integer qtQuestionId) {
        this.qtQuestionId = qtQuestionId;
    }

    public String getQtQuestion() {
        return qtQuestion;
    }

    public void setQtQuestion(String qtQuestion) {
        this.qtQuestion = qtQuestion;
    }

    public String getQtQuestionAnswer1() {
        return qtQuestionAnswer1;
    }

    public void setQtQuestionAnswer1(String qtQuestionAnswer1) {
        this.qtQuestionAnswer1 = qtQuestionAnswer1;
    }

    public String getQtQuestionAnswer2() {
        return qtQuestionAnswer2;
    }

    public void setQtQuestionAnswer2(String qtQuestionAnswer2) {
        this.qtQuestionAnswer2 = qtQuestionAnswer2;
    }

    public String getQtQuestionAnswer3() {
        return qtQuestionAnswer3;
    }

    public void setQtQuestionAnswer3(String qtQuestionAnswer3) {
        this.qtQuestionAnswer3 = qtQuestionAnswer3;
    }

    public String getQtQuestionAnswer4() {
        return qtQuestionAnswer4;
    }

    public void setQtQuestionAnswer4(String qtQuestionAnswer4) {
        this.qtQuestionAnswer4 = qtQuestionAnswer4;
    }

    public String getQtQuestionCorrectAnswer() {
        return qtQuestionCorrectAnswer;
    }

    public void setQtQuestionCorrectAnswer(String qtQuestionCorrectAnswer) {
        this.qtQuestionCorrectAnswer = qtQuestionCorrectAnswer;
    }

    public Boolean getPtQuestionStatus() {
        return ptQuestionStatus;
    }

    public void setPtQuestionStatus(Boolean ptQuestionStatus) {
        this.ptQuestionStatus = ptQuestionStatus;
    }

    private static SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
    public String getQtQuestionCreateedDate() {        
        return format.format(qtQuestionCreateedDate);
    }

    public void setQtQuestionCreateedDate(Date qtQuestionCreateedDate) {
        this.qtQuestionCreateedDate = qtQuestionCreateedDate;
    }

    public TblSubject getQtSubjectId() {
        return qtSubjectId;
    }

    public void setQtSubjectId(TblSubject qtSubjectId) {
        this.qtSubjectId = qtSubjectId;
    }

    public TblUserDAO getQtUserID() {
        return qtUserID;
    }

    public void setQtUserID(TblUserDAO qtUserID) {
        this.qtUserID = qtUserID;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (qtQuestionId != null ? qtQuestionId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TblQuestion)) {
            return false;
        }
        TblQuestion other = (TblQuestion) object;
        if ((this.qtQuestionId == null && other.qtQuestionId != null) || (this.qtQuestionId != null && !this.qtQuestionId.equals(other.qtQuestionId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "anhnpq.util.TblQuestion[ qtQuestionId=" + qtQuestionId + " ]";
    }
    
}

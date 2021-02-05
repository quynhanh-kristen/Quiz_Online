package anhnpq.dao;

import anhnpq.dao.TblQuizQuestion;
import anhnpq.dao.TblSubject;
import anhnpq.dao.TblUserDAO;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2021-02-05T07:41:49")
@StaticMetamodel(TblQuizResult.class)
public class TblQuizResult_ { 

    public static volatile SingularAttribute<TblQuizResult, Integer> qrQuizResultId;
    public static volatile SingularAttribute<TblQuizResult, TblSubject> qrQuizResultSubject;
    public static volatile SingularAttribute<TblQuizResult, TblUserDAO> qrUserGmail;
    public static volatile SingularAttribute<TblQuizResult, Date> qrQuizResultDate;
    public static volatile SingularAttribute<TblQuizResult, Integer> qrQuizResultQuesAmount;
    public static volatile SingularAttribute<TblQuizResult, Integer> qrQuizResultCorrectAnsNum;
    public static volatile SetAttribute<TblQuizResult, TblQuizQuestion> tblQuizQuestionCollection;
    public static volatile SingularAttribute<TblQuizResult, Integer> qrQuizResultPoint;

}
package anhnpq.dao;

import anhnpq.dao.TblSubject;
import anhnpq.dao.TblUserDAO;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2021-02-03T20:40:27")
@StaticMetamodel(TblQuestion.class)
public class TblQuestion_ { 

    public static volatile SingularAttribute<TblQuestion, String> qtQuestion;
    public static volatile SingularAttribute<TblQuestion, TblSubject> qtSubjectId;
    public static volatile SingularAttribute<TblQuestion, Boolean> ptQuestionStatus;
    public static volatile SingularAttribute<TblQuestion, String> qtQuestionCorrectAnswer;
    public static volatile SingularAttribute<TblQuestion, Date> qtQuestionCreateedDate;
    public static volatile SingularAttribute<TblQuestion, String> qtQuestionAnswer1;
    public static volatile SingularAttribute<TblQuestion, String> qtQuestionAnswer2;
    public static volatile SingularAttribute<TblQuestion, Integer> qtQuestionId;
    public static volatile SingularAttribute<TblQuestion, String> qtQuestionAnswer3;
    public static volatile SingularAttribute<TblQuestion, String> qtQuestionAnswer4;
    public static volatile SingularAttribute<TblQuestion, TblUserDAO> qtUserID;

}
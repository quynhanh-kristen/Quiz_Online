package anhnpq.dao;

import anhnpq.dao.TblQuizResult;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2021-02-03T20:40:27")
@StaticMetamodel(TblQuizQuestion.class)
public class TblQuizQuestion_ { 

    public static volatile SingularAttribute<TblQuizQuestion, String> qqQuizQuestionCorrectAns;
    public static volatile SingularAttribute<TblQuizQuestion, TblQuizResult> qqQuizResultId;
    public static volatile SingularAttribute<TblQuizQuestion, String> qqQuizQues;
    public static volatile SingularAttribute<TblQuizQuestion, Integer> qqQuizQuestionId;
    public static volatile SingularAttribute<TblQuizQuestion, String> qqQuizQuestionAnsOfUser;

}
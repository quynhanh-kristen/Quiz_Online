package anhnpq.dao;

import anhnpq.dao.TblCategory;
import anhnpq.dao.TblQuestion;
import anhnpq.dao.TblQuizResult;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2021-02-02T08:52:42")
@StaticMetamodel(TblSubject.class)
public class TblSubject_ { 

    public static volatile SingularAttribute<TblSubject, Integer> sjSubjectId;
    public static volatile SingularAttribute<TblSubject, Boolean> sjSubjectStatus;
    public static volatile SingularAttribute<TblSubject, TblCategory> sjCategoryID;
    public static volatile CollectionAttribute<TblSubject, TblQuizResult> tblQuizResultCollection;
    public static volatile SingularAttribute<TblSubject, String> sjSubjectName;
    public static volatile CollectionAttribute<TblSubject, TblQuestion> tblQuestionCollection;

}
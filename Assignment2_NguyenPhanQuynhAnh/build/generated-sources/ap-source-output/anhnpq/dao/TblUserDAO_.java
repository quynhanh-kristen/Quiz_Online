package anhnpq.dao;

import anhnpq.dao.TblQuestion;
import anhnpq.dao.TblQuizResult;
import anhnpq.dao.TblRole;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2021-02-02T18:36:52")
@StaticMetamodel(TblUserDAO.class)
public class TblUserDAO_ { 

    public static volatile SingularAttribute<TblUserDAO, TblRole> urRoleID;
    public static volatile SingularAttribute<TblUserDAO, String> urUserGmail;
    public static volatile SingularAttribute<TblUserDAO, String> urPassword;
    public static volatile CollectionAttribute<TblUserDAO, TblQuizResult> tblQuizResultCollection;
    public static volatile SingularAttribute<TblUserDAO, String> urUserName;
    public static volatile CollectionAttribute<TblUserDAO, TblQuestion> tblQuestionCollection;

}
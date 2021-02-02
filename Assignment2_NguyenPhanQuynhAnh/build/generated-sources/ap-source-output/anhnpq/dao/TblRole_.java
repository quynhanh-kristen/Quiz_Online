package anhnpq.dao;

import anhnpq.dao.TblUserDAO;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2021-02-02T10:17:20")
@StaticMetamodel(TblRole.class)
public class TblRole_ { 

    public static volatile SingularAttribute<TblRole, Integer> rlRoleId;
    public static volatile CollectionAttribute<TblRole, TblUserDAO> tblUserDAOCollection;
    public static volatile SingularAttribute<TblRole, String> rlRoleName;

}
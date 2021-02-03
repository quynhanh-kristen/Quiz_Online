package anhnpq.dao;

import anhnpq.dao.TblSubject;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2021-02-03T20:40:27")
@StaticMetamodel(TblCategory.class)
public class TblCategory_ { 

    public static volatile CollectionAttribute<TblCategory, TblSubject> tblSubjectCollection;
    public static volatile SingularAttribute<TblCategory, Integer> ctgCategoryId;
    public static volatile SingularAttribute<TblCategory, String> ctgCategoryName;

}
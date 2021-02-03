package anhnpq.dao;

import anhnpq.dao.TblUserDAO;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2021-02-03T20:40:27")
@StaticMetamodel(TblHistoryAccess.class)
public class TblHistoryAccess_ { 

    public static volatile SingularAttribute<TblHistoryAccess, Integer> haHistoryAccess;
    public static volatile SingularAttribute<TblHistoryAccess, String> haHistoryAccessContent;
    public static volatile SingularAttribute<TblHistoryAccess, Date> haHistorAccessDate;
    public static volatile SingularAttribute<TblHistoryAccess, TblUserDAO> haUserGmail;

}
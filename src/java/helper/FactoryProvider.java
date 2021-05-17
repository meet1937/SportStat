package helper;
import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
public class FactoryProvider {
    private static SessionFactory factory;
    
    public static SessionFactory getFactory(){
        
        try{
            if(factory==null)
            factory=new Configuration().configure("/resources/hibernate.hbm.xml").buildSessionFactory();
        }
        catch(HibernateException e){
            System.out.println(e);
        }
        return factory;
    } 
    
}
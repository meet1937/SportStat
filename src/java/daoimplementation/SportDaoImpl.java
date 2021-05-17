/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daoimplementation;

import dao.SportDao;
import entities.Sports;
import helper.FactoryProvider;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author LENOVO
 */
public class SportDaoImpl implements SportDao{
    @Override
    public List<Sports> getAllSports() 
    {
        List<Sports> sportsList ; 
        sportsList =(List<Sports>)FactoryProvider.getFactory().openSession().createCriteria(Sports.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
        return sportsList ;
    }
    @Override
    public void insertSport(Sports sportDetails)
    {
        SessionFactory sessionFactory = FactoryProvider.getFactory();
        Session session = sessionFactory.openSession();
        session.save(sportDetails);
        session.close();
        sessionFactory.close();
    }
}

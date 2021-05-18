/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daoimplementation;

import dao.GroundDao;
import entities.Ground;
import entities.Tournament;
import helper.FactoryProvider;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author MEET
 */
public class GroundDaoImpl implements GroundDao {

    @Override
    public List<Ground> getGround(int id) {
        String hql = "from Ground WHERE tournament_id=:id";
        SessionFactory sessionFactory = FactoryProvider.getFactory();
        Session session = sessionFactory.openSession();
        Query query = session.createQuery(hql);
        query.setParameter("id", id);
        List<Ground> groundList = query.list();
        return groundList;
    }
}

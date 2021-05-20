/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daoimplementation;

import dao.MatchesDao;
import entities.Matches;
import helper.FactoryProvider;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author MEET
 */
public class MatchesDaoImpl implements MatchesDao{
    @Override
    public List<Matches> getMatch(int ground_id, int tournament_id){
        String hql = "from Matches WHERE ground_id=:ground_id AND tournament_id=:tournament_id";
        SessionFactory sessionFactory = FactoryProvider.getFactory();
        Session session = sessionFactory.openSession();
        Query query = session.createQuery(hql);
        query.setParameter("ground_id", ground_id);
         query.setParameter("tournament_id", tournament_id);
        List<Matches> matchList = query.list();
        return matchList;
    }
}

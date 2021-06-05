/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daoimplementation;

import dao.SquadDao;
import entities.Matches;
import entities.Squad;
import helper.FactoryProvider;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author MEET
 */
public class SquadDaoImpl implements SquadDao{
    public List<Squad> getSquadPlayer(int team_id)
    {
        String hql = "from Squad WHERE team_id=:team_id ";
        SessionFactory sessionFactory = FactoryProvider.getFactory();
        Session session = sessionFactory.openSession();
        Query query = session.createQuery(hql);
        query.setParameter("team_id", team_id);
        List<Squad> squadList = query.list();
        return squadList;
    }
}

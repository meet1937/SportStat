/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daoimplementation;

import dao.BatCareerDao;
import entities.BatCareer;
import entities.Ground;
import helper.FactoryProvider;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author MEET
 */
public class BatCareerDaoImpl implements BatCareerDao {
    @Override
    public List<BatCareer> getBatCareerStats(int player_id,int tournament_id)
    {
        String hql = "from BatCareer WHERE tournament_id=:tournament_id and player_id=:player_id";
        SessionFactory sessionFactory = FactoryProvider.getFactory();
        Session session = sessionFactory.openSession();
        Query query = session.createQuery(hql);
        query.setParameter("tournament_id", tournament_id);
        query.setParameter("player_id", player_id);
        List<BatCareer> batCareerList = query.list();
        session.close();
        return batCareerList;
    }
}

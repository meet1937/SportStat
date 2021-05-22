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
        session.close();
        return groundList;
    }
    public List<Object[]> getGroundData(int ground_id, int tournament_id){
        String hql = "select count(ground_id), cast( round(avg(score_team1)) as int),cast( round( avg(score_team2)) as int),cast( round(avg(wicket_team1)) as int),cast( round( avg(wicket_team2)) as int),max(score_team1),max(score_team2),(select count(*) from Matches where team1 = winner AND  tournament_id=:tournament_id AND ground_id=:ground_id ) from Matches where  tournament_id=:tournament_id AND ground_id=:ground_id";
        SessionFactory sessionFactory = FactoryProvider.getFactory();
        Session session = sessionFactory.openSession();
        Query query = session.createQuery(hql);
        query.setParameter("tournament_id", tournament_id);
        query.setParameter("ground_id", ground_id);
        List<Object[]> GroundDataList= (List<Object[]>)query.list();
        session.close();
        return GroundDataList;
        
    }
 
    
    @Override
    public List<Object[]> getGroundDataYear(int ground_id, int tournament_id,int year){
        String hql = "select count(ground_id), cast( round(avg(score_team1)) as int),cast( round( avg(score_team2)) as int),cast( round(avg(wicket_team1)) as int),cast( round( avg(wicket_team2)) as int),max(score_team1),max(score_team2),(select count(*) from Matches where team1 = winner AND  tournament_id=:tournament_id AND ground_id=:ground_id ANd season=:year ) from Matches where  tournament_id=:tournament_id AND ground_id=:ground_id AND season=:year";
        SessionFactory sessionFactory = FactoryProvider.getFactory();
        Session session = sessionFactory.openSession();
        Query query = session.createQuery(hql);
        query.setParameter("tournament_id", tournament_id);
        query.setParameter("ground_id", ground_id);
        query.setParameter("year", year);
        List<Object[]> GroundDataList= (List<Object[]>)query.list();
        session.close();
        return GroundDataList;
        
    }
}

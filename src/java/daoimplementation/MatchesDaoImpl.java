/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daoimplementation;

import dao.MatchesDao;
import entities.Matches;
import entities.Teams;
import helper.FactoryProvider;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author MEET
 */
public class MatchesDaoImpl implements MatchesDao {

    @Override
    public List<Matches> getMatch(int ground_id, int tournament_id) {
        String hql = "from Matches WHERE ground_id=:ground_id AND tournament_id=:tournament_id";
        SessionFactory sessionFactory = FactoryProvider.getFactory();
        Session session = sessionFactory.openSession();
        Query query = session.createQuery(hql);
        query.setParameter("ground_id", ground_id);
        query.setParameter("tournament_id", tournament_id);
        List<Matches> matchList = query.list();
        return matchList;
    }

    @Override
    public List<Object[]> getteamVsTeam(int team1, int team2) {
        String hql = "select count(*),(select count(*) from Matches where winner=:team1 AND ( (team2=:team2 AND team1=:team1) or (team2=:team1 AND team1=:team2) ) ),(select count(*) from Matches where toss_winner=:team1 AND ( (team2=:team2 AND team1=:team1) or (team2=:team1 AND team1=:team2) )) from Matches WHERE ( (team2=:team2 AND team1=:team1) or (team2=:team1 AND team1=:team2) )";
        SessionFactory sessionFactory = FactoryProvider.getFactory();
        Session session = sessionFactory.openSession();
        Query query = session.createQuery(hql);
        query.setParameter("team1", team1);
        query.setParameter("team2", team2);
        List<Object[]> teamvsteam = query.list();
        return teamvsteam;
    }

    @Override
    public List<Teams> getTeamName(int team) {
        String hql = "from Teams WHERE team_id=:team ";
        SessionFactory sessionFactory = FactoryProvider.getFactory();
        Session session = sessionFactory.openSession();
        Query query = session.createQuery(hql);
        query.setParameter("team", team);
//         query.setParameter("tournament_id", tournament_id);
        List<Teams> teamDetail = query.list();
        return teamDetail;
    }

    @Override
    public List<Object[]> getAdvanceTeamData(int team1, int team2, int ground_id,int season,int decide1,int decide2) {
        
        String hql = "select count(*),(select count(*) from Matches where (season=:season or 1=:decide2) AND(ground_id=:ground_id or 1=:decide1) and winner=:team1 AND ( (team2=:team2 AND team1=:team1) or (team2=:team1 AND team1=:team2) ) ),(select count(*) from Matches where (season=:season or 1=:decide2) AND (ground_id=:ground_id or 1=:decide1)and toss_winner=:team1 AND ( (team2=:team2 AND team1=:team1) or (team2=:team1 AND team1=:team2) )) from Matches WHERE (season=:season or 1=:decide2) AND (ground_id=:ground_id or 1=:decide1)and ( (team2=:team2 AND team1=:team1) or (team2=:team1 AND team1=:team2) )";
        SessionFactory sessionFactory = FactoryProvider.getFactory();
        Session session = sessionFactory.openSession();
        Query query = session.createQuery(hql);
        query.setParameter("team1", team1);
        query.setParameter("team2", team2);
        query.setParameter("ground_id", ground_id);
        query.setParameter("decide1", decide1);
        query.setParameter("decide2",decide2 );
        query.setParameter("season",season );
        List<Object[]> teamvsteam = query.list();
        return teamvsteam;
    }
}

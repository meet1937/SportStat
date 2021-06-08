/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daoimplementation;

import dao.AdvBatCareerDao;
import helper.FactoryProvider;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author MEET
 */
public class AdvBatCareerDaoImpl implements AdvBatCareerDao {

    @Override
    public List<Object[]> getAdvBatStats(int player_id, int tournament_id, String year1, String team_id1, String ground_id1) {
        int decide1 = 1, decide2 = 1, decide3 = 1;
        int year = 0, team_id = 0, ground_id = 0;
        if (!year1.equals("All")) {
            year = Integer.parseInt(year1);
            decide1 = -1;
        }
        if (!team_id1.equals("All")) {
            team_id = Integer.parseInt(team_id1);
            decide2 = -1;
        }
        if (!ground_id1.equals("All")) {
            ground_id = Integer.parseInt(ground_id1);
            decide3 = -1;
        }

        String hql = "from AdvBatCareer where tournament_id=:tournament_id and player_id=:player_id and         (1=:decide3 or ground_id=:ground_id) and (1=:decide2 or team_id=:team_id) and                              (1=:decide1 or year=:year)";
        SessionFactory sessionFactory = FactoryProvider.getFactory();
        Session session = sessionFactory.openSession();
        Query query = session.createQuery(hql);
        query.setParameter("player_id", player_id);
        query.setParameter("tournament_id", tournament_id);
        query.setParameter("year", year);
        query.setParameter("team_id", team_id);
        query.setParameter("ground_id", ground_id);
        query.setParameter("decide1", decide1);
        query.setParameter("decide2", decide2);
        query.setParameter("decide3", decide3);

        List<Object[]> advBatCareerList = (List<Object[]>) query.list();
        session.close();
        return advBatCareerList;
    }
}

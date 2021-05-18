/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daoimplementation;

import dao.TeamDao;
import entities.Teams;
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
public class TeamDaoImpl implements TeamDao {
    @Override
    public List<Teams> getTeam(int id ){
        String hql = "from Teams WHERE tournament_id=:id";
        SessionFactory sessionFactory = FactoryProvider.getFactory();
        Session session = sessionFactory.openSession();
        Query query = session.createQuery(hql);
        query.setParameter("id",id);
        List<Teams> teamList = query.list();
        return teamList;
    }
}

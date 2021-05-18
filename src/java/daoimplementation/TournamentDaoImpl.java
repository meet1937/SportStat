/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daoimplementation;

import dao.TournamentDao;
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
public class TournamentDaoImpl implements TournamentDao {
    @Override
    public List<Tournament> getTournament(int id ){
        String hql = "from Tournament WHERE sport_id=:id";
        SessionFactory sessionFactory = FactoryProvider.getFactory();
        Session session = sessionFactory.openSession();
        Query query = session.createQuery(hql);
        query.setParameter("id", id);
        List<Tournament> tournamentList = query.list();
        return tournamentList;
    }
}

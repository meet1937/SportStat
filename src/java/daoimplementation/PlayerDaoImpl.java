/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daoimplementation;

import dao.PlayerDao;
import entities.Ground;
import entities.Player;
import helper.FactoryProvider;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author MEET
 */
public class PlayerDaoImpl implements PlayerDao {

    @Override
    public List<Player> getPlayerDetail(int player_id, int tournament_id)
    {
        SessionFactory sessionFactory = FactoryProvider.getFactory();
        String hql = "from Player WHERE tournament_id=:tournament_id ANd player_id=:player_id";
        Session session = sessionFactory.openSession();
        Query query = session.createQuery(hql);
        query.setParameter("player_id", player_id);
        query.setParameter("tournament_id", tournament_id);
        List<Player> playerList = query.list();
        session.close();
        return playerList;
    }
    
    @Override
    public List<Player> searchPlayerByName(String player_name,int tournament_id)
    {
        System.out.println(player_name + tournament_id );
        SessionFactory sessionFactory = FactoryProvider.getFactory();
        String hql = "from Player WHERE tournament_id=? AND player_name like ? ";
        Session session = sessionFactory.openSession();
        Query query = session.createQuery(hql);
        System.out.println(player_name + tournament_id );
        query.setInteger(0, tournament_id);
        query.setString(1, "%"+player_name+"%");
        List<Player> playerList = query.list();
        session.close();
        return playerList;
    }
}

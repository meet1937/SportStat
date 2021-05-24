/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entities.Player;
import java.util.List;

/**
 *
 * @author MEET
 */
public interface PlayerDao {

    public List<Player> getPlayerDetail(int player_id, int tournament_id);
    public List<Player> searchPlayerByName(String player_name,int tournament_id);
}

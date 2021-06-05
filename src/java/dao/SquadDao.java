/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entities.Squad;
import java.util.List;

/**
 *
 * @author MEET
 */
public interface SquadDao {
    public List<Squad> getSquadPlayer(int team_id);
}

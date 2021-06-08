/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;

/**
 *
 * @author MEET
 */
public interface AdvBowlCareerDao {
    List<Object[]> getAdvBowlStats(int player_id,int tournament_id,String year,String team_id,String ground_id );
}

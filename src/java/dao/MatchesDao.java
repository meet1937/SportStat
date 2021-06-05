/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entities.Matches;
import entities.Teams;
import java.util.List;

/**
 *
 * @author MEET
 */
public interface MatchesDao {
    public List<Matches> getMatch(int ground_id, int tournament_id );
    public List<Object[]> getteamVsTeam(int team1, int team2);
    public List<Teams> getTeamName(int team);
    public List<Object[]> getAdvanceTeamData(int team1,int team2,int ground_id,int year,int decide1,int decide2);
}

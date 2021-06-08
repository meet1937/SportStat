/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author MEET
 */
@Entity
@Table(name = "ipl_bowl_adv_stats")
public class AdvBowlCareer implements Serializable {

    @Id
    int stats_id;
    int player_id;
    int ground_id;
    int balls;
    int runs;
    int wkts;
    int team_id;
    int tournament_id;
    int isbowl;
    int year;

    public AdvBowlCareer() {
    }

    public AdvBowlCareer(int player_id, int ground_id, int balls, int runs, int wkts, int team_id, int tournament_id, int isbowl, int year) {
        this.player_id = player_id;
        this.ground_id = ground_id;
        this.balls = balls;
        this.runs = runs;
        this.wkts = wkts;
        this.team_id = team_id;
        this.tournament_id = tournament_id;
        this.isbowl = isbowl;
        this.year = year;
    }

    public int getStats_id() {
        return stats_id;
    }

    public void setStats_id(int stats_id) {
        this.stats_id = stats_id;
    }

    public int getPlayer_id() {
        return player_id;
    }

    public void setPlayer_id(int player_id) {
        this.player_id = player_id;
    }

    public int getGround_id() {
        return ground_id;
    }

    public void setGround_id(int ground_id) {
        this.ground_id = ground_id;
    }

    public int getBalls() {
        return balls;
    }

    public void setBalls(int balls) {
        this.balls = balls;
    }

    public int getRuns() {
        return runs;
    }

    public void setRuns(int runs) {
        this.runs = runs;
    }

    public int getWkts() {
        return wkts;
    }

    public void setWkts(int wkts) {
        this.wkts = wkts;
    }

    public int getTeam_id() {
        return team_id;
    }

    public void setTeam_id(int team_id) {
        this.team_id = team_id;
    }

    public int getTournament_id() {
        return tournament_id;
    }

    public void setTournament_id(int tournament_id) {
        this.tournament_id = tournament_id;
    }

    public int getIsbowl() {
        return isbowl;
    }

    public void setIsbowl(int isbowl) {
        this.isbowl = isbowl;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    @Override
    public String toString() {
        return "AdvBowlCareer{" + "stats_id=" + stats_id + ", player_id=" + player_id + ", ground_id=" + ground_id + ", balls=" + balls + ", runs=" + runs + ", wkts=" + wkts + ", team_id=" + team_id + ", tournament_id=" + tournament_id + ", isbowl=" + isbowl + ", year=" + year + '}';
    }
    
    
}

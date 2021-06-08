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
@Table(name = "ipl_bat_adv_stats")
public class AdvBatCareer implements Serializable {

    @Id
    int stats_id;
    int ground_id;
    int player_id;
    int runs;
    int balls;
    int four;
    int six;
    int team_id;
    int year;
    int bat_position;
    int not_out;
    int tournament_id;

    public AdvBatCareer() {
    }

    public AdvBatCareer(int ground_id, int player_id, int runs, int balls, int four, int six, int team_id, int year, int bat_position, int not_out, int tournament_id) {
        this.ground_id = ground_id;
        this.player_id = player_id;
        this.runs = runs;
        this.balls = balls;
        this.four = four;
        this.six = six;
        this.team_id = team_id;
        this.year = year;
        this.bat_position = bat_position;
        this.not_out = not_out;
        this.tournament_id = tournament_id;
    }

    public int getStats_id() {
        return stats_id;
    }

    public void setStats_id(int stats_id) {
        this.stats_id = stats_id;
    }

    public int getGround_id() {
        return ground_id;
    }

    public void setGround_id(int ground_id) {
        this.ground_id = ground_id;
    }

    public int getPlayer_id() {
        return player_id;
    }

    public void setPlayer_id(int player_id) {
        this.player_id = player_id;
    }

    public int getRuns() {
        return runs;
    }

    public void setRuns(int runs) {
        this.runs = runs;
    }

    public int getBalls() {
        return balls;
    }

    public void setBalls(int balls) {
        this.balls = balls;
    }

    public int getFour() {
        return four;
    }

    public void setFour(int four) {
        this.four = four;
    }

    public int getSix() {
        return six;
    }

    public void setSix(int six) {
        this.six = six;
    }

    public int getTeam_id() {
        return team_id;
    }

    public void setTeam_id(int team_id) {
        this.team_id = team_id;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public int getBat_position() {
        return bat_position;
    }

    public void setBat_position(int bat_position) {
        this.bat_position = bat_position;
    }

    public int getNot_out() {
        return not_out;
    }

    public void setNot_out(int not_out) {
        this.not_out = not_out;
    }

    public int getTournament_id() {
        return tournament_id;
    }

    public void setTournament_id(int tournament_id) {
        this.tournament_id = tournament_id;
    }

    @Override
    public String toString() {
        return "AdvBatCareer{" + "stats_id=" + stats_id + ", ground_id=" + ground_id + ", player_id=" + player_id + ", runs=" + runs + ", balls=" + balls + ", four=" + four + ", six=" + six + ", team_id=" + team_id + ", year=" + year + ", bat_position=" + bat_position + ", not_out=" + not_out + ", tournament_id=" + tournament_id + '}';
    }
    
}

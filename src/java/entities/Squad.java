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
@Table(name = "squad")
public class Squad implements Serializable {

    @Id
    int squad_id;
    int team_id;
    int player_id;
    int tournament_id;
    int season;

    public Squad() {
    }

    @Override
    public String toString() {
        return "Squad{" + "squad_id=" + squad_id + ", team_id=" + team_id + ", player_id=" + player_id + ", tournament_id=" + tournament_id + ", season=" + season + '}';
    }

    public Squad(int team_id, int player_id, int tournament_id, int season) {
        this.team_id = team_id;
        this.player_id = player_id;
        this.tournament_id = tournament_id;
        this.season = season;
    }

    public int getSquad_id() {
        return squad_id;
    }

    public void setSquad_id(int squad_id) {
        this.squad_id = squad_id;
    }

    public int getTeam_id() {
        return team_id;
    }

    public void setTeam_id(int team_id) {
        this.team_id = team_id;
    }

    public int getPlayer_id() {
        return player_id;
    }

    public void setPlayer_id(int player_id) {
        this.player_id = player_id;
    }

    public int getTournament_id() {
        return tournament_id;
    }

    public void setTournament_id(int tournament_id) {
        this.tournament_id = tournament_id;
    }

    public int getSeason() {
        return season;
    }

    public void setSeason(int season) {
        this.season = season;
    }

}

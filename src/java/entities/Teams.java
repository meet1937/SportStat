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
@Table(name = "teams")
public class Teams implements Serializable {

    @Id
    int team_id;
    String team_name;
    int tournament_id;
    String team_image;

    public Teams() {
    }

    public Teams(String team_name, int tournament_id, String team_image) {
        this.team_name = team_name;
        this.tournament_id = tournament_id;
        this.team_image = team_image;
    }

    public int getTeam_id() {
        return team_id;
    }

    public void setTeam_id(int team_id) {
        this.team_id = team_id;
    }

    public String getTeam_name() {
        return team_name;
    }

    public void setTeam_name(String team_name) {
        this.team_name = team_name;
    }

    public int getTournament_id() {
        return tournament_id;
    }

    public void setTurnament_id(int turnament_id) {
        this.tournament_id = turnament_id;
    }

    public String getTeam_image() {
        return team_image;
    }

    public void setTeam_image(String team_image) {
        this.team_image = team_image;
    }

    @Override
    public String toString() {
        return "Teams{" + "team_id=" + team_id + ", team_name=" + team_name + ", tournament_id=" + tournament_id + ", team_image=" + team_image + '}';
    }

}

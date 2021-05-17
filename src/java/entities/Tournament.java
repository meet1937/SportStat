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
@Table(name = "tournament")
public class Tournament implements Serializable {

    @Id
    int tournament_id;
    String tournament_name;
    int sport_id;
    String tournament_image;
    

    public Tournament() {
    }

    public Tournament(String tournament_name, int sport_id, String tournament_image) {
        this.tournament_name = tournament_name;
        this.sport_id = sport_id;
        this.tournament_image = tournament_image;
    }

  

    public int getTournament_id() {
        return tournament_id;
    }

    public void setTournament_id(int tournament_id) {
        this.tournament_id = tournament_id;
    }

    public String getTournament_name() {
        return tournament_name;
    }

    public void setTournament_name(String tournament_name) {
        this.tournament_name = tournament_name;
    }

    public String getTournament_image() {
        return tournament_image;
    }

    public void setTournament_image(String tournament_image) {
        this.tournament_image = tournament_image;
    }

    public int getSport_id() {
        return sport_id;
    }

    public void setSport_id(int sport_id) {
        this.sport_id = sport_id;
    }

    @Override
    public String toString() {
        return "Tournament{" + "tournament_id=" + tournament_id + ", tournament_name=" + tournament_name + ", tournament_image=" + tournament_image + ", sport_id=" + sport_id + '}';
    }
}

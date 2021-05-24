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
@Table(name = "players")
public class Player implements Serializable {

    @Id
    int player_id;
    String player_name;
    String country;
    String batting_style;
    String bowling_style;
    String dob;
    String role;
    int tournament_id;

    public Player() {
    }

    public Player(String player_name, String country, String batting_style, String bowling_style, String dob, String role, int tournament_id) {
        this.player_name = player_name;
        this.country = country;
        this.batting_style = batting_style;
        this.bowling_style = bowling_style;
        this.dob = dob;
        this.role = role;
        this.tournament_id = tournament_id;
    }

    public int getPlayer_id() {
        return player_id;
    }

    public void setPlayer_id(int player_id) {
        this.player_id = player_id;
    }

    public String getPlayer_name() {
        return player_name;
    }

    public void setPlayer_name(String player_name) {
        this.player_name = player_name;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getBatting_style() {
        return batting_style;
    }

    public void setBatting_style(String batting_style) {
        this.batting_style = batting_style;
    }

    public String getBowling_style() {
        return bowling_style;
    }

    public void setBowling_style(String bowling_style) {
        this.bowling_style = bowling_style;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public int getTournament_id() {
        return tournament_id;
    }

    public void setTournament_id(int tournament_id) {
        this.tournament_id = tournament_id;
    }

    @Override
    public String toString() {
        return "Player{" + "player_id=" + player_id + ", player_name=" + player_name + ", country=" + country + ", batting_style=" + batting_style + ", bowling_style=" + bowling_style + ", dob=" + dob + ", role=" + role + ", tournament_id=" + tournament_id + '}';
    }

}

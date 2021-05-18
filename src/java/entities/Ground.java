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
@Table(name = "grounds")
public class Ground implements Serializable {

    @Id
    int ground_id;
    String ground_name;
    String city;
    String country;
    int tournament_id;

    public Ground() {
    }

    public Ground(String ground_name, String city, String country, int tournament_id) {
        this.ground_name = ground_name;
        this.city = city;
        this.country = country;
        this.tournament_id = tournament_id;
    }

    public int getGround_id() {
        return ground_id;
    }

    public void setGround_id(int ground_id) {
        this.ground_id = ground_id;
    }

    public String getGround_name() {
        return ground_name;
    }

    public void setGround_name(String ground_name) {
        this.ground_name = ground_name;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public int getTournament_id() {
        return tournament_id;
    }

    public void setTournament_id(int tournament_id) {
        this.tournament_id = tournament_id;
    }

    @Override
    public String toString() {
        return "Ground{" + "ground_id=" + ground_id + ", ground_name=" + ground_name + ", city=" + city + ", country=" + country + ", tournament_id=" + tournament_id + '}';
    }

}

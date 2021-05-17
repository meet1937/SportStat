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
 * @author LENOVO
 */
@Entity
@Table(name = "sports")
public class Sports implements Serializable {
    @Id
    int sports_id ;
    String sports_name ; 
    String sports_image ; 
    
    
    public Sports() {
    }

    public Sports(int sports_id, String sports_name, String sports_image) {
        this.sports_id = sports_id;
        this.sports_name = sports_name;
        this.sports_image = sports_image;
    }

    public Sports(String sports_name, String sports_image) {
        this.sports_name = sports_name;
        this.sports_image = sports_image;
    }
    
    
    public int getSports_id() {
        return sports_id;
    }

    public void setSports_id(int sports_id) {
        this.sports_id = sports_id;
    }

    public String getSports_name() {
        return sports_name;
    }

    public void setSports_name(String sports_name) {
        this.sports_name = sports_name;
    }

    public String getSports_image() {
        return sports_image;
    }

    public void setSports_image(String sports_image) {
        this.sports_image = sports_image;
    }
    @Override
    public String toString() {
        return "Sports{" + "sports_id=" + sports_id + ", sports_name=" + sports_name + ", sports_image=" + sports_image + '}';
    }

}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entities.Ground;
import java.util.List;

/**
 *
 * @author MEET
 */
public interface GroundDao {
   public List<Ground> getGround(int id );
   public List<Object[]> getGroundData(int ground_id, int tournament_id);
}

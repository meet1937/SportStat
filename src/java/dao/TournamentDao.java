/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entities.Tournament;
import java.util.List;

/**
 *
 * @author MEET
 */
public interface TournamentDao {
    public List<Tournament> getTournament(int id );
    
}


package dao;

import entities.Sports;
import java.util.List;


public interface SportDao {
    public List<Sports> getAllSports() ; 
    public void insertSport(Sports sportDetail);
}

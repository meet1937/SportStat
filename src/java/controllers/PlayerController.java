/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import daoimplementation.AdvBatCareerDaoImpl;
import daoimplementation.AdvBowlCareerDaoImpl;
import daoimplementation.BatCareerDaoImpl;
import daoimplementation.BowlCareerDaoImpl;
import daoimplementation.GroundDaoImpl;
import daoimplementation.PlayerDaoImpl;
import daoimplementation.TeamDaoImpl;
import entities.BatCareer;
import entities.BowlCareer;
import entities.Ground;
import entities.Player;
import entities.Teams;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author MEET
 */
@Controller
public class PlayerController {

    @Autowired
    PlayerDaoImpl playerDao;

    @Autowired
    BatCareerDaoImpl batCareer;

    @Autowired
    GroundDaoImpl groundDao;

    @Autowired
    TeamDaoImpl teamDao;

    @Autowired
    AdvBatCareerDaoImpl advBatCareerDao;
    
    @Autowired
    BowlCareerDaoImpl bowlCareer;
    
    @Autowired
    AdvBowlCareerDaoImpl advBowlCareerDao;

    @RequestMapping(value = "/player")
    public ModelAndView giveTournamentContent(@RequestParam("tournament_id") String tournament_id) {

        ModelAndView model = new ModelAndView("player");
        model.addObject("tournament_id", tournament_id);
        return model;
    }

    @RequestMapping(value = "/getPlayer")
    @ResponseBody
    public List<Player> giveAdvance(@RequestParam("player_name") String player_name, @RequestParam("tournament_id") int tournament_id) {
        List<Player> playerList = playerDao.searchPlayerByName(player_name, tournament_id);
        System.out.println(playerList.size());
        return playerList;
    }

    @RequestMapping(value = "/playerDetail")
    public ModelAndView givePlayerInfo(@RequestParam("player_id") int player_id, @RequestParam("tournament_id") int tournament_id) {

        ModelAndView model = new ModelAndView("PlayerInfo");
        List<Player> playerList = playerDao.getPlayerDetail(player_id, tournament_id);
        List<BatCareer> batCareerList = batCareer.getBatCareerStats(player_id, tournament_id);
        List<Teams> teamList = teamDao.getTeam(tournament_id);
        List<Ground> groundName = groundDao.getGround(tournament_id);
        List<BowlCareer> bowlCareerList = bowlCareer.getBowlCareerStats(player_id, tournament_id);
        model.addObject("groundName", groundName);
        model.addObject("playerList", playerList);
        model.addObject("batCareerList", batCareerList);
        model.addObject("bowlCareerList", bowlCareerList);
        model.addObject("teamList", teamList);
        System.out.println(batCareerList);
        return model;
    }

    @RequestMapping(value = "/getAdvBatStats")
    @ResponseBody
    public List<Object[]> getAdvBatStats(@RequestParam("player_id") int player_id, @RequestParam("tournament_id") int tournament_id, @RequestParam("year") String year, @RequestParam("team") String team, @RequestParam("ground") String ground) {
        List<Object[]> getAdvBatStatsList = advBatCareerDao.getAdvBatStats(player_id, tournament_id, year, team, ground);
        System.out.println(getAdvBatStatsList);
        return getAdvBatStatsList;
    }
    
    @RequestMapping(value = "/getAdvBowlStats")
    @ResponseBody
    public List<Object[]> getAdvBowlStats(@RequestParam("player_id") int player_id, @RequestParam("tournament_id") int tournament_id, @RequestParam("year") String year, @RequestParam("team") String team, @RequestParam("ground") String ground) {
        List<Object[]> getAdvBowlStatsList = advBowlCareerDao.getAdvBowlStats(player_id, tournament_id, year, team, ground);
        System.out.println("hello");
        System.out.println(getAdvBowlStatsList);
        return getAdvBowlStatsList;
    }
}

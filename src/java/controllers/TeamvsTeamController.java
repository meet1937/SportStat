/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import dao.MatchesDao;
import dao.TeamDao;
import entities.Teams;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author MEET
 */
@Controller
public class TeamvsTeamController {
    @Autowired
    private TeamDao teamDao;
    @Autowired
    private MatchesDao matchDao;
    @RequestMapping(value = "/teamvsteam")
    public ModelAndView giveTeamvsTeam(@RequestParam("tournament_id") String tournament_id) {
     
        List<Teams> teamList = teamDao.getTeam(Integer.parseInt(tournament_id));
        ModelAndView model = new ModelAndView("Teamvsteam");
        model.addObject("teamList", teamList);
        return model;
    }
    @RequestMapping(value = "/teamvsteamstats")
    public ModelAndView giveTeamVsTeamStats(@RequestParam("team1") int team1,@RequestParam("team2") int team2) {
     
        List<Object[]> teamvsteam=matchDao.getteamVsTeam(team1, team2);
        List<Teams> teamList1 = matchDao.getTeamName(team1);
        List<Teams> teamList2 = matchDao.getTeamName(team2);
        ModelAndView model = new ModelAndView("TeamVsTeamStats");
        model.addObject("teamvsteam", teamvsteam);
        model.addObject("teamList1", teamList1);
        model.addObject("teamList2", teamList2);
        return model;
    }
}

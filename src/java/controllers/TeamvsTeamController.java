/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import com.google.gson.Gson;
import dao.GroundDao;
import dao.MatchesDao;
import dao.TeamDao;
import entities.Ground;
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
public class TeamvsTeamController {

    @Autowired
    private TeamDao teamDao;
    @Autowired
    private MatchesDao matchDao;
    @Autowired
    private GroundDao groundDao;

    @RequestMapping(value = "/teamvsteam")
    public ModelAndView giveTeamvsTeam(@RequestParam("tournament_id") String tournament_id) {

        List<Teams> teamList = teamDao.getTeam(Integer.parseInt(tournament_id));
        ModelAndView model = new ModelAndView("Teamvsteam");
        model.addObject("teamList", teamList);
        return model;
    }

    @RequestMapping(value = "/teamvsteamstats")
    public ModelAndView giveTeamVsTeamStats(@RequestParam("team1") int team1, @RequestParam("team2") int team2, @RequestParam("tournament_id") int tournament_id) {

        List<Object[]> teamvsteam = matchDao.getteamVsTeam(team1, team2);
        List<Teams> teamList1 = matchDao.getTeamName(team1);
        List<Teams> teamList2 = matchDao.getTeamName(team2);
        List<Ground> groundName = groundDao.getGround(tournament_id);

        ModelAndView model = new ModelAndView("TeamVsTeamStats");
        model.addObject("teamvsteam", teamvsteam);
        model.addObject("teamList1", teamList1);
        model.addObject("teamList2", teamList2);
        model.addObject("groundName", groundName);
        return model;
    }

    @RequestMapping(value = "/teamvsteam/advancefilter")
    @ResponseBody
    public List<Object[]> giveAdvance(@RequestParam("team1") int team1, @RequestParam("team2") int team2, @RequestParam("ground_id") String ground_id, @RequestParam("tournament_id") int tournament_id, @RequestParam("year") String year) {
        if (year.equals("All") && ground_id.equals("All")) {
            List<Object[]> teamvsteam = matchDao.getteamVsTeam(team1, team2);
            return teamvsteam;
        } else if (year.equals("All") && !ground_id.equals("All")) {
            List<Object[]> list = matchDao.getAdvanceTeamData(team1, team2, Integer.parseInt(ground_id), 0, -1, 1);
//            System.out.println(list);
//            for (Object[] l : list) {
//                System.out.println(l[0]);
//                System.out.println(l[1]);
//                System.out.println(l[2]);
//            }
//            System.out.println("in");
            return list;
        } else if (!year.equals("All") && ground_id.equals("All")) {
            List<Object[]> list1 = matchDao.getAdvanceTeamData(team1, team2, 0, Integer.parseInt(year), 1, -1);
////            System.out.println(list);
//            for (Object[] l : list1) {
//                System.out.println(l[0]);
//                System.out.println(l[1]);
//                System.out.println(l[2]);
//            }
            return list1;

        } else {
            List<Object[]> list1 = matchDao.getAdvanceTeamData(team1, team2, Integer.parseInt(ground_id), Integer.parseInt(year), -1, -1);

            return list1;
        }

//        return null;
    }
}

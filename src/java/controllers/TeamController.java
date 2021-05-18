/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

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
public class TeamController {

    @Autowired
    private TeamDao teamDao;

    @RequestMapping(value = "/team")
    public ModelAndView giveTeam(@RequestParam("tournament_id") String tournament_id) {
        List<Teams> teamList = teamDao.getTeam(Integer.parseInt(tournament_id));
        ModelAndView model = new ModelAndView("Team");
        model.addObject("teamList", teamList);
        return model;
    }
    
}

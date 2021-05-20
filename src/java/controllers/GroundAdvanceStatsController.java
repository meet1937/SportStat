/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import dao.MatchesDao;
import entities.Matches;
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
public class GroundAdvanceStatsController {

    @Autowired
    MatchesDao matchesDao;

    @RequestMapping(value = "/groundscore")
    public ModelAndView giveAdvanceGroundStats(@RequestParam("ground_id") String ground_id, @RequestParam("tournament_id") String tournament_id) {
        ModelAndView model = new ModelAndView("Ground_score");
        List<Matches> matchesList = matchesDao.getMatch(Integer.parseInt(ground_id), Integer.parseInt(tournament_id));
        model.addObject("matchesList", matchesList);
        System.out.println(matchesList);
        return model;
    }
}

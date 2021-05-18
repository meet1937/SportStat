/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import dao.TournamentDao;
import entities.Tournament;
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
public class TournamentController {
    @Autowired
    TournamentDao tournamentDao;
    @RequestMapping(value = "/tournament")
    public ModelAndView giveTournament(@RequestParam("sports_id") String sports_id) {
        ModelAndView model = new ModelAndView("Tournament");
        List<Tournament> tournamentList=tournamentDao.getTournament(Integer.parseInt(sports_id));
        model.addObject("tournamentList", tournamentList);
        System.out.println(sports_id);
        return model;
    }
}

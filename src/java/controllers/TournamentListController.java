/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import entities.Sports;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author MEET
 */
@Controller
public class TournamentListController {
    @RequestMapping(value = "/tournamentDetails")
    public ModelAndView giveTournamentContent(@RequestParam("tournament_id") String tournament_id) {
     
        ModelAndView model = new ModelAndView("TournamentList");
        model.addObject("tournament_id", tournament_id);
        return model;
    }
}

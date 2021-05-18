/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import dao.GroundDao;
import entities.Ground;
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
public class GroundController {
    @Autowired
    private GroundDao groundDao;

    @RequestMapping(value = "/ground")
    public ModelAndView giveTeam(@RequestParam("tournament_id") String tournament_id) {
        List<Ground> groundList = groundDao.getGround(Integer.parseInt(tournament_id));
        ModelAndView model = new ModelAndView("ground");
        model.addObject("groundList", groundList);
        return model;
    }
}

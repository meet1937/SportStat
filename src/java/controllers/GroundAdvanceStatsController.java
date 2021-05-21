/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import dao.GroundDao;
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
    GroundDao groundDao;

    @RequestMapping(value = "/groundscore")
    public ModelAndView giveAdvanceGroundStats(@RequestParam("ground_id") int ground_id, @RequestParam("tournament_id") int tournament_id) {
        ModelAndView model = new ModelAndView("Ground_score");
        List<Object[]> GroundDataList= groundDao.getGroundData(ground_id, tournament_id);
        model.addObject("GroundDataList", GroundDataList);
        System.out.println(GroundDataList);
        return model;
    }
}

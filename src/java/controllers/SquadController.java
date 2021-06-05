/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import dao.PlayerDao;
import dao.SquadDao;
import entities.Player;
import entities.Squad;
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
public class SquadController {
    @Autowired
    private SquadDao squadDao;
    @Autowired
    private PlayerDao playerDao;

    @RequestMapping(value = "/squad")
    public ModelAndView giveSquadPlayers(@RequestParam("team_id") int team_id,@RequestParam("tournament_id") int tournament_id) {
        List<Squad> squadList = squadDao.getSquadPlayer(team_id);
        List<Player> playerList=playerDao.getPlayerDetail(squadList.get(0).getPlayer_id(), tournament_id);
        ModelAndView model = new ModelAndView("Squad");
        model.addObject("squadList", squadList);
        model.addObject("playerList", playerList);
        return model;
    }
}

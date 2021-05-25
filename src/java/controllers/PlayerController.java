/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import dao.PlayerDao;
import daoimplementation.PlayerDaoImpl;
import entities.Player;
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
//        System.out.println(playerList);
        System.out.println(playerList.size());
//        String detail = null;
        return playerList;
    }
    @RequestMapping(value = "/playerDetail")
    public ModelAndView givePlayerInfo(@RequestParam("player_id") int player_id,@RequestParam("tournament_id") int tournament_id) {

        ModelAndView model = new ModelAndView("PlayerInfo");
        List<Player> playerList = playerDao.getPlayerDetail(player_id, tournament_id);
        model.addObject("playerList", playerList);
        return model;
    }


}

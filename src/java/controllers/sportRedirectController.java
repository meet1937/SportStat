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
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author MEET
 */
@Controller
public class sportRedirectController {

    @RequestMapping(value = "/home")
    public ModelAndView giveHomePage() {
        ModelAndView model = new ModelAndView("sports");
        return model;
    }

}

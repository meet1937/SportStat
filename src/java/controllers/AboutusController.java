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
 * @author LENOVO
 */
@Controller
public class AboutusController {

    @RequestMapping(value = "/aboutus")
    public ModelAndView giveInitialPage() {
        ModelAndView model = new ModelAndView("Aboutus");
        return model;
    }
}

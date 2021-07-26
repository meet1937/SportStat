package controllers;

import java.io.IOException;
import java.io.InputStream;

import java.net.*;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ScheduleController {

    @RequestMapping(value = "/schedule", method = RequestMethod.GET)
    public ModelAndView giveInitialPage() {
        ModelAndView model = new ModelAndView("schedule");
        
        return model;
    }
}

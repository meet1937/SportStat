package controllers;

import dao.SportDao;
import entities.Sports;
import entities.Teams;
import entities.Tournament;
import helper.FactoryProvider;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SportController {

    @Autowired
    private SportDao sportDao;

    @RequestMapping(value = "/")
    public ModelAndView giveInitialPage() {
        List<Sports> sportList = sportDao.getAllSports();
        ModelAndView model = new ModelAndView("sports");
        model.addObject("sportList", sportList);
        System.out.println(sportList);
        return model;
    }

}

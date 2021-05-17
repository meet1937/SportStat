package controllers;

import dao.SportDao;
import entities.Sports;
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

    @RequestMapping(value = "/tournament")
    public ModelAndView giveTournament(@RequestParam("sports_id") String sports_id) {
        String hql = "from Tournament WHERE sport_id=:id";
//String hql = "from tournament";
        SessionFactory sessionFactory = FactoryProvider.getFactory();
        Session session = sessionFactory.openSession();
        Query query = session.createQuery(hql);
        query.setParameter("id", Integer.parseInt(sports_id));
        List<Tournament> tournamentList = query.list();
//List<Tournament> tournamentList ; 
//        tournamentList =(List<Tournament>)FactoryProvider.getFactory().openSession().createCriteria(Tournament.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
//        
        ModelAndView model = new ModelAndView("Tournament");
        model.addObject("tournamentList", tournamentList);
        System.out.println(sports_id);
        return model;
    }

}

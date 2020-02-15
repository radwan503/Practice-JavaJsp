package com.practice.companyprofile.controller;

import com.practice.companyprofile.dao.TeamDAO;
import com.practice.companyprofile.model.TeamDomain;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by RadwanAnik on 2/14/2020.
 */
@Controller
public class TeamController {

    @Autowired
    private TeamDAO teamDAO;

    @RequestMapping(value = "/addTeamContent",method = RequestMethod.POST)
    public ModelAndView addContent(TeamDomain teamDomain, BindingResult result){

        ModelAndView mv = new ModelAndView("dashboard/data-input-page");

        if(result.hasErrors()){
            return mv;

        }else {
            mv.addObject("message","Save successfully");
            teamDAO.addTeamContent(teamDomain);

        }
        return mv;
    }

}

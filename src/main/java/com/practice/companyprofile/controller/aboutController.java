package com.practice.companyprofile.controller;

import com.practice.companyprofile.dao.AboutDAO;
import com.practice.companyprofile.model.AboutDomain;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by RadwanAnik on 2/7/2020.
 */

@Controller
public class aboutController {

    @Autowired
   private AboutDAO aboutDAO;

    @RequestMapping(value = "/addAboutContent",method = RequestMethod.POST)

    public ModelAndView addContent(AboutDomain aboutDomain, BindingResult result){

        ModelAndView mv = new ModelAndView("dashboard/data-input-page");

        if(result.hasErrors()){
            return mv;

        }else {
            mv.addObject("message","Save successfully");
            aboutDAO.addAboutContent(aboutDomain);

        }
        return mv;
    }
}

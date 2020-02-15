package com.practice.companyprofile.controller;

import com.practice.companyprofile.dao.ContactDAO;
import com.practice.companyprofile.model.AboutDomain;
import com.practice.companyprofile.model.ContactDomain;
import com.practice.companyprofile.model.CounterDomain;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by RadwanAnik on 2/15/2020.
 */
@Controller
public class ContactController {

    @Autowired
    ContactDAO contactDAO;

    @RequestMapping(value = "/addContactContent",method = RequestMethod.POST)
    public ModelAndView addContent(ContactDomain contactDomain, BindingResult result){
        ModelAndView mv = new ModelAndView("dashboard/data-input-page");

        if(result.hasErrors()){
            return mv;

        }else {
            mv.addObject("message","Save successfully");
            contactDAO.addContactContent(contactDomain);

        }
        return mv;
    }
}

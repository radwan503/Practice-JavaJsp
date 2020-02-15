package com.practice.companyprofile.controller;

import com.practice.companyprofile.dao.ServiceDAO;
import com.practice.companyprofile.model.ServiceDomain;
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
public class ServiceController {
    @Autowired
    private ServiceDAO serviceDAO;


    @RequestMapping(value = "/addServiceContent",method = RequestMethod.POST)
    public ModelAndView addContent(ServiceDomain serviceDomain, BindingResult result){

        ModelAndView mv = new ModelAndView("dashboard/data-input-page");

        if(result.hasErrors()){
            return mv;
        }else{
            mv.addObject("message","Save successfully");
            serviceDAO.addServiceContent(serviceDomain);

        }
      return mv;

    }




}

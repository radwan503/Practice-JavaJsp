package com.practice.companyprofile.controller;

import com.practice.companyprofile.dao.PricingDAO;
import com.practice.companyprofile.model.PricingDomain;
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
public class PricingController {

    @Autowired
    private PricingDAO pricingDAO;

    @RequestMapping(value = "/addPricingContent",method = RequestMethod.POST)
    public ModelAndView addContent(PricingDomain pricingDomain, BindingResult result){

        ModelAndView mv = new ModelAndView("dashboard/data-input-page");

        if(result.hasErrors()){
            return mv;

        }else {
            mv.addObject("message","Save successfully");
            pricingDAO.addPricingContent(pricingDomain);

        }
        return mv;
    }
}

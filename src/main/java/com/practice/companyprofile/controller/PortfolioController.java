package com.practice.companyprofile.controller;

import com.practice.companyprofile.dao.PortfolioDAO;
import com.practice.companyprofile.model.PortfolioDomain;
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
public class PortfolioController {

    @Autowired
    PortfolioDAO portfolioDAO;

    @RequestMapping(value = "/addPortfolioContent", method = RequestMethod.POST)
    public ModelAndView addPortfolio(PortfolioDomain portfolioDomain, BindingResult result){
        ModelAndView mv = new ModelAndView("dashboard/data-input-page");
        if(result.hasErrors()){
            return mv;

        }else {
            mv.addObject("message","Save successfully");
            portfolioDAO.addPortfolioContent(portfolioDomain);

        }
        return mv;

    }


}

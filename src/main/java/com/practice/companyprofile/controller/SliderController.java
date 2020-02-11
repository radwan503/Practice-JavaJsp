package com.practice.companyprofile.controller;

import com.practice.companyprofile.dao.MessageDAO;
import com.practice.companyprofile.dao.SliderDAO;
import com.practice.companyprofile.model.SliderDomain;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by RadwanAnik on 1/25/2020.
 */

@Controller
public class SliderController {

    @Autowired
    private SliderDAO sliderDAO;



    @RequestMapping(value = "/inputData")
    public ModelAndView dashBoardLoginPage(){
        ModelAndView mv = new ModelAndView("dashboard/data-input-page");
        return  mv;

    }
    @RequestMapping(value = "/addSliderContent", method = RequestMethod.POST)
    public ModelAndView addContent(SliderDomain sliderDomain, BindingResult result, ModelMap modelMap){

        ModelAndView mv = new ModelAndView("dashboard/data-input-page");
        if(result.hasErrors()){
            return mv;
        }
        else {
            mv.addObject("message","Save successfully");
            sliderDAO.addSliderContent(sliderDomain);
        }

        return mv;


    }






}

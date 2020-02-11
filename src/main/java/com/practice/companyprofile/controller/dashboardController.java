package com.practice.companyprofile.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by RadwanAnik on 1/25/2020.
 */

@Controller
public class dashboardController {

    @RequestMapping(value = "/dash-home")
     public ModelAndView dashBoardHomePage(){
        ModelAndView mv = new ModelAndView("dashboard/dashboard");
        return  mv;

     }

    @RequestMapping(value = "/login")
    public ModelAndView dashBoardLoginPage(){
        ModelAndView mv = new ModelAndView("dashboard/login");
        return  mv;

    }


    @RequestMapping(value = "/register")
    public ModelAndView dashBoardRegisterPage(){
        ModelAndView mv = new ModelAndView("dashboard/register");
        return  mv;

    }
}

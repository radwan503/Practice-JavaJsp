package com.practice.companyprofile.controller;

import com.practice.companyprofile.dao.TestimonialDAO;
import com.practice.companyprofile.model.TestimonialDomain;
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
public class TestimonialController {

    @Autowired
    TestimonialDAO testimonialDAO;

    @RequestMapping(value = "/addTestimonialContent",method = RequestMethod.POST)
    public ModelAndView addTestimonial(TestimonialDomain testimonialDomain, BindingResult result){
        ModelAndView mv = new ModelAndView("dashboard/data-input-page");

        if(result.hasErrors()){
            return mv;

        }else {
            mv.addObject("message","Save successfully");
            testimonialDAO.addTestimonialContent(testimonialDomain);

        }
        return mv;

    }


}

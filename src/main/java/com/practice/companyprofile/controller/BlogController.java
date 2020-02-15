package com.practice.companyprofile.controller;

import com.practice.companyprofile.dao.BlogDAO;
import com.practice.companyprofile.model.AboutDomain;
import com.practice.companyprofile.model.BlogDomain;
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
public class BlogController {

    @Autowired
    private BlogDAO blogDAO;


    @RequestMapping(value = "/addBlogContent",method = RequestMethod.POST)
    public ModelAndView addContent(BlogDomain blogDomain, BindingResult result){
        ModelAndView mv = new ModelAndView("dashboard/data-input-page");

        if(result.hasErrors()){
            return mv;

        }else {
            mv.addObject("message","Save successfully");
            blogDAO.addBlogContent(blogDomain);

        }
        return mv;
    }
}

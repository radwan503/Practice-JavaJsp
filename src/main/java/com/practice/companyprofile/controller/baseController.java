package com.practice.companyprofile.controller;

import com.practice.companyprofile.dao.MessageDAO;
import com.practice.companyprofile.dao.SliderDAO;
import com.practice.companyprofile.model.MessageUser;
import com.practice.companyprofile.model.SliderDomain;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by RadwanAnik on 1/6/2020.
 */
@Controller
@RequestMapping(value = "/")
public class baseController {

    @Autowired
    private MessageDAO messageDAO;

    @Autowired
    private SliderDAO sliderDAO;

    @RequestMapping(value = "/home",method = RequestMethod.GET)
    public ModelAndView homePage(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mv = new ModelAndView("index");
        List<SliderDomain> sliderContent = sliderDAO.getSlider();
        mv.addObject("sliderContent",sliderContent);
        return mv;

    }

    @RequestMapping(value = "/userlist",method = RequestMethod.GET)
    public ModelAndView userList(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mv = new ModelAndView("userInfo");
        List<MessageUser> listAllUser = messageDAO.getAllUser();
        mv.addObject("listAllUser",listAllUser);

        return mv;

    }

    @RequestMapping(value = "/save" ,method = RequestMethod.POST)
    public ModelAndView saveRegistration(MessageUser messageUser, BindingResult result, ModelMap model, RedirectAttributes redirectAttributes){
        ModelAndView mv = new ModelAndView("index");
        if(result.hasErrors()){
            return mv;
        }
        else {
            mv.addObject("message","Save successfully");
            messageDAO.save(messageUser);
        }
        return mv;
    }

    @RequestMapping(value = "/editUser/{id}")
    public ModelAndView editUser(@PathVariable("id") int id,ModelMap model){
        ModelAndView mv = new ModelAndView("editpage");
        MessageUser messageUser = messageDAO.getUserById(id);
        model.addAttribute("messageUser",messageUser);
        return mv;

    }

    @RequestMapping(value = "/editSave", method = RequestMethod.POST)
    public ModelAndView editSave(@ModelAttribute("messageUser") MessageUser messageUser){
        ModelAndView mv = new ModelAndView("userInfo");
        messageDAO.update(messageUser);
        List<MessageUser> listAllUser = messageDAO.getAllUser();
        mv.addObject("listAllUser",listAllUser);
        return mv;


    }

    @RequestMapping(value = "/delete/{id}",method = RequestMethod.GET)
    public ModelAndView deleteUserById(@PathVariable("id") int id){
        ModelAndView mv = new ModelAndView("userInfo");
        messageDAO.delete(id);
        List<MessageUser> listAllUser = messageDAO.getAllUser();
        mv.addObject("listAllUser",listAllUser);
        return mv;

    }





}

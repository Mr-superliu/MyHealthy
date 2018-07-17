package com.object.myhealthy.controller;

import com.object.myhealthy.entity.User;
import com.object.myhealthy.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

/**
 * @author :hly
 * @date :2018/6/21
 */
@Controller
@RequestMapping("/")
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping("/")
    public ModelAndView index(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("admin/login");
        return mv;
    }

    @RequestMapping(value = "/loginVerify")
    public ModelAndView successLogin(@ModelAttribute("username") String userId, @RequestParam("password") String userPws, HttpSession httpSession){
        ModelAndView mv = new ModelAndView();
        User user = userService.findUser(userId);
        if(user==null){
            httpSession.setAttribute("error", "noid");
            mv.setViewName("admin/login");
            return mv;
        }
       else if(!userId.equals("")&&userId.equals(user.getUsername())&&userPws.equals(user.getPassword())){
            httpSession.setAttribute("userId",userId);
            httpSession.setAttribute("error","true");
            mv.setViewName("index");
            return mv;
        }

            httpSession.setAttribute("error", "error");
            mv.setViewName("admin/login");
            return mv;

    }
    //测试git
}

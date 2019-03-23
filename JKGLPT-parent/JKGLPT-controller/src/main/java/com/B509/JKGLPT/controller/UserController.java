package com.B509.JKGLPT.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.B509.JKGLPT.constant.SessionContants;
import com.B509.JKGLPT.pojo.User;
import com.B509.JKGLPT.service.UserService;

@Controller
@RequestMapping("user")
public class UserController {

    @Autowired
    private UserService userService;

    /**
     * 店家用户登录
     * 
     * @param user
     * @param session
     * @param model
     * @return
     */
    @RequestMapping(value = "login", method = RequestMethod.POST)
    public String login(User user, HttpSession session, Model model) {
        User result = userService.queryOne(user);
        if (null != result) {
            session.setAttribute(SessionContants.SESSION_USER, result);
            return "redirect:/fontPageDisplay";
        }
        model.addAttribute("error", "用户名或密码错误！");
        return "login";
    }

    /**
     * 用户注册
     * 
     * @param user
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "register", method = RequestMethod.POST)
    public String register(User user) throws Exception {
        userService.save(user);
        return "login";
    }

    /**
     * 用户信息修改
     * 
     * @param user
     * @return
     */
    @RequestMapping(value = "update", method = RequestMethod.PUT)
    public String update(User user, HttpSession session) {
        userService.update(user);
        session.setAttribute(SessionContants.SESSION_USER, user);
        return "login";
    }

}

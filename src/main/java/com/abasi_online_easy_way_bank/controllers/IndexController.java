package com.abasi_online_easy_way_bank.controllers;

import com.abasi_online_easy_way_bank.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {
@Autowired
private UserRepository userRepository;
    @GetMapping("/")
    public ModelAndView getIndex() {
        ModelAndView getIndexPage = new ModelAndView("index");
        getIndexPage.addObject("PageTitle", "Home");
        System.out.println("In Index Page Controller");
        return getIndexPage;
    }

    @GetMapping("/index")
    public ModelAndView getHome() {
        ModelAndView getIndexPage = new ModelAndView("index");
        getIndexPage.addObject("PageTitle", "Home");
        System.out.println("In Index Page Controller");
        return getIndexPage;
    }

    @GetMapping("/login")
    public ModelAndView getLogin() {
        ModelAndView getLoginPage = new ModelAndView("login");
        System.out.println("In login Controller");
        getLoginPage.addObject("PageTitle","Login");
         return getLoginPage;
    }


    @GetMapping("/dashboard")
    public ModelAndView getDashBoard() {
        ModelAndView getDashboardPage = new ModelAndView("dashboard");
        System.out.println("In dashboard Page Controller");
        getDashboardPage.addObject("PageTitle","Dashboard");
        return getDashboardPage;
    }

    @GetMapping("/error")
    public ModelAndView getError() {
        ModelAndView getErrorPage = new ModelAndView("error");
        System.out.println("In Error Page Controller");
        getErrorPage.addObject("PageTitle","Error");
        return getErrorPage;
    }

    @GetMapping("/verify")
    public ModelAndView getVerify(@RequestParam("token")String token,@RequestParam("code")String code) {
//        Set View
        ModelAndView getVerifyPage = new ModelAndView("login");
        userRepository.verifyAccount(token,code);
        getVerifyPage.addObject("SUCCESS","Account Verified Successfully. Kindly Login");
        System.out.println("In Verify Account Page Controller");
        getVerifyPage.addObject("PageTitle","login");
        return getVerifyPage;
    }
}
package com.abasi_online_easy_way_bank.controllers;

import com.abasi_online_easy_way_bank.helpers.Token;
import com.abasi_online_easy_way_bank.models.User;
import com.abasi_online_easy_way_bank.repository.UserRepository;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;




@Controller
public class AuthController {
    @Autowired
    private UserRepository userRepository;
    @GetMapping("/login")
    public ModelAndView getLogin() {
        System.out.println("In login Controller");
        ModelAndView getLoginPage = new ModelAndView("login");
        String token = Token.generateToken();

//        Send Token To View;
        getLoginPage.addObject("token",token);
        getLoginPage.addObject("PageTitle","Login");
        return getLoginPage;
    }

    @PostMapping("/login")
    public String login(@RequestParam("email")String email, @RequestParam("password")String password, @RequestParam(
            "_token")String token, Model model, HttpSession session) {
//        ToDo: Validate Input Field / Form Data
                if (email.isEmpty() || email == null || password == null) {
                    model.addAttribute("error","Username or Password cannot be Empty");
                    return "login";
                }
//        ToDo: Check If Email Exist
                String getEmailFromDatabase = userRepository.getUserEmail(email);
                if(getEmailFromDatabase!=null) {
                    // Get Password IN Database
                    String getPasswordInDatabase = userRepository.getUserPassword(email);
                    // Validate Password
                    if (!BCrypt.checkpw(password,getPasswordInDatabase)){
                        model.addAttribute("error","Incorrect Username Or Password");
                        return "login";
                    }else{

//                        ToDo: Check If User Account IS Verified
                            int verified = userRepository.isVerified(getEmailFromDatabase);
//                            Check If Account is Verified
                        if(verified != 1) {
                            String msg = "This Account is not yet Verified, Kindly Check email and Verify Account";
                            model.addAttribute("error",msg);
                            return "login";
                        }
//                        End of Check if Account is Verified
//                        ToDo: Proceed to Login User
                        User user = userRepository.getUserDetails(getEmailFromDatabase);
//                        Set Session Attributes
                        session.setAttribute("user",user);
                        session.setAttribute("token",token);
                        session.setAttribute("authenticated",true);
                        model.addAttribute("SUCCESS","Login Successful");
                        return "redirect:/app/dashboard";
                    }
                }else {
                    model.addAttribute("error","Email Doesn't Exist");
                    return "login";
                }
    }
    @GetMapping("/logout")
    public String logout(HttpSession session, RedirectAttributes redirectAttributes) {
       session.invalidate();
       redirectAttributes.addFlashAttribute("logged_out", "Logged Out Successful");
       return "redirect:/login";
    }
}

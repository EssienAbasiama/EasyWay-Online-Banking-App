package com.abasi_online_easy_way_bank.controller_advisor;

import com.abasi_online_easy_way_bank.models.User;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

@ControllerAdvice
public class AdvisorController {
    @ModelAttribute("registerUser")
    public User getUserDefaults() {
        return new User();
    }
}

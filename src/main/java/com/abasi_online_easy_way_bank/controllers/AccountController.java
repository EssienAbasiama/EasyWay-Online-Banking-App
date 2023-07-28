package com.abasi_online_easy_way_bank.controllers;

import com.abasi_online_easy_way_bank.helpers.GenAccountNumber;
import com.abasi_online_easy_way_bank.models.User;
import com.abasi_online_easy_way_bank.repository.AccountRepository;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
@RequestMapping("/account")
public class AccountController {
    @Autowired
    private AccountRepository accountRepository;
    @PostMapping("/create_account")
    public String createAccount(@RequestParam("account_name")String accountName,
                                @RequestParam("account_type")String accountType,
                                RedirectAttributes redirectAttributes,
                                HttpSession session
    ){
//        ToDo: Check For Empty Strings:
        if (accountName.isEmpty() || accountType.isEmpty()){
           redirectAttributes.addFlashAttribute("error","Account Name cannot be Empty");
           return "redirect:/app/dashboard";
        }
//        ToDo: Get Logged In User
        User user = (User)session.getAttribute("user");
//        ToDo: Get / Generate Account Number:
        int setAccountNumber = GenAccountNumber.generateAccountNumber();
        String bankAccountNumber = Integer.toString(setAccountNumber);
//        ToDo: Create Account Number
        accountRepository.createBankAccount(user.getUser_id(),bankAccountNumber,accountName,accountType);
        redirectAttributes.addFlashAttribute("SUCCESS","Account Created Successfully");
        return "redirect:/app/dashboard";
    }
}

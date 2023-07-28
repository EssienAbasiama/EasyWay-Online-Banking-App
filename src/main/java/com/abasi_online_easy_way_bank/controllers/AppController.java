package com.abasi_online_easy_way_bank.controllers;

import com.abasi_online_easy_way_bank.models.Account;
import com.abasi_online_easy_way_bank.models.PaymentHistory;
import com.abasi_online_easy_way_bank.models.TransactionHistory;
import com.abasi_online_easy_way_bank.models.User;
import com.abasi_online_easy_way_bank.repository.AccountRepository;
import com.abasi_online_easy_way_bank.repository.PaymentHistoryRepository;
import com.abasi_online_easy_way_bank.repository.TransactHistoryRepository;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.math.BigDecimal;
import java.util.List;

@Controller
@RequestMapping("/app")
public class AppController {
    @Autowired
    AccountRepository accountRepository;

    @Autowired
    PaymentHistoryRepository paymentHistoryRepository;

    @Autowired
    TransactHistoryRepository transactHistoryRepository;

    User user;
    @GetMapping("/dashboard")
    public ModelAndView getDashBoard(HttpSession session) {
        ModelAndView getDashBoardPage = new ModelAndView("dashboard");
//        Get LoggedIn User Details
        User user = (User)session.getAttribute("user");
//        Get Account of LoggedIn User
        List<Account> getUserAccounts = accountRepository.getUserAccountById(user.getUser_id());

//        Get Balance
        BigDecimal totalAccountBalance = accountRepository.getTotalBalance(user.getUser_id());

//        Set Objects
        getDashBoardPage.addObject("userAccounts", getUserAccounts);
        getDashBoardPage.addObject("totalBalance", totalAccountBalance);

        return getDashBoardPage;

    }

    @GetMapping("/payment_history")
    public ModelAndView getPaymentHistory(HttpSession session){
        // Set View:
        ModelAndView getPaymentHistoryPage = new ModelAndView("paymentHistory");

        // Get Logged In User:\
        user = (User) session.getAttribute("user");

        // Get Payment History / Records:
        List<PaymentHistory> userPaymentHistory = paymentHistoryRepository.getPaymentRecordsById(user.getUser_id());

        getPaymentHistoryPage.addObject("payment_history", userPaymentHistory);

        return getPaymentHistoryPage;
    }


    @GetMapping("/transact_history")
    public ModelAndView getTransactHistory(HttpSession session){
        // Set View:
        ModelAndView getTransactHistoryPage = new ModelAndView("transactHistory");

        // Get Logged In User:\
        user = (User) session.getAttribute("user");

        // Get Payment History / Records:
        List<TransactionHistory> userTransactHistory = transactHistoryRepository.getTransactionRecordsById(user.getUser_id());

        getTransactHistoryPage.addObject("transact_history", userTransactHistory);

        return getTransactHistoryPage;

    }


}

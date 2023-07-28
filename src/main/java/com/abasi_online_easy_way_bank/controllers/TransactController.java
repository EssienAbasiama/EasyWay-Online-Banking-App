package com.abasi_online_easy_way_bank.controllers;

import com.abasi_online_easy_way_bank.models.User;
import com.abasi_online_easy_way_bank.repository.AccountRepository;
import com.abasi_online_easy_way_bank.repository.PaymentRepository;
import com.abasi_online_easy_way_bank.repository.TransactRepository;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.time.LocalDateTime;

@Controller
@RequestMapping("/transact")
public class TransactController {

    @Autowired
    private AccountRepository accountRepository;
    @Autowired
    private PaymentRepository paymentRepository;
    @Autowired
    private TransactRepository transactRepository;

    LocalDateTime currentDateTime = LocalDateTime.now();
    @PostMapping("/deposit")
    public  String deposit(@RequestParam("deposit_amount")String deposit_amount,
                           @RequestParam("account_id")String accountID,
                           HttpSession session,
                           RedirectAttributes redirectAttributes) {
//        ToDo: Check For Empty Strings:
            if(deposit_amount.isEmpty()) {
                redirectAttributes.addFlashAttribute("error", "Deposit Amount or Account Depositing to Cannot be " +
                        "Empty");
                return "redirect:/app/dashboard";
            }
//        ToDo: Get Logged In User
        User user = (User)session.getAttribute("user");

//        ToDo: Get Current Account Balance
        int acc_id = Integer.parseInt(accountID);

        double depositAmountValue = Double.parseDouble(deposit_amount);
        double currentBalance = accountRepository.getAccountBalance(user.getUser_id(), acc_id);
        if (depositAmountValue == 0) {
            redirectAttributes.addFlashAttribute("error","Deposit Amount cannot be of 0(Zero) value");
            return "redirect:/app/dashboard";
        }

//        ToDo: Update Balance
        double newBalance = currentBalance + depositAmountValue;
//        Update Account
        accountRepository.changeAccountBalanceById(newBalance,acc_id);
        currentDateTime = LocalDateTime.now();
//        Log Successful Transactions
        transactRepository.logTransaction(acc_id,"deposit",depositAmountValue,"online","SUCCESS","DEPOSIT TRANSACTION ",
                currentDateTime);
        redirectAttributes.addFlashAttribute("SUCCESS", "Amount Deposited Successfully");
        return "redirect:/app/dashboard";
    }

    @PostMapping("/transfer")
    public String transfer(@RequestParam("transfer_from")String transfer_from,
                           @RequestParam("transfer_to")String transfer_to,
                           @RequestParam("transfer_amount")String amount,
                           HttpSession session,
                           RedirectAttributes redirectAttributes) {
//        ToDo: Get amount
        double transfered_amount = Double.parseDouble(amount);
//        ToDo: Get transferFrom Account Id
        int transferFrom_Id = Integer.parseInt(transfer_from);
        //        ToDo: Get transferFrom Account Id
        int transferTo_Id = Integer.parseInt(transfer_to);
        //        ToDo: Get transferTo Account Id
//        ToDo: Get User
        User user = (User) session.getAttribute("user");
//        ToDo: Get User Transfer Form Account
        double balance = accountRepository.getAccountBalance(user.getUser_id(),transferFrom_Id);
//        ToDo: Check if Amount is Zero (0)
        if(transfered_amount == 0) {
            redirectAttributes.addFlashAttribute("error","Transfer Amount cannot be Zero(0)");
            return "redirect:/app/dashboard";
        }
        if(transferTo_Id == transferFrom_Id) {
            redirectAttributes.addFlashAttribute("error","Can't transfer to Same account");
            return "redirect:/app/dashboard";
        }
        if(balance <= transfered_amount){
            redirectAttributes.addFlashAttribute("error","Insufficient Balance");
            transactRepository.logTransaction(transferFrom_Id,"transfer",transfered_amount,"Online","failed",
                    "Insufficient Funds",currentDateTime);
            return "redirect:/app/dashboard";
        }
//        ToDo: Update TransferredTo Account Balance
        double transferedTocurrentBalance = accountRepository.getAccountBalance(user.getUser_id(), transferTo_Id);
        double transferedTonewBalance = transferedTocurrentBalance + transfered_amount;

//        TodO: Update TransferredFrom Account Balance
        double transferedFromcurrentBalance = accountRepository.getAccountBalance(user.getUser_id(), transferFrom_Id);
        double transferedFromnewBalance = transferedFromcurrentBalance - transfered_amount;

//        ToDO: Make Transfer
        accountRepository.changeAccountBalanceById(transferedTonewBalance,transferTo_Id);
        accountRepository.changeAccountBalanceById(transferedFromnewBalance,transferFrom_Id);
        redirectAttributes.addFlashAttribute("SUCCESS", "Transfer Successful");
// Log Successful Transaction:
        transactRepository.logTransaction(transferFrom_Id, "Transfer", transfered_amount, "online", "success", "Transfer Transaction" +
                " " +
                "Successful",currentDateTime);
    return "redirect:/app/dashboard";
    }

    @PostMapping("/withdraw")
    public String withdraw(@RequestParam("withdrawal_amount")String withdrawal_amount,
                           @RequestParam("account_id")String withdrawal_account_id,
                           HttpSession session,
                           RedirectAttributes redirectAttributes){
//        ToDo: Convert Variables

        if (withdrawal_amount == null) {
            redirectAttributes.addFlashAttribute("error","Select Account to Withdraw From");
            return "redirect:/app/dashboard";
        }
        if (withdrawal_account_id == null) {
            redirectAttributes.addFlashAttribute("error","Select withdrawal account");
            return "redirect:/app/dashboard";
        }
//        ToDo: Check if Amount is Zero (0)
        double amount = Double.parseDouble(withdrawal_amount);
        int withdraw_acc_id = Integer.parseInt(withdrawal_account_id);
        //        ToDo: Get User
        User user = (User) session.getAttribute("user");
        if (amount == 0) {
            redirectAttributes.addFlashAttribute("error", "amount cannot be Zero (0)");
            return "redirect:/app/dashboard";
        }
//ToDo: Get Balance
        double currentBalance = accountRepository.getAccountBalance(user.getUser_id(),withdraw_acc_id);
//        ToDo: Check if Withdraw amount equals Current Account Balance
        if (amount >= currentBalance) {
            // Log Failed Transaction:
            transactRepository.logTransaction(withdraw_acc_id, "Withdrawal", Double.parseDouble(withdrawal_amount), "online", "failed", "Insufficient" +
                    " Funds", currentDateTime);
            redirectAttributes.addFlashAttribute("error","Insufficient Balance");
            return "redirect:/app/dashboard";
        }
//        ToDo: Make Withdrawal
        double newBalance = currentBalance - amount;
        accountRepository.changeAccountBalanceById(newBalance,withdraw_acc_id);
        transactRepository.logTransaction(withdraw_acc_id, "Withdrawal", Double.parseDouble(withdrawal_amount),
                "online", "Success", "Withdrawal Transaction Successful" +
                " Funds", currentDateTime);
        redirectAttributes.addFlashAttribute("SUCCESS", "Withdrawal Successful");
        return "redirect:/app/dashboard";
    }

    @PostMapping("/payment")
    public String payment(@RequestParam("beneficiary")String beneficiary,
                          @RequestParam("account_number")String account_number,
                          @RequestParam("account_id")String account_id,
                          @RequestParam("reference")String reference,
                          @RequestParam("payment_amount")String payment_amount,
                          HttpSession session,
                          RedirectAttributes redirectAttributes) {
        String errorMessage;
        String successMessage;
//        ToDo: Check For Empty Values:
        if (beneficiary.isEmpty() || account_number.isEmpty() || account_id.isEmpty() || payment_amount.isEmpty()) {
            errorMessage = "Beneficiary, Account Number, Account Paying From and Payment and Payment Amount Cannot " +
                    "be Empty";
            redirectAttributes.addFlashAttribute("error",errorMessage);
            return "redirect:/app/dashboard";
        }
//      ToDo: Convert Variables:
        int accountID = Integer.parseInt(account_id);
        double paymentAmount = Double.parseDouble(payment_amount);

//        TOdO: Check For 0 (Zero) Values
        if (paymentAmount == 0) {
            errorMessage = "Amount Cannot be 0 (Zero)";
            redirectAttributes.addFlashAttribute("error",errorMessage);
            return "redirect:/app/dashboard";
        }
        //        ToDo: Get Logged In User
                User user = (User)session.getAttribute("user");

        //        ToDo: Get Current Balance
               double currentBalance = accountRepository.getAccountBalance(user.getUser_id(),accountID);

        //ToDo: Check If Payment Amount is More than Current Balance
                if(currentBalance < paymentAmount) {
                    errorMessage = "Insufficient Balance";
                    transactRepository.logTransaction(accountID, "Payment", paymentAmount, "online", "failed", "Insufficient Funds", currentDateTime);
                    redirectAttributes.addFlashAttribute("error",errorMessage);
                    return "redirect:/app/dashboard";
                }
        String reasonCode = "Payment Processed Successfully";
//        ToDo: Set New Balance for Account Paying From:
       double newBalance = currentBalance - paymentAmount;
//       ToDo: Make Payment
        LocalDateTime currentDateTime = LocalDateTime.now();
        paymentRepository.makePayment(accountID,beneficiary,account_number,paymentAmount,reference,"SUCCESS",
                reasonCode, currentDateTime
            );
//        ToDo: Update Account From
        accountRepository.changeAccountBalanceById(newBalance, accountID);
        successMessage = reasonCode;
        redirectAttributes.addFlashAttribute("SUCCESS",successMessage);
        transactRepository.logTransaction(accountID, "Payment", paymentAmount, "online", "Success", "Payment " +
                "Transaction Successful",currentDateTime);
        return "redirect:/app/dashboard";
    }
}

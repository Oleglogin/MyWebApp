package ua.lv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import ua.lv.entity.Account;
import ua.lv.entity.User;
import ua.lv.service.AccountService;
import ua.lv.service.UserService;

import javax.validation.Valid;
import java.security.Principal;

@Controller
public class AccountController {
    @Autowired
    AccountService accountService;
    @Autowired
    UserService userService;

    @GetMapping("/account")
    public String toWelcome(Model model,
                            Principal principal){
        String principalName = principal.getName();
        User byUsername = userService.findByName(principalName);
        model.addAttribute("currentUser", byUsername);
        model.addAttribute("emptyAccount",new Account());
        model.addAttribute("usersList",userService.findAll());
        model.addAttribute("accountList", accountService.listAccount());
        return "account";
    }



    @RequestMapping(value = "saveAccount", method = RequestMethod.POST)
    public String addAccountSpringForm(@ModelAttribute("emptyAccount") @Valid Account account,
                                       Model model,
                                       Principal principal) {
        String principalName = principal.getName();
        User byUsername = userService.findByName(principalName);
        model.addAttribute("currentUser", byUsername);
        account.setUser(byUsername);
        accountService.addAccount(account);
        return "redirect:/account";
    }


//    @RequestMapping(value = "/editAccount/{id}")
//    public String editAccount(@PathVariable("id") int id, Model model){
//        model.addAttribute("emptyAccount", accountService.getAccountById(id));
//        model.addAttribute("accountList", accountService.listAccount());
//        return "account";
//    }
}

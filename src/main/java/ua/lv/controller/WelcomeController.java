package ua.lv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import ua.lv.entity.Account;
import ua.lv.entity.User;
import ua.lv.service.AccountService;
import ua.lv.service.UserService;

import java.security.Principal;

@Controller
public class WelcomeController {
    @Autowired
    UserService userService;
    @Autowired
    AccountService accountService;

    @GetMapping("welcome")
    public String toWelcome(Model model,
                            Principal principal){
        String principalName = principal.getName();
        User byUsername = userService.findByName(principalName);
        model.addAttribute("currentUser",byUsername);
        model.addAttribute("emptyAccount",new Account());
        model.addAttribute("accountlist",accountService.listAccount());
        return "welcome";
    }


}

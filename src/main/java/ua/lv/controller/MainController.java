package ua.lv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import ua.lv.entity.User;
import ua.lv.entity.Work;
import ua.lv.service.UserService;

import java.security.Principal;

@Controller
public class MainController {
    @Autowired
    UserService userService;
//    @GetMapping("/")
//    public String toMainPage(Model model){
//        return "index";
//    }

    @GetMapping("/index")
    public String toIndex(){
        return "index";
    }

    @GetMapping("/")
    public String toWorkPage(Model model,Principal principal){
//        String principalName = principal.getName();
//        User byUsername = userService.findByName(principalName);
//        model.addAttribute("currentUser", byUsername);
//        model.addAttribute("emptyUser", new User());
        return "index";
    }
}

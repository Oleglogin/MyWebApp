package ua.lv.controller;

import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Account {
    @RequestMapping(value = "/account")
    public String toaccount(){
        return "account";
    }
}

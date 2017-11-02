package ua.lv.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Created by User on 01.11.2017.
 */
@Controller
public class MainController {
    @GetMapping("/")
    public String toMainPage(){
        return "index";
    }

    @GetMapping("/index")
    public String toIndex(){
        return "index";
    }
}

package ua.lv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ua.lv.entity.User;
import ua.lv.service.UserService;

import javax.validation.Valid;

@Controller
@Service
public class RegistrationController {



    @Autowired
    UserService userService;




    @GetMapping("/registration")
    public String toRegistration(Model model){
        model.addAttribute("emptyUser",new User());
        return "registration";
    }



    @RequestMapping(value = "/saveUserSpringForm", method = RequestMethod.POST)
    public String addUserSpringForm(@ModelAttribute("emptyUser") @Valid User user,
                                    BindingResult bindingResult) {

        userService.save(user);
        return "redirect:/login";
    }


}

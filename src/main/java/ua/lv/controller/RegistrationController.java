package ua.lv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.method.P;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
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
    @RequestMapping(value = "/userRemove/{id}")
    public String deleteUser(@PathVariable("id") int id){
        userService.delete(id);
        return "redirect:/account";
    }


}

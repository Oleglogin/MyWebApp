package ua.lv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import ua.lv.entity.Experience;
import ua.lv.entity.User;
import ua.lv.service.AccountService;
import ua.lv.service.ExperienceService;

import java.security.Principal;

@Controller
public class ExperienceController {
    @Autowired
    ExperienceService experienceService;
    @Autowired
    AccountService accountService;

    @GetMapping("/experience")
    public String experience(Model model, Principal principal){
        model.addAttribute("emptyExperience", new Experience());
        model.addAttribute("experienceList", experienceService.ExperienceList());

       return "/experience";
    }

    @RequestMapping(method = RequestMethod.POST,value ="/addExperience")
    public String addExperience(@ModelAttribute("emptyExperience")Experience experience){
        experienceService.addExperience(experience);
        return "redirect:/experience";
    }

    @RequestMapping(value = "/experienceEdit/{id}")
    public String editExperience(@PathVariable("id") int id, Model model){
        model.addAttribute("experienceList", experienceService.ExperienceList());
        model.addAttribute("emptyExperience", experienceService.getExperienceById(id));
        return "experience";
    }
    @RequestMapping (value = "/experienceDelete/{id}")
    public String deleteExperience(@PathVariable("id") int id){
        experienceService.removeExperience(id);
        return "redirect:/experience";
    }
}

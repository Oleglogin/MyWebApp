package ua.lv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import ua.lv.entity.User;
import ua.lv.entity.Work;
import ua.lv.service.UserService;
import ua.lv.service.WorkService;

import java.security.Principal;

@Controller
public class WorkController {
    @Autowired
    WorkService workService;
    @Autowired
    UserService userService;

    @GetMapping("/work")
    public String toWorkPage(Model model,Principal principal){
        String principalName = principal.getName();
        User byUsername = userService.findByName(principalName);
        model.addAttribute("currentUser", byUsername);
        model.addAttribute("emptyWork", new Work());
        model.addAttribute("workList", workService.workList());
        return "work";
    }

    @RequestMapping(value = "work/add", method = RequestMethod.POST)
    public String addWork(@ModelAttribute("emptyWork") Work work, Principal principal, Model model){
        String principalName = principal.getName();
        User byUsername = userService.findByName(principalName);
        model.addAttribute("currentUser", byUsername);
        work.setUser(byUsername);
        workService.addWork(work);
        return "redirect:/work";
    }

    @RequestMapping(value = "/workRemove/{id}")
    public String removeWork(@PathVariable("id") int id){
        workService.removeWork(id);
        return "redirect:/work";
    }

    @RequestMapping(value = "/workEdit/{id}")
    public String editWork(@PathVariable("id") int id, Model model){
        model.addAttribute("emptyWork", workService.getWorkById(id));
        model.addAttribute("workList", workService.workList());
        return "work";
    }
    @RequestMapping("workData/{id}")
    public String workData(@PathVariable("id") int id, Model model){
        model.addAttribute("work", workService.getWorkById(id));
        return "workData";
    }
    @RequestMapping("userWork/{id}")
    public String userWork(@PathVariable("id")int id, Model model,Principal principal){
        String principalName = principal.getName();
        User byUsername = userService.findByName(principalName);
        model.addAttribute("currentUser", byUsername);
        model.addAttribute("work",workService.getWorkById(id));
        model.addAttribute("workList",workService.workList());
        return "userWork";
    }

    @RequestMapping(value = "myWorks/{id}")
    public String myWorks(Model model, Principal principal, @PathVariable("id")int id){
        String principalName = principal.getName();
        User byUsername = userService.findByName(principalName);
        model.addAttribute("currentUser", byUsername);
        model.addAttribute("emptyWork",workService.getWorkById(id));
        model.addAttribute("workList",workService.workList());
        return "myWork";
    }
}

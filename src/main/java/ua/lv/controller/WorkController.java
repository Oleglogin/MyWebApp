package ua.lv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import ua.lv.entity.Work;
import ua.lv.service.WorkService;

@Controller
public class WorkController {
    @Autowired
    WorkService workService;

    @GetMapping("/work")
    public String toWorkPage(Model model){
        model.addAttribute("emptyWork", new Work());
        model.addAttribute("workList", workService.workList());
        return "work";
    }

    @RequestMapping(value = "work/add", method = RequestMethod.POST)
    public String addWork(@ModelAttribute("emptyWork") Work work){
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
    @RequestMapping(value = "workData/{id}")
    public String workData(@PathVariable("id") int id, Model model){
        model.addAttribute("emptyWork", workService.getWorkById(id));
        return "workData";
    }
}

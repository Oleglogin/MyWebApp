package ua.lv.controller;

import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ua.lv.entity.Idea;
import ua.lv.service.IdeaService;

import java.security.Principal;

@Controller
public class IdeaController {

    @Autowired
    IdeaService ideaService;

    @RequestMapping(value = "ideas",method = RequestMethod.GET)
    public String ideaslist(Model model){
        model.addAttribute("idea",new Idea());
        model.addAttribute("listIdeas",ideaService.idealist());
        return "ideas";
    }

    @RequestMapping(value = "/ideas/add",method = RequestMethod.POST)
    public String addIdea(@ModelAttribute("idea") Idea idea,
                            Principal principal){

        if(idea.getId()==0){
            ideaService.addIdea(idea);
        }else {
            ideaService.updateIdea(idea);
        }
        return "redirect:/ideas";
    }



    @RequestMapping(value = "removeIdea/{id}")
    public String removeIdea(@PathVariable("id") int id){
        ideaService.removeIdea(id);
        return "redirect:/ideas";
    }

    @RequestMapping(value = "editIdea/{id}")
    public String editIdeas(@PathVariable("id") int id,Model model){
        model.addAttribute("idea",ideaService.getIdeaById(id));
        model.addAttribute("listIdea",ideaService.idealist());
        return "ideas";
    }

    @RequestMapping(value = "ideadata/{id}")
    public String ideaData(@PathVariable("id") int id, Model model){
        model.addAttribute("idea",ideaService.getIdeaById(id));
        return "ideadata";
    }
}

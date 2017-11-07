package ua.lv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ua.lv.entity.Movie;
import ua.lv.service.MovieService;

@Controller
public class MovieController {

    @Autowired
    MovieService movieService;

   @RequestMapping(value = "/movies",method = RequestMethod.GET)
   public String listMovies(Model model){
       model.addAttribute("emptyMovie",new Movie());
       model.addAttribute("movieList",movieService.listMovie());
       return "/movies";
   }

   @RequestMapping(value = "/movies/add",method = RequestMethod.POST)
    public String addMovies(@ModelAttribute("emptyMovie") Movie movie){
       movieService.addMovie(movie);
       return "redirect:/movies";
   }

   @RequestMapping(value = "/removeMovie/{id}")
    public String removeMovie(@PathVariable("id") int id){
        movieService.removeMovie(id);
        return "redirect:/movies";
   }
   @RequestMapping(value = "/editMovie/{id}")
    public String editMovie(@PathVariable("id") int id,
                            Model model){
        model.addAttribute("emptyMovie",movieService.getMovieById(id));
        model.addAttribute("movieList",movieService.listMovie());
        return "movies";
   }
   @RequestMapping(value = "/movieData/{id}")
    public String movieData(@PathVariable("id") int id,
                            Model model){
        model.addAttribute("emptyMovie",movieService.getMovieById(id));
        return "/movieData";
   }






}

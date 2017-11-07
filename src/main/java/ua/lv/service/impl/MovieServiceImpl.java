package ua.lv.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ua.lv.dao.MovieDAO;
import ua.lv.entity.Movie;
import ua.lv.service.MovieService;

import java.util.List;

@Service
@Transactional
public class MovieServiceImpl implements MovieService {
    @Autowired
    MovieDAO movieDAO;

    public void addMovie(Movie movie) {
        movieDAO.save(movie);
    }

    public void updateMovie(Movie movie) {
            movieDAO.save(movie);
    }

    public void removeMovie(int id) {
        movieDAO.delete(id);
    }

    public List<Movie> listMovie() {
        return movieDAO.findAll();
    }

    public Movie getMovieById(int id) {
        return movieDAO.findOne(id);
    }
}

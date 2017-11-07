package ua.lv.service;

import ua.lv.entity.Movie;

import java.util.List;

/**
 * Created by User on 07.11.2017.
 */
public interface MovieService {
    void addMovie(Movie movie);
    void updateMovie(Movie movie);
    void removeMovie(int id);
    List<Movie> listMovie();
    Movie getMovieById(int id);
}

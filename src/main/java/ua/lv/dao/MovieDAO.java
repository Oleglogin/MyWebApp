package ua.lv.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.lv.entity.Movie;

/**
 * Created by User on 07.11.2017.
 */
public interface MovieDAO extends JpaRepository<Movie,Integer> {
}

package ua.lv.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.lv.entity.Experience;

/**
 * Created by User on 22.11.2017.
 */
public interface ExperienceDAO extends JpaRepository<Experience,Integer> {

}

package ua.lv.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.lv.entity.Work;

/**
 * Created by User on 11.11.2017.
 */
public interface WorkDAO extends JpaRepository<Work,Integer> {
}

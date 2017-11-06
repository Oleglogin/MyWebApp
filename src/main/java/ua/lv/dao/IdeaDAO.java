package ua.lv.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.lv.entity.Idea;

public interface IdeaDAO extends JpaRepository<Idea,Integer>{
}

package ua.lv.dao;


import org.springframework.data.jpa.repository.JpaRepository;
import ua.lv.entity.Book;

import java.util.List;

public interface BookDao  extends JpaRepository<Book,Integer> {



}

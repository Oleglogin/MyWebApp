package ua.lv.dao;


import org.springframework.data.jpa.repository.JpaRepository;
import ua.lv.entity.Book;

import java.util.List;

public interface BookDao  extends JpaRepository<Book,Integer> {
//    public void addBook(Book book);
//
//    public void updateBook(Book book);
//
//    public void removeBook(int id);
//
//    public Book getBookById(int id);
//
//    public List<Book> listBooks();


}

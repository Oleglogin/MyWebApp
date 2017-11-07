package ua.lv.service;

import ua.lv.entity.Book;

import java.util.List;

/**
 * Created by User on 02.11.2017.
 */
public interface BookService {
     void addBook(Book book);

     void updateBook(Book book);

     void removeBook(int id);

     Book getBookById(int id);

     List<Book> listBooks();
}

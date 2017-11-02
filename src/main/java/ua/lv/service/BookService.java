package ua.lv.service;

import ua.lv.entity.Book;

import java.util.List;

/**
 * Created by User on 02.11.2017.
 */
public interface BookService {
    public void addBook(Book book);

    public void updateBook(Book book);

    public void removeBook(int id);

    public Book getBookById(int id);

    public List<Book> listBooks();
}

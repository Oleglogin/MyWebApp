package ua.lv.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ua.lv.dao.BookDao;
import ua.lv.entity.Book;
import ua.lv.service.BookService;

import java.util.List;

@Service
@Transactional
public class BookServiceImpl implements BookService {
    @Autowired
    private BookDao bookDao;

    public void addBook(Book book) {
        bookDao.addBook(book);
    }

    public void updateBook(Book book) {
        bookDao.updateBook(book);
    }

    public void removeBook(int id) {
        bookDao.removeBook(id);
    }

    public Book getBookById(int id) {
        return bookDao.getBookById(id);
    }

    public List<Book> listBooks() {
        return bookDao.listBooks();
    }
}

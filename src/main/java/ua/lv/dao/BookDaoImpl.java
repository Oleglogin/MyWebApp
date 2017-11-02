package ua.lv.dao;
import org.hibernate.Session;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;
import ua.lv.entity.Book;

import javax.persistence.EntityManager;
import java.util.List;

@Repository
public class BookDaoImpl implements BookDao {
    private static final Logger logger = LoggerFactory.getLogger(BookDaoImpl.class);

    private EntityManager entityManager;

    public void setEntityManager(EntityManager entityManager) {
        this.entityManager = entityManager;
    }

//    EntityManager::find
//    EntityManager::merge
//    EntityManager::persist
//    EntityManager::remove
//    EntityManager::createQuery

//    public void remove(Book lawsuit) {
//        Book c = entityManager.find(Book.class, lawsuit.getId());
//
//        entityManager.getTransaction().begin();
//        entityManager.remove(c);
//        entityManager.getTransaction().commit();
//    }

    public void addBook(Book book) {
        Session session = entityManager.unwrap(Session.class);
        session.persist(book);
        logger.info("Book successfully saved. Book details: " + book);
    }

    public void updateBook(Book book) {
        Session session = entityManager.unwrap(Session.class);
        session.update(book);
        logger.info("Book successfully update. Book details: " + book);
    }

    public void removeBook(int id) {
        Session session = entityManager.unwrap(Session.class);
        Book book = (Book) session.load(Book.class, new Integer(id));

        if(book!=null){
            session.delete(book);
        }
        logger.info("Book successfully removed. Book details: " + book);
    }

    public Book getBookById(int id) {
        Session session = entityManager.unwrap(Session.class);
        Book book = (Book) session.load(Book.class, new Integer(id));
        logger.info("Book successfully loaded. Book details: " + book);

        return book;
    }

    public List<Book> listBooks() {
        Session session = entityManager.unwrap(Session.class);
        List<Book> bookList = session.createQuery("from Book").list();

        for(Book book: bookList){
            logger.info("Book list: " + book);
        }

        return bookList;
    }
}

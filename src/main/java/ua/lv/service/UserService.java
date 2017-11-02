package ua.lv.service;

/**
 * Created by User on 01.11.2017.
 */

import ua.lv.entity.User;

import java.util.List;

public interface UserService {
    void save(User user);
    List<User> findAll();
    User findOne(int id);
    void delete(int id);
    //void update(int id);
    User findByName(String username);

}

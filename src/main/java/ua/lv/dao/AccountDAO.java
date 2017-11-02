package ua.lv.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.lv.entity.Account;

/**
 * Created by User on 01.11.2017.
 */
public interface AccountDAO extends JpaRepository<Account,Integer> {

}

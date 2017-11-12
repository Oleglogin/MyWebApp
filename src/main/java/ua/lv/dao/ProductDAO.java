package ua.lv.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.lv.entity.Product;

public interface ProductDAO extends JpaRepository<Product,Integer> {
}

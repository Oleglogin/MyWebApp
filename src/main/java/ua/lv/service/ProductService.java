package ua.lv.service;

import ua.lv.entity.Product;

import java.util.List;

/**
 * Created by User on 08.11.2017.
 */
public interface ProductService  {
    void addProduct(Product product);
    void updateProduct(Product product);
    void removeProduct(int id);
    Product gedProductById(int id);
    List<Product> productList();

}

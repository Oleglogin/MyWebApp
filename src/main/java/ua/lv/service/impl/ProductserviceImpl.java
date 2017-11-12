package ua.lv.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ua.lv.dao.ProductDAO;
import ua.lv.entity.Product;
import ua.lv.service.ProductService;

import java.util.List;

@Service
@Transactional
public class ProductserviceImpl implements ProductService {

    @Autowired
    ProductDAO productDAO;

    public void addProduct(Product product) {
        productDAO.save(product);
    }

    public void updateProduct(Product product) {
productDAO.save(product);
    }

    public void removeProduct(int id) {
        productDAO.delete(id);
    }

    public Product gedProductById(int id) {
        return productDAO.findOne(id);
    }

    public List<Product> productList() {
        return productDAO.findAll();
    }
}

package com.geo.dao;

import com.geo.model.Product;

import java.util.List;


public interface ProductDao {

    List<Product> getProductList();

    Product getProductById(int id);
    
    List<Product> getProductByCategory(String cat);

    void addProduct(Product product);

    void editProduct(Product product);

    void deleteProduct(Product product);
}

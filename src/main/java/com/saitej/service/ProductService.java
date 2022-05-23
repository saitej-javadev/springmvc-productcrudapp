package com.saitej.service;

import com.saitej.model.Product;

import java.util.List;

public interface ProductService {


    public Product saveProduct(Product product);

    public List<Product> getProducts();

    public  void deleteProduct(Long id);

    public Product getProduct(Long id);


    public Product updateProduct(Product product);



}

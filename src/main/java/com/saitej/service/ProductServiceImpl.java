package com.saitej.service;

import com.saitej.model.Product;
import com.saitej.repos.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductRepository productRepository;


    @Override
    public Product saveProduct(Product product) {
        return   productRepository.saveProduct(product);
    }

    @Override
    public List<Product> getProducts() {
        return productRepository.getProducts();
    }

    @Override
    public void deleteProduct(Long id) {
        productRepository.deleteProduct(id);
    }

    @Override
    public Product getProduct(Long id) {
        return productRepository.getProduct(id);
    }

    @Override
    public Product updateProduct(Product product) {

        return productRepository.updateProduct(product);
    }
}

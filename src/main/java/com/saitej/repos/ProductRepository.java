package com.saitej.repos;

import com.saitej.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Repository
public class ProductRepository {

    @Autowired
    private HibernateTemplate hibernateTemplate;

    @Transactional
    public Product saveProduct(Product product){
         hibernateTemplate.save(product);
        return product;
    }


    public List<Product> getProducts(){
        List<Product> products = hibernateTemplate.loadAll(Product.class);
        return products;
    }

    @Transactional
    public  void deleteProduct(Long id){
        Product product = this.hibernateTemplate.load(Product.class, id);
        this.hibernateTemplate.delete(product);
    }


    public Product getProduct(Long id){
        return this.hibernateTemplate.get(Product.class,id);
    }

    @Transactional
    public Product updateProduct(Product product) {
         this.hibernateTemplate.saveOrUpdate(product);
          return product;
    }
}

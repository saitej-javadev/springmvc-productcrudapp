package com.saitej.controller;


import com.saitej.model.Product;
import com.saitej.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;


@Controller
public class HomeController {

    @Autowired
    private ProductService  productService;

    @GetMapping("/")
    public String sayHello(Model model){
        List<Product> products = productService.getProducts();
        model.addAttribute("products",products);
        return "index";
    }


    @GetMapping("/add-product")
    public String addProduct(Model model){
        model.addAttribute("title","Add Product Page");
        return "addProduct";
    }

    @PostMapping("/handle-product")
    public RedirectView handleProduct(@ModelAttribute Product product , HttpServletRequest request){
        System.out.println(product);
        Product savedProduct = productService.saveProduct(product);
        System.out.println(savedProduct);

        RedirectView redirectView = new RedirectView();
        redirectView.setUrl(request.getContextPath() + "/");

        return redirectView;
    }

    @GetMapping("/delete-product/{id}")
    public RedirectView deleteProduct(@PathVariable("id") Long id,HttpServletRequest request){
        System.out.println("HomeController.deleteProduct");
        productService.deleteProduct(id);
        RedirectView redirectView = new RedirectView();
        redirectView.setUrl(request.getContextPath() + "/");
        return redirectView;
    }
}

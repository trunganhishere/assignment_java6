package com.demo.service;

import com.demo.model.Category;
import com.demo.model.Product;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductService {
    List<Product> list = new ArrayList<>();

    ProductService(){
        list.add(new Product(1, "IPhone 11", 11000000, new Category("IP", "IPhone"), "https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-trang-200x200.jpg"));
        list.add(new Product(2, "IPhone 12", 12000000, new Category("IP", "IPhone"), "https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-tim-1-600x600.jpg"));
        list.add(new Product(3, "IPhone 13", 13000000, new Category("IP", "IPhone"), "https://cdn.tgdd.vn/Products/Images/42/250258/iphone-13-starlight-1-600x600.jpg"));
        list.add(new Product(4, "IPhone 14", 14000000, new Category("IP", "IPhone"), "https://cdn.tgdd.vn/Products/Images/42/245545/iPhone-14-plus-thumb-xanh-1-600x600.jpg"));
        list.add(new Product(5, "IPhone 15", 15000000, new Category("IP", "IPhone"), "https://product.hstatic.net/1000173712/product/iphone-15-10-optimize_d0637226c6be4b2085aa5e90ed6c12c5.jpg"));
        list.add(new Product(6, "Galaxy S22", 6500000, new Category("ANDR", "Android"), "https://www.phonebot.com.au/image/cache/catalog/refurbished/samsung/galaxy-s22-plus/S22-Plus-5G-Black-650x650.jpg.webp"));
        list.add(new Product(7, "Galaxy S23", 7500000, new Category("ANDR", "Android"), "https://mobiel-product.imgix.net/dp98dh6t50q4ntf8ym1w18oty88w"));
    }

    public List<Product> getAll(){
        return list;
    }

    public Product findById(int id) {
        for(Product p : list){
            if(p.getId() == id) return p;
        }
        return null;
    }
}

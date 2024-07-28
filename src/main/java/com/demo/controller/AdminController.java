package com.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class AdminController {
    //  Category
    @GetMapping("/admin")
    public String listCategory(){
        return "admin/category/list";
    }

    @GetMapping("/admin/category/create")
    public String createCategory(){
        return "admin/category/form";
    }

    @GetMapping("/admin/category/update/{id}")
    public String editCategory(@PathVariable int id){
        return "admin/category/form";
    }

    //  Product
    @GetMapping("/admin/product")
    public String listProduct(){
        return "admin/product/list";
    }

    @GetMapping("/admin/product/create")
    public String createProduct(){
        return "admin/product/form";
    }

    @GetMapping("/admin/product/update/{id}")
    public String editProduct(@PathVariable int id){
        return "admin/product/form";
    }

    //  Account
    @GetMapping("/admin/account")
    public String listAccount(){
        return "admin/account/list";
    }

    @GetMapping("/admin/account/create")
    public String createAccount(){
        return "admin/account/form";
    }

    @GetMapping("/admin/account/update/{id}")
    public String editAccount(@PathVariable int id){
        return "admin/account/form";
    }
}

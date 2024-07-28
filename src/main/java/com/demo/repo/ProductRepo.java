package com.demo.repo;

import com.demo.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ProductRepo extends JpaRepository<Product, Integer> {
    @Query("select pr from Product pr where pr.name like %:name% and pr.category.id = :id and pr.price >= :min_price and pr.price <= :max_price")
    List<Product> search(String name, String id, Integer max_price, Integer min_price);

    @Query("select pr from Product pr where pr.category.id = :id and pr.price >= :min_price and pr.price <= :max_price")
    List<Product> searchCategory(String id, Integer max_price, Integer min_price);

    @Query("select pr from Product pr where pr.name like %:name% and pr.price >= :min_price and pr.price <= :max_price")
    List<Product> searchKeyword(String name, Integer max_price, Integer min_price);

    @Query("select pr from Product pr where pr.price >= :min_price and pr.price <= :max_price")
    List<Product> searchPrice( Integer max_price, Integer min_price);
}
